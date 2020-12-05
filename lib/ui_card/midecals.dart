
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




  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height:90 ,
      child: Column(

        children: [

          Container(
            height: 30,
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
          Container(
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
          Container(
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
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Text("${widget.category}",
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
