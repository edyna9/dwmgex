import 'package:dwmgex/screens/detail.dart';
import 'package:dwmgex/screens/home.dart';
import 'package:dwmgex/screens/profile.dart';
import 'package:dwmgex/screens/register.dart';
import 'package:dwmgex/screens/school.dart';
import 'package:dwmgex/screens/update_detail.dart';
import 'package:dwmgex/screens/update_profile.dart';

final routes = {
  '/register': (context) => RegisterPage(),
  '/home': (context) => MyHomePage(),
  '/detail': (context) => DetailPage(title: 'Detail'),
  '/profile': (context) => ProfilePage(title: 'Profile'),
  '/school': (context) => SchoolPage(title: 'School'),
  '/detail/update': (context) => UpdateDetailPage(title: 'Update Detail'),
  '/profile/update': (context) => UpdateProfilePage(title: 'Update Profile'),
};
