import 'package:dwmgex/screens/detail.dart';
import 'package:dwmgex/screens/home.dart';
import 'package:dwmgex/screens/profile.dart';
import 'package:dwmgex/screens/school.dart';

final routes = {
  '/home': (context) => MyHomePage(title: 'Home'),
  '/detail': (context) => DetailPage(title: 'Detail'),
  '/profile': (context) => ProfilePage(title: 'Profile'),
  '/school': (context) => SchoolPage(title: 'School'),
};
