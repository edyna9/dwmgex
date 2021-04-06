import 'package:flutter/material.dart';

class UpdateDetailPage extends StatefulWidget {
  UpdateDetailPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UpdateDetailPageState createState() => _UpdateDetailPageState();
}

class _UpdateDetailPageState extends State<UpdateDetailPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
