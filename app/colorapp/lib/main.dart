import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ColorApp',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("AppColor"),
      ),
      body: 
      new Stack(
        children: <Widget>[
          new Center(
            child: new Row(
              children: <Widget> [
                new Expanded(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          color: new Color.fromRGBO(64, 23, 211, 0.2),
                        ),
                      ),
                    ],
                  ),
                ),
                new Expanded(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          color: new Color.fromRGBO(64, 23, 211, 0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                new Expanded(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          color: new Color.fromRGBO(64, 23, 211, 0.6),
                        ),
                      ),
                    ],
                  ),
                ),
                new Expanded(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          color: new Color.fromRGBO(64, 23, 211, 0.8),
                        ),
                      ),
                    ],
                  ),
                ),
                new Expanded(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          color: new Color.fromRGBO(64, 23, 211, 1.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
          ),
          new Center(
            child: new RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: new Text("Change Color"),
              onPressed: (){ print("Pressed!!!");},
            ),
          )
        ],
      ),
    );
  }
}
