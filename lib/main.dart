import 'package:flutter/material.dart';

import 'Edite_page.dart';
import 'setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: EditePage(),
    );
  }
}

