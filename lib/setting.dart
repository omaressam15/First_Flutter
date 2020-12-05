import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.white10),
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.green,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 7),
                child: SizedBox(
                  height: 75,
                  width: 75,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'"),
                    radius: 2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: 100,
                  height: 30,
                  child: Text(
                    "مصطفي احمد",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: 55,
                width: 150,
                margin: EdgeInsets.only(bottom: 30),
                alignment: Alignment.center,
                child: Text(
                  'تعاديل بياناتي',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.green,
                                ),
                                height: 20,
                                width: 25,
                              ),
                              SizedBox(
                                child: Text(
                                  "منتجاتي",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 16),
                                ),
                                height: 25,
                                width: 245,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                            width: 300,
                            child: Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Icon(Icons.arrow_back_ios,
                                    color: Colors.green),
                                height: 20,
                                width: 25,
                              ),
                              SizedBox(
                                child: Text(
                                  "ادخل كلمة المرور",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 16),
                                ),
                                height: 25,
                                width: 245,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                            width: 300,
                            child: Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 25,
                                width: 60,
                                child: Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                  },
                                  activeTrackColor: Colors.lightGreenAccent,
                                  activeColor: Colors.green,
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  "الاشعارات",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 16),
                                ),
                                height: 25,
                                width: 180,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                            width: 300,
                            child: Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                child: Text(
                                  "تسجيل الخروج",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                ),
                                height: 25,
                                width: 330,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.green,
                                ),
                                height: 20,
                                width: 100,
                              ),
                              SizedBox(
                                child: Text(
                                  "الدعم الفني",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 16),
                                ),
                                height: 25,
                                width: 230,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                            width: 300,
                            child: Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.green,
                                ),
                                height: 20,
                                width: 100,
                              ),
                              SizedBox(
                                child: Text(
                                  "شروط و احكام",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 16),
                                ),
                                height: 25,
                                width: 230,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                            width: 300,
                            child: Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.green,
                                ),
                                height: 20,
                                width: 20,
                                margin: EdgeInsets.only(left: 35),
                              ),
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image: NetworkImage(
                                      "https://www.flagdetective.com/images/download/saudi-arabia-hi.jpg"),
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  "اللغة",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 16),
                                ),
                                height: 25,
                                width: 235,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
