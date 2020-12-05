import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:group_radio_button/group_radio_button.dart';


class EditePage extends StatefulWidget {
  @override
  _Edite_pageState createState() => _Edite_pageState();
}

class _Edite_pageState extends State<EditePage> {

  String _verticalGroupValue = "Pending";
  List<String> _status = ["انثي", "ذكر"];

  String phoneNumber;
  String phoneIsoCode;
  bool visible = false;
  String confirmedNumber = '';

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    print(number);
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

  onValidPhoneNumber(
      String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      visible = true;
      confirmedNumber = internationalizedPhoneNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "تعديل بياناتي",
          textAlign: TextAlign.left,style: TextStyle(color: Colors.black),
        ),
        backgroundColor: (Colors.white10),
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.green,
        ),
        elevation: 0,
      ),
      body: SafeArea(

        child: SingleChildScrollView(

          child: Center(
            child: Column(

              children: [

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Container(

                          height: 75,
                          width: 75,
                          margin: EdgeInsets.only(top: 40),
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'"),
                            radius: 2,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        margin: EdgeInsets.only(bottom: 30),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              hintText: "Your name...",
                              hintStyle: TextStyle(color: Colors.black38)),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        margin: EdgeInsets.only(bottom: 30),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              hintText: "Country...",
                              hintStyle: TextStyle(color: Colors.black38)),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        margin: EdgeInsets.only(bottom: 30),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              hintText: "email...",
                              hintStyle: TextStyle(color: Colors.black38)),
                        ),
                      ),
                      Container(

                        width:300 ,
                        height: 50,

                        child: InternationalPhoneInput(

                          onPhoneNumberChange: onPhoneNumberChange,

                          decoration: InputDecoration(

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.grey),

                            ),

                          ),

                          initialPhoneNumber: phoneNumber,
                          initialSelection: phoneIsoCode,
                          enabledCountries: ['+233', '+1','002'],
                          labelText: "Phone Number",


                        ),
                      ),
                      Visibility(
                        child: Text(confirmedNumber),
                        visible: visible,
                      ),
                      Container(
                        width: 200,
                        height: 80,
                        margin: EdgeInsets.only(left: 100,bottom: 55),
                        child:RadioGroup<String>.builder(
                          direction: Axis.horizontal,
                          horizontalAlignment: MainAxisAlignment.spaceBetween,
                          groupValue: _verticalGroupValue,
                          onChanged: (value) => setState(() {
                            _verticalGroupValue = value;
                          }),
                          items: _status,
                          itemBuilder: (item) => RadioButtonBuilder(
                            item,
                          ),
                        ),
                      ),

                     Container(
                      height:55 ,
                      width:300 ,
                      alignment: Alignment.center,
                      child: Text('تعاديل',style: TextStyle(color: Colors.white),),
                      decoration: BoxDecoration(
                          color:Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                    ),

              ],
            ),
          ),

          ),
      ),
    );
  }
}
