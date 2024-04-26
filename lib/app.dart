
import 'package:flutter/material.dart';
import 'package:store_app/src/presentation/ui/main_home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData.light(useMaterial3: true,),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const MainHomeScreen(),
    );
  }
}