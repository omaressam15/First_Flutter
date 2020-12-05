import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLuncher extends StatefulWidget {


  // int price;
  // UrlLuncher(this.price);

  @override
  _UrlLuncherState createState() => _UrlLuncherState();

}

class _UrlLuncherState extends State<UrlLuncher> {

  //int price;

  String name;


  getHttp() async {
    Response response = await Dio().get("https://run.mocky.io/v3/49c882f3-2674-49a6-b53b-15a7c0aa1c73");
   //Navigator.of(context).push(MaterialPageRoute(builder: (context) => UrlLuncher(),));
    name = response.data['name'];
    print(response.data['name']);
    setState(() {

    });
  }


  launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$name"),
              RaisedButton(
                child: Text("On Click"),
                color: Colors.blue,

                onPressed: ()=> getHttp(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
