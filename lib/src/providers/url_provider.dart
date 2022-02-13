import 'package:flutter/material.dart';

class UrlProvider extends ChangeNotifier {
  String _valor = 'https://app.onesoil.ai/@-40.4042,-68.4861,6z/fields';

  setValor(String valor) {
    _valor = valor;
    notifyListeners();
  }

  String getValor() {
    return _valor;
  }
}
