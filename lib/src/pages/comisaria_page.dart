import 'package:flutter/material.dart';

class comisariaPage extends StatelessWidget {
comisariaPage({Key? key}) : super(key: key);
final estilotexto1=TextStyle(fontSize: 30, color: Colors.blue);
final estilotexto2=TextStyle(fontSize: 18,color: Colors.black);
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0 ,
        title: Text('Detalle de Comisaria',style:TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DETALLE3('Nombre de Comisaria',estilotexto1),
            DETALLE3('Detalles',estilotexto2 ),
            DETALLE3('Telefono', estilotexto1),
            DETALLE3('Detalles',estilotexto2),
            DETALLE3('Ubicacion',  estilotexto1),
            DETALLE3('Detalles', estilotexto2),
            DETALLE3('Detalles', estilotexto1),
            DETALLE3('Detalles', estilotexto2),
            Center(
              child: ElevatedButton(onPressed:(){},
               child: Text('Emergencia',style: TextStyle(fontSize: (50)),),
               style: ElevatedButton.styleFrom(primary: Colors.red,padding: EdgeInsets.all(20),)
               ),
            )
          ],  
        ),
      ),
    );
  }



  Container DETALLE3(String texto,TextStyle estilo) {
    return Container(padding: EdgeInsets.all(10),
            child: Text(texto, style: estilo)

          );
  }

}