// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuraciones de páginas'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.help_center,
              size: 35,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                'Asocie cada botón a una página web específica. Para esto debe ingresar en cada cuadro la Url respectiva.',
                style: TextStyle(fontSize: 20),
              )));
            },
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: _Form(),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(),
      ],
    );
  }
}

class _TextUrl extends StatelessWidget {
  const _TextUrl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Burbuja(),
        TextField(),
      ],
    );
  }
}

class _Burbuja extends StatelessWidget {
  const _Burbuja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.red,
      ),
    );
  }
}
