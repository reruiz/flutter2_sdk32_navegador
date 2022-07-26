import 'package:flutter/material.dart';

class UrlProvider extends ChangeNotifier {
  String _valor = 'http://www.teleasesoria.cl/#/';

  setValor(String valor) {
    _valor = valor;
    notifyListeners();
  }

  String getValor() {
    return _valor;
  }
}
