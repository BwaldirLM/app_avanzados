import 'package:flutter/material.dart';
import 'package:proy_avanzados/src/providers/usuario_provider.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late final GlobalKey<FormState> formKey;
  late final GlobalKey<ScaffoldState> scafoldKey;
  late String email;
  late String password;
  late final usuarioProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    formKey = GlobalKey<FormState>();
    usuarioProvider = UsuarioProvider();
    email = '';
    password = '';
  }

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
          'Registrar',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 20),
        Center(
          child: Form(
              key: formKey,
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
        decoration: const InputDecoration(
            labelText: 'Correo Electronico',
            hintText: 'correo@mail.com',
            border: InputBorder.none),
        onSaved: (newValue) => email = newValue!,
        validator: (value) {
          String pattern =
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
          RegExp regExp = RegExp(pattern);
          if (regExp.hasMatch(value!)) {
            return null;
          } else {
            return 'Email incorrecto';
          }
        },
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
        decoration: const InputDecoration(
            labelText: 'Contraseña', border: InputBorder.none),
        obscureText: true,
        onSaved: (newValue) => password = newValue!,
        validator: (value) {
          if (value!.length < 6) {
            return 'Debe ser mas de seis caracteres';
          } else
            return null;
        },
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return InkWell(
      onTap: () => _submit(usuarioProvider),
      child: Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: const Center(
          child: Text('REGISTRARSE',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }

  void _submit(UsuarioProvider userProvider) async {
    if (!formKey.currentState!.validate())
      return;
    else {
      formKey.currentState!.save();

      final resp = await userProvider.register(email, password);
      if (resp['status']) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/home', (route) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(resp['error']),
          duration: const Duration(seconds: 4),
        ));
      }
    }
  }
}
