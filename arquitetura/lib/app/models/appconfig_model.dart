import 'package:flutter/foundation.dart';

class AppConfigModel {
  final themeSwitch = ValueNotifier<bool>(false);  

  changeTheme(bool value){
    themeSwitch.value = value;
  }
}