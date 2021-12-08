import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_codegen/mobx_codegen.dart';
import 'package:build_runner/build_runner.dart';

part 'contador.g.dart';

class Contador = _Contador with _$Contador;

abstract class _Contador with Store {
  @observable
  int valor = 0;

  @action
  void aumentar() {
    valor++;
  }
}
