// import 'package:dwmgex/exercices/exo1.dart';
// import 'package:dwmgex/exercices/exo4.dart';
// import 'package:dwmgex/exercices/exo5.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _selectedIndex = 0;

  // final List<Widget> _widgets = <Widget>[
  //   CarouselImages(),
  //   WindowsLogo(),
  //   SafeArea(
  //       child: GestureDetector(
  //     onDoubleTap: () => print('Click'),
  //     child: Stack(
  //       children: [
  //         Container(
  //           height: 100,
  //           width: 100,
  //           color: Colors.blue,
  //         ),
  //         Container(
  //           height: 80,
  //           width: 80,
  //           color: Colors.red,
  //         ),
  //       ],
  //     ),
  //   )),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Back'),
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
