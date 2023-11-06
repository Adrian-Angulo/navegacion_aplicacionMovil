import 'package:flutter/material.dart';
import 'package:proyecto_de_navegacion/Common/my_routers.dart';
import 'package:proyecto_de_navegacion/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegacion entre paginas',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRouters.generateRoute,
      initialRoute: routeLogin,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 250, 233, 100),
      body: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 18,
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
          children: const <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/hip-hop.png")),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Integrantes',
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(253, 252, 252, 1)),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Column(
                        children: [
                          Text('Adrian Camilo'),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Janier Acosta'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => {Navigator.pushNamed(context, routePlayList)},
            child: const Icon(Icons.arrow_forward_ios_rounded),
          )
        ],
      ),
    );
  }
}
