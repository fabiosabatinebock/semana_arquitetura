import 'package:arquitetura/app/app_controller.dart';
import 'package:arquitetura/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(        
      valueListenable: AppController.instance.themeSwitch,
      builder: (BuildContext context, isDark, Widget? child){  
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,     
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: isDark ? Brightness.dark : Brightness.light,
        ),
        home: const HomePage(),
        );
      },
    ); 
  }
}
