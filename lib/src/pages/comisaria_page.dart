import 'package:flutter/material.dart';

class ComisariaPage extends StatelessWidget {
  const ComisariaPage({Key? key}) : super(key: key);
  final estilotexto1 = const TextStyle(fontSize: 30, color: Colors.blue);
  final estilotexto2 = const TextStyle(fontSize: 18, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    final comisaria =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Detalle de Comisaria',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DETALLE3('Nombre de Comisaria', estilotexto1),
            DETALLE3(comisaria['nombre'], estilotexto2),
            DETALLE3('Telefono', estilotexto1),
            DETALLE3(comisaria['telefono'], estilotexto2),
            DETALLE3('Ubicacion', estilotexto1),
            DETALLE3(comisaria['direccion'], estilotexto2),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Emergencia',
                    style: TextStyle(fontSize: (50)),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: const EdgeInsets.all(20),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Container DETALLE3(String texto, TextStyle estilo) {
    return Container(
        padding: EdgeInsets.all(10), child: Text(texto, style: estilo));
  }
}
