import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/url_provider.dart';
import 'package:flutter2_sdk32_navegador/src/theme/app_theme.dart';
import 'package:flutter2_sdk32_navegador/src/widgets/burbuja_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Estilo de Appbar y textos asociados se controlan con el
        //la clase AppTheme ubicada en lib\src\theme\app_theme.dart
        title: const Text('Configuraciones de páginas'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.help_center,
              size: 35,
              color: AppTheme.foreground,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                'Asocie cada botón a una página web específica. Para esto debe ingresar en cada cuadro la Url respectiva.',
                style: TextStyle(fontSize: 16),
              )));
            },
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: const _Inputs(),
    );
  }
}

class _Inputs extends StatelessWidget {
  const _Inputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlsProvider = Provider.of<UrlProvider>(context, listen: false);
    //Permite hacer Scroll para un elemento
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          child: Column(
            children: [
              _CustomInputField(label: '1', selected: false),
              _CustomInputField(label: '2', selected: false),
              _CustomInputField(label: '3', selected: false),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Center(child: Text('Guardar')),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Center(child: Text('Cancelar')),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomInputField extends StatelessWidget {
  final String label;
  final bool selected;
  // ignore: prefer_const_constructors_in_immutables
  _CustomInputField({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      child: TextFormField(
        keyboardType: TextInputType.url,
        initialValue:
            'https://app.onesoil.ai/?utm_source=website&utm_medium=menu_es',
        onChanged: (value) {},
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onTap: () {},
        decoration: InputDecoration(
          labelText: 'Url boton $label',
          icon: BurbujaWidget(
            label: label,
            color: AppTheme.accent,
            selected: selected,
          ),
        ),
      ),
    );
  }
}
