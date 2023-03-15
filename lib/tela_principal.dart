// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

const corAtivaCartaoPadrao = Color(0xFF9E9E9E);
const corContainerInferior = Color(0xFFFF5822);
const alturaContainerInferior = 80.0;

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADORA IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                    child: CartaoPadrao(
                  cor: corAtivaCartaoPadrao,
                )),
                Expanded(
                  child: CartaoPadrao(
                    cor: corAtivaCartaoPadrao,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CartaoPadrao(
              cor: corAtivaCartaoPadrao,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CartaoPadrao(
                    cor: corAtivaCartaoPadrao,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: corAtivaCartaoPadrao,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: corContainerInferior,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: alturaContainerInferior,
          ),
        ],
      ),
    );
  }
}

class CartaoPadrao extends StatelessWidget {
  //criando a propria propriedade
  const CartaoPadrao({
    Key? key,
    this.cor,
  }) : super(key: key);

  final Color? cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration:
          BoxDecoration(color: cor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
