import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_codegen/mobx_codegen.dart';
import 'package:build_runner/build_runner.dart';
import '../stores/contador.dart';

final contador = Contador();

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("")),
        body: Observer(
          builder: (_) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Contagem:"),
                Text('${contador.valor}'),
                ElevatedButton(
                  child: Text("Aumentar Contagem"),
                  onPressed: contador.aumentar,
                )
              ],
            ),
          ),
        ));
  }
}
