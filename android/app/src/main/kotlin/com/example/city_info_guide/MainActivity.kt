package com.example.city_info_guide

import android.annotation.SuppressLint
import android.content.Intent
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val MAP_LAUNCHER_CHANNEL = "map_launcher"
    private lateinit var channel: MethodChannel

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        //create channel
        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, MAP_LAUNCHER_CHANNEL)

        //receive data from Flutter
        channel.setMethodCallHandler { call, result ->
            val arguments = call.arguments<Map<String, String>>() ?: return@setMethodCallHandler
            when (call.method) {
                "isMapAvailable" -> {
                    if (arguments["mapPackageName"] != null) {
                        val isMapAvailable =
                            isMapAvailable(arguments["mapPackageName"])
                        if (isMapAvailable) {
                            result.success(true)
                        } else result.error(
                            "MAP_NOT_AVAILABLE",
                            "Map is not installed on this device",
                            null,
                        )
                    }
                }
                "showRoute" -> {
                    launchYandexMapRoute(
                        fromLat = arguments["fromLat"].toString(),
                        fromLon = arguments["fromLon"].toString(),
                        toLat = arguments["toLat"].toString(),
                        toLon = arguments["toLon"].toString(),
                        routeType = arguments["routeType"] ?: "auto"
                    )
                    result.success(null)
                }
                "showMarker" -> {
                    launchYandexMapMarker(
                        pointLat = arguments["pointLat"].toString(),
                        pointLon = arguments["pointLon"].toString(),
                        zoom = arguments["zoom"].toString(),
                    )

                    result.success(null)
                }
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

    private fun launchYandexMapRoute(
        fromLat: String,
        fromLon: String,
        toLat: String,
        toLon: String,
        routeType: String,
    ) {
        val uri =
            Uri.parse("yandexmaps://maps.yandex.ru/?rtext=$fromLat,$fromLon~$toLat,$toLon&rtt=$routeType");
        val intent = Intent(Intent.ACTION_VIEW, uri);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        intent.setPackage("ru.yandex.yandexmaps")
        startActivity(intent);
    }

    private fun launchYandexMapMarker(
        pointLat: String,
        pointLon: String,
        zoom: String,
    ) {
        val uri =
            Uri.parse("yandexmaps://maps.yandex.ru/?whatshere[point]=$pointLon,$pointLat&whatshere[zoom]=$zoom");
        val intent = Intent(Intent.ACTION_VIEW, uri);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        intent.setPackage("ru.yandex.yandexmaps")
        startActivity(intent);
    }

}
