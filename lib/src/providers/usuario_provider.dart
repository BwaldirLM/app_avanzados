import 'package:proy_avanzados/src/data/user_data.dart';

class UsuarioProvider {
  Future<Map<String, dynamic>> login(String email, String password) async {
    final resp = await loginApi(email, password);
    Future.delayed(const Duration(seconds: 3));
    return resp;
  }

  Future<Map<String, dynamic>> register(String email, String password) async {
    final resp = await registerApi(email, password);
    Future.delayed(const Duration(seconds: 3));
    return resp;
  }
}
