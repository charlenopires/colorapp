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
  final List<Widget> columns = new List();

  List<Widget> colorsPainel(int r, int g, int b){
    for(var i=0; i<=4; i++){
      columns.add(
        new Expanded(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Expanded(
                    child: new Container(
                      color: new Color.fromRGBO(r, g, b, 0.1*(i+1)*2),
                    ),
                  ),
                ],
              ),
      ));
    }
    return columns;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("AppColor"),
      ),
      body: 
      new Stack(
        children: 
          colorsPainel(64, 23, 211)
          // .add(
          //   new Center(
          //     child: new RaisedButton(
          //       color: Colors.blue[900],
          //       textColor: Colors.white,
          //       child: new Text("Change Color"),
          //       onPressed: (){ print("Pressionado!!!");},
          //     ),
          //   )
        ),
    );
  }
}
