import 'package:city_info_guide/core/l10n/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KidsPage extends StatelessWidget {
  const KidsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.home_kids.tr(),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FontAwesomeIcons.baby,
                size: 40.0,
              ),
              SizedBox(
                height: 20,
              ),
              Text('KIDS TO BE IMPLEMENTED'),
            ],
          ),
        ),
      ),
    );
  }
}
