List<Map<String, String>> users = [
  {'email': 'test@test.com', 'password': 'password123'}
];

Future<Map<String, dynamic>> loginApi(String email, String password) async {
  Map<String, dynamic> response = {
    'status': false,
    'error': 'correo no existe'
  };
  users.forEach((element) {
    if (element['email'] == email) {
      if (element['password'] == password) {
        response = {'status': true};
      } else {
        response = {'status': false, 'error': 'Contraseña incorrecta'};
      }
    }
  });
  return response;
}

Future<Map<String, dynamic>> registerApi(String email, String password) async {
  final resp = users.where((element) => element['email'] == email);
  if (resp.isNotEmpty) {
    return {'status': false, 'error': 'Correo ya registrado'};
  } else {
    users.add({'email': email, 'password': password});
    return {'status': true};
  }
}
