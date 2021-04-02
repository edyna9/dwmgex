import 'package:flutter/material.dart';

class CarouselImages extends StatelessWidget {
  CarouselImages({
    Key key,
  }) : super(key: key);

  final List<String> _images = <String>[
    'https://unsplash.com/photos/ubSUwrr04Ks',
    'https://unsplash.com/photos/Y84-eo8drzk',
    'https://unsplash.com/photos/1KPfcPdbWFM',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Welcome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => print(_images[index]),
                    child: Text('Image $index')
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
