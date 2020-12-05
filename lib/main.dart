import 'package:flutter/material.dart';
import 'package:flutter_app/GetDataApi.dart';
import 'package:flutter_app/ui_card/ui_Api_Data.dart';
import 'package:flutter_app/url_luncher.dart';

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
      home: DataApi(),
    );
  }
}

