import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  var text = "Welcome";


  void method() {
    setState(() {
      text = "Hey, Welcome!";
    });
  }

  void method1() {
  setState(() {
  text = "to";
  });
  }

  void method2() {
  setState(() {
  text = "Flutter";
  });
  }

  void method3() {
    setState(() {
      text = "Blog!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Buttons"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                '$text',
                  style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,

                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  new OutlineButton(
                    onPressed: method,
                    textColor: Colors.black,

                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "OutlineButton",
                    ),
                  ),

                  new RaisedButton(
                    onPressed: method1,
                    textColor: Colors.white,
                    color: Colors.redAccent,
                    padding: const EdgeInsets.all(8.0),
                    elevation: 5,
                    child: new Text(
                      "RaisedButton",
                    ),
                  ),

                  new IconButton(
                    padding: const EdgeInsets.all(8.0),
                    icon:Icon(Icons.chat),
                    color: Colors.blueAccent,
                    onPressed: method2,
                    iconSize: 40,
                  ),


                  new FlatButton(
                    onPressed: method3,
                    textColor: Colors.white,
                    color: Colors.purple,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "FlatButton",
                    ),
                  ),
                ],
              ),

            ],
          ),
        ));
  }
}
