package com.example.city_info_guide

import android.annotation.SuppressLint
import android.content.Intent
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import com.yandex.mapkit.MapKitFactory;

class MainActivity : FlutterActivity() {
    private val MAP_LAUNCHER_CHANNEL = "map_launcher"
    private val API_KEY_CHANNEL = "yandex_map_kit_channel"
    private lateinit var mapChannel: MethodChannel
    private lateinit var apiKeyChannel: MethodChannel

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        //currently works without key
        MapKitFactory.setApiKey("write-any-api-key")
        super.configureFlutterEngine(flutterEngine)
        //create channel
        mapChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MAP_LAUNCHER_CHANNEL)
        //receive data from Flutter
        mapChannel.setMethodCallHandler { call, result ->
            val arguments =
                call.arguments<Map<String, String>>() ?: return@setMethodCallHandler result.error(
                    "ARGUMENTS_NOT_PROVIDED",
                    "Arguments not provided",
                    null,
                )
            val mapPackageName =
                arguments["mapPackageName"] ?: return@setMethodCallHandler result.error(
                    "MAP_NAME_NOT_PROVIDED",
                    "Map name not provided",
                    null,
                )
            when (call.method) {
                "isMapAvailable" -> {
                    if (isMapAvailable(mapPackageName)) {
                        result.success(true)
                    } else result.error(
                        "MAP_NOT_AVAILABLE",
                        "Map is not installed on this device",
                        null,
                    )
                }
                "showMap" -> {
                    val url = arguments["url"] ?: return@setMethodCallHandler result.error(
                        "MAP_URL_NOT_PROVIDED",
                        "Map url not provided",
                        null,
                    )
                    if (isMapAvailable(mapPackageName)) {
                        launchMap(url)
                        result.success(null)
                    } else result.error(
                        "MAP_NOT_AVAILABLE",
                        "Map is not installed on this device",
                        null,
                    )
                }
                else -> result.notImplemented()
            }
        }

        apiKeyChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, API_KEY_CHANNEL)
        apiKeyChannel.setMethodCallHandler { call, result ->
            val arguments =
                call.arguments<Map<String, String>>() ?: return@setMethodCallHandler result.error(
                    "ARGUMENTS_NOT_PROVIDED",
                    "Arguments not provided",
                    null,
                )
            val mapLocale =
                arguments["yandexMapKitLocale"] ?: return@setMethodCallHandler result.error(
                    "LOCALE_NOT_PROVIDED",
                    "Locale not provided",
                    null,
                )
            val mapApiKey =
                arguments["yandexMapKitKey"] ?: return@setMethodCallHandler result.error(
                    "API_KEY_NOT_PROVIDED",
                    "Api key not provided",
                    null,
                )
            if (call.method == "setYandexMapKitParameters") {
                //currently it is ignored and works without key
                //MapKitFactory.setLocale(mapLocale)
                MapKitFactory.getInstance().setApiKey(mapApiKey)
            } else {
                result.notImplemented()
            }
        }
    }

    @SuppressLint("QueryPermissionsNeeded")
    private fun isMapAvailable(mapPackageName: String?): Boolean {
        val installedApps = context.packageManager?.getInstalledApplications(0)
        if (installedApps != null) {
            for (app in installedApps) {
                if (app.packageName == mapPackageName) return true
            }
        }
        return false
    }

    private fun launchMap(
        url: String,
    ) {
        val uri =
            Uri.parse(url);
        val intent = Intent(Intent.ACTION_VIEW, uri);
        //intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        intent.setPackage("ru.yandex.yandexmaps")
        startActivity(intent);
    }


}
