import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
            const Spacer()
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          'Registrar',
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
              _submitButton(),
            ],
          )),
        )
      ],
    ));
  }

  Container _inputCorreo() {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: TextFormField(
        decoration:
            const InputDecoration(labelText: 'Correo', border: InputBorder.none),
      ),
    );
  }

  Container _inputContrasena() {
    return Container(
      width: 350,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: TextFormField(
        decoration:
            InputDecoration(labelText: 'Contraseña', border: InputBorder.none),
        obscureText: true,
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text('REGISTRARSE',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
