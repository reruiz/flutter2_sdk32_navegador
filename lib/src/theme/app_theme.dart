import 'package:flutter/material.dart';

class AppTheme {
  //primary: los colores más utilizados en todas las pantallas y componentes.
  static const Color primary = Colors.white;

  //accent: colores utilizados para el botón de acción flotante y elementos interactivos.
  static const Color accent = Colors.green;

  //selected: colores utilizados para el botón de acción flotante y elementos interactivos seleccionados.
  static const Color selected = Colors.red;

  //ward: colores utilizados para transmitir el estado de error.
  static const Color warn = Colors.red;

  //foreground: colores para texto e iconos.
  static const Color foreground = Colors.black87;

  //background: colores utilizados para los fondos de los elementos.
  static const Color background = Colors.white;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppTheme.primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      titleTextStyle: TextStyle(color: AppTheme.foreground, fontSize: 20),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: AppTheme.accent),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppTheme.accent),
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppTheme.foreground),
        elevation: MaterialStateProperty.all<double>(3.0),
      ),
    ),
  );
}
