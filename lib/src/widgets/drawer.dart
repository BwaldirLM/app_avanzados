import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: const Color(0xFF1E88E5),
          child: Column(children: [
            Container(
                height: 200,
                child: const Image(
                  image: AssetImage('assets/policia2.png'),
                  fit: BoxFit.cover,
                )),
            _DrawerItem(
              'Mi ubicacion',
            ),
            _DrawerItem(
              'Comisarias',
              onTap: () => Navigator.pushNamed(context, '/lista'),
            ),
            _DrawerItem(
              'Herramientas',
            ),
            _DrawerItem(
              'Acerca de nosotros',
            )
          ])),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  _DrawerItem(this.titulo, {Key? key, this.onTap}) : super(key: key);

  String titulo;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            const Divider(
              color: Colors.white,
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
