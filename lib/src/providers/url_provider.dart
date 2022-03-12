import 'package:flutter/material.dart';

class UrlProvider extends ChangeNotifier {
  //----------------------------
  final List<String> _string = [
    'https://app.onesoil.ai/?utm_source=website&utm_medium=menu_es',
    'https://web.inia.cl/',
    'https://www.google.com/',
    'https://www.biobiochile.cl/'
  ];

  List<Uri> _uris = [];

  UrlProvider() {
    _uris.add(Uri.parse(_string[0]));
    _uris.add(Uri.parse(_string[1]));
    _uris.add(Uri.parse(_string[2]));
    _uris.add(Uri.parse(_string[3]));
  }

  setUris(List<Uri> valor) {
    _uris = valor;
    notifyListeners();
  }

  List<Uri> getUris() {
    return _uris;
  }

  //------------------------
  int _active = 0;

  setActive(int valor) {
    _active = valor;
    notifyListeners();
  }

  int getActive() {
    return _active;
  }
}
