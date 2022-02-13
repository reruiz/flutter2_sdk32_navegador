// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter2_sdk32_navegador/src/providers/url_provider.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlProvider = Provider.of<UrlProvider>(context, listen: false);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeader(),
          ListTile(
            leading: Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: () {
              urlProvider.setValor(
                  'https://app.onesoil.ai/@-40.4042,-68.4861,6z/fields?utm_source=website&utm_medium=menu_en');
            },
          ),
          ListTile(
            leading: Icon(Icons.people_outline),
            title: const Text('Gente'),
            onTap: () {
              urlProvider.setValor(
                  'https://app.onesoil.ai/@-40.4042,-68.4861,6z/stations?utm_source=website&utm_medium=menu_en');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: const Text('Configuraciónes'),
            onTap: () {
              urlProvider.setValor(
                  'https://app.onesoil.ai/@-40.4042,-68.4861,6z/sowing?utm_source=website&utm_medium=menu_en');
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
