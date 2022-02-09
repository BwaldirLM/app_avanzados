import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'package:proy_avanzados/src/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentIndex;
  late Widget body;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 1;
    body = Home();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: const Drawer(
        child: MyDrawer(),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Perfil'),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            if (value == 0)
              body = Mapa();
            else if (value == 1)
              body = Home();
            else
              body = Perfil();
          });
        },
      ),
    );
  }
}

//Pagina de principal
class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'TODO VA BIEN?',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Tres comisarias encontradas',
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

//pagina del mapa
class Mapa extends StatefulWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  State<Mapa> createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //controller = MapController(
    // initMapWithUserPosition: false,
    // initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    //);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
        options: MapOptions(
          center: LatLng(-13.527863088088715, -71.97780160386951),
          zoom: 13.0,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'])
        ]);
  }
}

//Pagina del perfil
class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Icon(
                Icons.person,
                size: 150,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Cerrar Sesion'),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          )
        ],
      ),
    );
  }
}
