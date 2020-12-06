import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui_card/midecals.dart';
import 'package:flutter_app/ui_card/luggage.dart';

class DataApi extends StatefulWidget {
  @override
  _DataApiState createState() => _DataApiState();
}

class _DataApiState extends State<DataApi> {

  String name;
  int age;
  String county;
  String home ;

  List luggage = List();
  List midecals = List();

  bool isLoading = true;

  getDataFromRestApi() async {
    Response response = await Dio().get("https://run.mocky.io/v3/701ff6f4-0181-47fe-9461-473f6d0aec92");
    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => UrlLuncher(),));

    name = response.data['name'];
    age = response.data['age'];
    county = response.data['country'];
    home = response.data['home_country'];

    luggage = response.data['luggage'];
    midecals = response.data['midecals'];

    isLoading = false;

    setState(() {});

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataFromRestApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  isLoading
          ? Center(
        child: CircularProgressIndicator(),
      ):
         SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        margin: EdgeInsets.only(left:20),
                        child:   Text("Name",style: TextStyle(fontSize: 20),),
                      ),

                      Text("$name",style: TextStyle(fontSize: 20,color: Colors.blue),textAlign: TextAlign.center,),

                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        margin: EdgeInsets.only(left:20),
                        child:   Text("Age",style: TextStyle(fontSize: 20),),
                      ),

                      Text("$age",style: TextStyle(fontSize: 20,color: Colors.blue),textAlign: TextAlign.center,),

                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        margin: EdgeInsets.only(left:20),
                        child:   Text("County",style: TextStyle(fontSize: 20),),
                      ),

                      Text("$county",style: TextStyle(fontSize: 20,color: Colors.blue),textAlign: TextAlign.center,),

                    ],
                  ),
                ),
                SizedBox(

                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        margin: EdgeInsets.only(left:20),
                        child:   Text("Home",style: TextStyle(fontSize: 20),),
                      ),

                      Text("$home",style: TextStyle(fontSize: 20,color: Colors.blue),textAlign: TextAlign.center,),

                    ],
                  ),
                ),
                SizedBox(
                  height: 40,

                  width: MediaQuery.of(context).size.width,

                  child:Text("midecals",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.red),),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width ,
                  height:90 ,
                   child:ListView.builder(
                          shrinkWrap: true,

                          scrollDirection: Axis.horizontal,
                          itemCount: midecals.length,
                          itemBuilder:(context,index){
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: MidecalsCard(
                                name: midecals[index]['name'],
                                price: midecals[index]['price'],
                                category: midecals[index]['category'],

                              ),
                            );

                          }
                      ),

                  ),

                SizedBox(
                  height: 40,

                  width: MediaQuery.of(context).size.width,

                  child:Text("Luggage",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.red),),
                ),
                ListView.builder(

                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: luggage.length,
                        itemBuilder:(context,index){
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                            child: CardView(
                              name: luggage[index]['name'],
                              brand: luggage[index]['brand'],
                              category: luggage[index]['category'],
                            ),
                          );

                        }

                    ),
              ],
            ),
          ),
        ) ,
    );
  }
}
