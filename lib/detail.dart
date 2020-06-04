import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ចិត្តសាស្រ្តសាងសុខ'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: <Widget>[
                  Image.asset('images/b1.png',height: 100,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("ចិត្តសាស្រ្តសាងសុខ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600)),
                        Text("អ្នកនិពន្ធ៖ រំដួល",style: TextStyle(fontSize: 12)),
                        Row(
                          children: <Widget>[
                            FlatButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              splashColor: Colors.blueAccent,
                              onPressed: (){

                              },
                              child: Text("អាន"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: FlatButton(
                                color: Colors.blue,
                                textColor: Colors.white,
                                disabledColor: Colors.grey,
                                disabledTextColor: Colors.black,
                                splashColor: Colors.blueAccent,
                                onPressed: (){

                                },
                                child: Text("ទាញយក"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Description"),
            ),
            Divider(),
            Text("ok")
          ],
        ),
      ),
    );
  }
}
