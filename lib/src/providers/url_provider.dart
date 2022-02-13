import 'package:flutter/material.dart';

class UrlProvider extends ChangeNotifier {
  String _valor =
      'https://app.onesoil.ai/?utm_source=website&utm_medium=menu_es';

  setValor(String valor) {
    _valor = valor;
    notifyListeners();
  }

  String getValor() {
    return _valor;
  }
}
