import 'package:flutter/material.dart';
import 'package:proyecto_de_navegacion/Common/my_routers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(2, 56, 89, 100),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.blue[200],
                backgroundImage: const AssetImage('images/retratoMujer.jpg'),
              ),
              const Text(
                'Iniciar Seccion',
                style: TextStyle(
                    fontFamily: 'cursive',
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              const Text(
                'Usuario',
                textAlign: TextAlign.left,
              ),
              TextField(
                enableInteractiveSelection: true,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(0, 250, 223, 100),
                    filled: true,
                    hintText: 'Nombre del usuario',
                    hintStyle: const TextStyle(color: Colors.white),
                    suffixIcon: const Icon(Icons.verified_user),
                    suffixIconColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none)),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                'Contraseña',
                textAlign: TextAlign.left,
              ),
              TextField(
                enableInteractiveSelection: true,
                obscureText: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  fillColor: const Color.fromRGBO(0, 250, 223, 100),
                  filled: true,
                  hintText: 'Contraseña',
                  hintStyle: const TextStyle(color: Colors.white),
                  suffixIcon: const Icon(Icons.lock_outline),
                  suffixIconColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20.0)),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => {Navigator.pushNamed(context, routeHome)},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0, 250, 223, 100),
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Center(
                    child: Text('Iniciar Seccion',
                        style: TextStyle(
                            color: Color.fromARGB(255, 245, 243, 237))),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
