import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hola Bienvenid@",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Ingrese sus datos para iniciar sesión"),
      ],
    );
  }

  Widget _inputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Nombre de usuario",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.green
                .withOpacity(0.1), // Cambiar el color a verde con Opacity
            filled: true,
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Contraseña",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.green
                .withOpacity(0.1), // Cambiar el color a verde con Opacity
            filled: true,
            prefixIcon: Icon(Icons.lock),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Iniciar Sesion",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ],
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text("¿Has olvidado tu contraseña?"),
    );
  }

  Widget _signup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("¿No tienes cuenta? "),
        TextButton(
          onPressed: () {},
          child: Text("Inscribirse"),
        ),
      ],
    );
  }
}
