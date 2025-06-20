import 'package:arquitetura/app/app_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDark, onChanged: (valeu){
      AppController.instance.changeThemeViewModel.changeTheme(valeu);
    });
  }
}