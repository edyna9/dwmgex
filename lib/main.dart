import 'package:dwmgex/routes.dart';
import 'package:dwmgex/screens/loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // Cas erreur de chargement
        if (snapshot.hasError) {
          return Container();
        }

        // Cas chargement réussi
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.indigo,
            ),
            routes: routes,
            initialRoute: '/home',
          );
        }

        // Cas de chargement
        return LoadingScreen();
      },
    );
  }
}
