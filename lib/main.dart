import 'package:dwmgex/exercices/exo1.dart';
import 'package:dwmgex/exercices/exo4.dart';
import 'package:dwmgex/exercices/exo5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgets = <Widget>[
    CarouselImages(),
    WindowsLogo(),
    SafeArea(
        child: GestureDetector(
      onDoubleTap: () => print('Click'),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.red,
          ),
        ],
      ),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: _widgets[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Exo 1'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Exo 2'),
        ],
        selectedItemColor: Colors.indigo,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
