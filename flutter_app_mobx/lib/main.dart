import 'package:flutter/material.dart';
import 'package:flutter_app_mobx/pages/home.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_codegen/mobx_codegen.dart';
import 'package:build_runner/build_runner.dart';
import 'stores/contador.dart';
import 'dart:html';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final counter = Contador();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {'/home': (context) => HomeScreen()},
    );
  }
}
