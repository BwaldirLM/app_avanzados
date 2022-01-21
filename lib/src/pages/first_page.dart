import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: Container(
          color: Colors.blue,
        ),
      ),
      SizedBox(
          height: 100,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _Button(
              'INICIAR SESION',
              fondo: Colors.white,
              textoColor: Colors.black,
              onTap: () => Navigator.pushNamed(context, '/login'),
            ),
            _Button(
              'REGISTRARSE',
              fondo: Colors.black,
              textoColor: Colors.white,
              onTap: () => Navigator.pushNamed(context, '/signup'),
            ),
          ])),
    ]));
  }
}


class _Button extends StatelessWidget {
  _Button(this.texto,
      {Key? key,
      required this.onTap,
      required this.fondo,
      required this.textoColor})
      : super(key: key);
  VoidCallback? onTap;
  Color? fondo;
  String texto;
  Color? textoColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 60,
        decoration: BoxDecoration(
          color: fondo,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(texto,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: textoColor)),
        ),
      ),
    );
  }
}
