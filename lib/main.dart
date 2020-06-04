import 'package:applibraryui/detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'បណ្ណាល័យ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'បណ្ណាល័យ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text("សៀវភៅថ្មីៗ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail() ));
                    },
                    child:
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Image.asset('images/b1.png'),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Image.asset('images/b2.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Image.asset('images/b3.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Image.asset('images/b4.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Image.asset('images/b5.png'),
                  ),
                ],

              ),
            ),
            Row(
              children: <Widget>[
                Text("សៀវភៅថ្មីៗ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                Spacer(),
                Text("ទាំងអស់",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
              ],
            ),
            Card(
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
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Image.asset('images/b2.png',height: 100,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("ចិត្តសាស្រ្តសាងសុខ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600)),
                        Text("អ្នកនិពន្ធ៖ រំដួល",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Image.asset('images/b3.png',height: 100,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("ចិត្តសាស្រ្តសាងសុខ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600)),
                        Text("អ្នកនិពន្ធ៖ រំដួល",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Image.asset('images/b4.png',height: 100,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("ចិត្តសាស្រ្តសាងសុខ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600)),
                        Text("អ្នកនិពន្ធ៖ រំដួល",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Image.asset('images/b5.png',height: 100,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("ចិត្តសាស្រ្តសាងសុខ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600)),
                        Text("អ្នកនិពន្ធ៖ រំដួល",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
