import 'package:calcula_imc/tela_principal.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculaIMC());

class CalculaIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF616161),
        scaffoldBackgroundColor: Color(0xFF616161),
      ),
      home: TelaPrincipal(),
    );
  }
}
