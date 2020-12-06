
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MidecalsCard extends StatefulWidget {


  String name;
  int price;
  List category = List();



  MidecalsCard({this.name, this.price, this.category});

  @override
  _MidecalsCardState createState() => _MidecalsCardState();
}

class _MidecalsCardState extends State<MidecalsCard> {


  getFromRestApi() async {
    Response response = await Dio()
        .get("https://run.mocky.io/v3/701ff6f4-0181-47fe-9461-473f6d0aec92");

   widget.category = response.data["midecals"][1]["category"];

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width ,
      height:80 ,
      child: Column(

        children: [

          SizedBox(
            height: 20,
            width: MediaQuery.of(context).size.width,

            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  margin: EdgeInsets.only(left:20),
                  child:   Text("Name",style: TextStyle(fontSize: 20),),
                ),

                Text("${widget.name}",style: TextStyle(fontSize: 20,color: Colors.grey),textAlign: TextAlign.center,),

              ],
            ),
          ),
          SizedBox(
            height: 30,
            width: MediaQuery.of(context).size.width,

            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  margin: EdgeInsets.only(left:20),
                  child:   Text("price",style: TextStyle(fontSize: 20),),
                ),

                Text("${widget.price}",style: TextStyle(fontSize: 20,color: Colors.grey),textAlign: TextAlign.center,),

              ],
            ),
          ),
          SizedBox(
            height: 30,
            width: MediaQuery.of(context).size.width,

            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.4,
                  margin: EdgeInsets.only(left:20),
                  child:   Text("Category",style: TextStyle(fontSize: 20),),
                ),

                SizedBox(
                  height: 22,
                  width: MediaQuery.of(context).size.width*0.5,
                     child:Text("${widget.category.join(",")}",
                        style: TextStyle(fontSize: 20,color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,),


                  ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
