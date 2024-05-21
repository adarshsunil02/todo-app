import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:todo/pages/homepage.dart';

void main() async{

// initilize hive
await Hive.initFlutter();

// open the box
var box=await Hive.openBox('mybox');

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:  HomePage(),
      theme: ThemeData(primaryColor: Color.fromARGB(233, 255, 229, 0)),
    );
  }
}
