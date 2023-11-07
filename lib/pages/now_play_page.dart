import 'package:flutter/material.dart';

class NowPlayPage extends StatefulWidget {
  const NowPlayPage({Key? key, required this.title, required this.description, required this.songDescription})
      : super(key: key);

  final String title;
  final String description;
  final String songDescription;

  @override
  State<NowPlayPage> createState() => _NowPlayPageState();
}

class _NowPlayPageState extends State<NowPlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 250, 233, 100),
      appBar: AppBar(
        title: const Text('Music Player'),
       backgroundColor: const Color.fromARGB(156, 200, 237, 234),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/donOmar.jpg', // Ruta de la imagen de la música
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 20),
              Text(
                widget.title, // Utiliza el título de la canción seleccionada
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              Text(
                widget.description, // Agrega la breve descripción de la canción seleccionada
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.skip_previous),
                    onPressed: () {
                      // Lógica para reproducir la canción anterior
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: () {
                      // Lógica para reproducir o pausar la canción
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_next),
                    onPressed: () {
                      // Lógica para reproducir la siguiente canción
                    },
                  ),
                ],
              ),
              ElevatedButton(
                child: const Text('Ir a Home Page'),
                onPressed: () {
                  Navigator.pop(context); // Regresar a la página anterior
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

