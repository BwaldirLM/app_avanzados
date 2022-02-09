import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: Stack(
          children: [
            Positioned(
                child: Container(
              color: Colors.white,
              child: Center(
                  child: Container(
                height: 350,
                width: 350,
                child: const Image(
                  image: AssetImage('assets/logob.gif'),
                  fit: BoxFit.cover,
                ),
              )),
            )),
            Positioned(
                bottom: 20,
                right: 15,
                child: Center(
                    child: Container(
                  height: 200,
                  width: 200,
                  child: const Image(
                    image: AssetImage('assets/policia.png'),
                    fit: BoxFit.cover,
                  ),
                )))
          ],
        ),
      ),
      Container(
          height: 100,
          decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
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
