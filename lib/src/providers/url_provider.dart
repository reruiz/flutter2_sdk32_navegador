import 'package:flutter/material.dart';

class UrlProvider extends ChangeNotifier {
  //----------------------------
  final List<String> _string = [
    'https://www.inia.cl/',
    'https://www.google.com/',
    'https://www.biobiochile.cl/'
  ];

  List<Uri> _uris = [];

  setUris(List<Uri> valor) {
    _uris = valor;
    notifyListeners();
  }

  List<Uri> getUris() {
    return _uris;
  }

  //----------------------------
  int _active = 0;

  setActive(int valor) {
    _active = valor;
    notifyListeners();
  }

  int getActive() {
    return _active;
  }
  //-------------------------

  //Construcctor
  UrlProvider() {
    _uris.add(Uri.parse(_string[0]));
    _uris.add(Uri.parse(_string[1]));
    _uris.add(Uri.parse(_string[2]));
  }
}
