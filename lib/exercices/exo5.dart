import 'package:dwmgex/screens/detail.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  CarouselImages({
    Key key,
  }) : super(key: key);

  @override
  _CarouselImagesState createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  int _currentIndex = 0;

  final List<String> _images = <String>[
    'https://lepetitjournal.com/sites/default/files/styles/main_article/public/2018-08/iStock-615398376.jpg?itok=1k6w3RiH',
    'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/3b/51/37.jpg',
    'https://www.nycgo.com/images/pages/71616/zoom-manhattan-bridge-brooklyn-nyc-3000x2000__large.jpg',
    'https://www.nycgo.com/images/pages/71299/river-skyline-views-brooklyn-nyc-photo-julienne-schaer-010__large.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Welcome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      child: Text('Image ${index + 1}',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: _currentIndex == index
                                  ? Colors.black
                                  : Colors.grey))),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/detail');
            },
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(_images[_currentIndex]),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              height: 400,
              width: 175,
            ),
          )
        ],
      ),
    ));
  }
}
