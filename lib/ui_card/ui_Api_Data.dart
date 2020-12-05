
import 'package:flutter/material.dart';


class CardView extends StatefulWidget {

  String name;
  String brand;
  String category;


  CardView({this.name, this.brand, this.category});

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {

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
                  child:   Text("brand",style: TextStyle(fontSize: 20),),
                ),

                Text("${widget.brand}",style: TextStyle(fontSize: 20,color: Colors.grey),textAlign: TextAlign.center,),

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

                Text("${widget.category}",style: TextStyle(fontSize: 20,color: Colors.grey),textAlign: TextAlign.center,),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
