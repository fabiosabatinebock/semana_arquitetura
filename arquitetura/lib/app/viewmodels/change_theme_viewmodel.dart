import 'package:arquitetura/app/interfaces/local_storage_interface.dart';
import 'package:arquitetura/app/models/appconfig_model.dart';

class ChangeThemeeViewModel {
  final ILocalStorage storage;

  final AppConfigModel config = AppConfigModel();  

  ChangeThemeeViewModel({this.storage});

  Future init() async{
    await storage.get('isDark').then((value){
      if (value != null){
        config.themeSwitch.value = value;
      }
    });
  }

  changeTheme(bool value){
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }  
}