import 'package:arquitetura/app/interfaces/local_storage_interface.dart';
import 'package:arquitetura/app/models/appconfig_model.dart';
import 'package:arquitetura/app/services/shared_local_storage_service.dart';
import 'package:arquitetura/app/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class AppController {
  static final AppController instance = AppController._();
  AppController._(){
    changeThemeViewModel.init();
  }

  final ChangeThemeeViewModel changeThemeViewModel = ChangeThemeeViewModel(storage: SharedLocalStorageService());
  
  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => changeThemeViewModel.config.themeSwitch;

  final ILocalStorage storage = SharedLocalStorageService();  
}