import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SafeArea(child: SizedBox()),
        Row(
          children: [
            BackButton(
              onPressed: () => Navigator.pop(context),
            ),
            Spacer()
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Iniciar Sesión',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 20),
        Center(
          child: Form(
              child: Column(
            children: [
              _inputCorreo(),
              _inputContrasena(),
              const SizedBox(height: 20),
              _submitButton(context),
            ],
          )),
        )
      ],
    ));
  }

  Container _inputCorreo() {
    return Container(
      width: 350,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration:
            const InputDecoration(
                labelText: 'Correo Electronico',
                hintText: 'correo@mail.com',
                border: InputBorder.none),
      ),
    );
  }

  Container _inputContrasena() {
    return Container(
      width: 350,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: TextFormField(
        decoration:
            const InputDecoration(labelText: 'Contraseña', border: InputBorder.none),
        obscureText: true,
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.pushReplacementNamed(context, '/home'),
      child: Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: const Center(
          child: Text('INICIAR SESION',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
