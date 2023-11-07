import 'package:flutter/material.dart';
import 'package:proyecto_de_navegacion/Common/my_routers.dart';
import 'package:proyecto_de_navegacion/pages/now_play_page.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({Key? key}) : super(key: key);

  @override
  State<PlayListPage> createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(156, 200, 237, 234),
      appBar: AppBar(
         backgroundColor: const Color.fromRGBO(0, 250, 233, 100),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, routeHome);
          },
        ),
        title: const Text('Lista de Reproducción'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              title: const Text('Ojitos chiquitos'),
              subtitle: const Text('Artista: Don Omar'),
              leading: Image.asset('images/donOmar.jpg'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NowPlayPage(
                      title: 'Ojitos chiquitos',
                      description: 'Artista: Don Omar\nÁlbum: King of Kings\nGénero: Urbano latino\nFecha de lanzamiento: 2006',
                      songDescription: 'Artista: Don Omar',
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              title: const Text('Alone'),
              subtitle: const Text('Artista: Marshmello'),
              leading: Image.asset('images/alone.jpg'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NowPlayPage(
                      title: 'Alone',
                      description:'Artista: Marshmello\nÁlbum: Joytime II\nGénero: Electrónica\nFecha de lanzamiento: 2016', 
                      songDescription: 'Artista: Marshmello',
                    ),
                  ),
                );
              },
            ),
          ),
         Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              title: const Text('Esta Noche'),
              subtitle: const Text('Artista:Justin Quiles'),
              leading: Image.asset('images/estanoche1.jpg'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NowPlayPage(
                      title: 'Esta Noche',
                      description:'Artista: Justin Quiles\nÁlbum: Esta Noche\nGénero: Urbano Latino\nFecha de lanzamiento: 2014', 
                      songDescription: 'Artista: Justin Quiles',
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListTile(
              title: const Text('Niño'),
              subtitle: const Text('Artista: Julio Victoria'),
              leading: Image.asset('images/nino.jpg'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NowPlayPage(
                      title: 'Niño',
                      description:'Artista: Julio Victoria\nÁlbum: Índigo\nGénero: House, Electrónica\nFecha de lanzamiento: 2022', 
                      songDescription: 'Artista: Julio Victoria',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}