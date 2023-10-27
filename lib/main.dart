import 'package:basic_app/widgets/pag_principal.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexNav = 0;

  static List<Widget> opcWidgets = <Widget>[
    const PaginaPrincipal(),
    const Center(
        child: Text(
      'Juegos',
      style: TextStyle(color: Colors.white),
    )),
    const Center(
        child: Text(
      'Nuevos y populares',
      style: TextStyle(color: Colors.white),
    )),
    const Center(
        child: Text(
      'Mi Netflix',
      style: TextStyle(color: Colors.white),
    )),
  ];

  void cambiarPagina(int index) {
    setState(() {
      indexNav = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
            leading: Image.asset('lib/assets/logo-netflix.png'),
            backgroundColor: Colors.black,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ],
          ),
          body: opcWidgets.elementAt(indexNav),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            iconSize: 25.0,
            // selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white24,
            selectedItemColor: Colors.white,
            unselectedFontSize: 10.0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: indexNav,
            onTap: cambiarPagina,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.videogame_asset),
                label: 'Juegos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions),
                label: 'Nuevos y popular',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business_center),
                label: 'Mi Netflix',
              )
            ],
          )
          ),
    );
  }
}
