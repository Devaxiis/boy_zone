import 'package:flutter/material.dart';
import 'package:store_app/app.dart';
import 'package:store_app/src/core/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  runApp(const MyApp());
}


