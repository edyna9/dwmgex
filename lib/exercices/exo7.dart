import 'package:flutter/material.dart';

class ProfileThumbnail extends StatelessWidget {
  const ProfileThumbnail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .4,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 4,
                offset: Offset(
                  0.0,
                  4,
                ),
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .15,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(25)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://lepetitjournal.com/sites/default/files/styles/main_article/public/2018-08/iStock-615398376.jpg?itok=1k6w3RiH'),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.nycgo.com/images/pages/71616/zoom-manhattan-bridge-brooklyn-nyc-3000x2000__large.jpg'),
                            radius: 45,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 125, left: 125),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jonathan Rakoto',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text('Paris, France',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: Row(
                    children: [
                      Icon(Icons.domain),
                      SizedBox(width: 10),
                      Text('Wizards Technologies',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: Row(
                    children: [
                      Icon(Icons.work_outline),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Développeur Fullstack',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}