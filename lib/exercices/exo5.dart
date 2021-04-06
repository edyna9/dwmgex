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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Container(
            color: Colors.blue,
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  _images.length,
                  (index) => Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: _currentIndex == index
                                      ? Colors.black
                                      : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Center(
                                  child: Text('Image ${index + 1}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: _currentIndex == index
                                              ? Colors.white
                                              : Colors.black)),
                                ),
                              ),
                            )),
                      )),
            ),
          ),
          SizedBox(height: 25,),
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
              width: 275,
            ),
          )
        ],
      ),
    ));
  }
}
