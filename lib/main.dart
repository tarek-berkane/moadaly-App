import 'package:flutter/material.dart';
import 'package:pro_mi_0001/screens/MI1.dart';
import 'package:pro_mi_0001/screens/MI2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Moadaly"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: InkWell(
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    width: 220,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 55,
                          child: Image.asset('images/file.png'),
                        ),
                        Text("Math informatique 1"),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeMi1Screen()));
                },
              ),
            ),
            Center(
              child: InkWell(
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    width: 220,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 55,
                          child: Image.asset('images/file.png'),
                        ),
                        Text("Math informatique 2"),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeMi2Screen()));
                },
              ),
            ),
          
            SeparateWidget()
          ],
        ));
  }

}

class SeparateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
              child: InkWell(
                child: Card(
                  child: Container(
                    alignment: Alignment.center,
                    width: 220,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 70,
                          width: 55,
                          child: Image.asset('images/file.png'),
                        ),
                        Text("Math informatique 3"),
                      ],
                    ),
                  ),
                ),
                onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Coming soon'),
            duration: Duration(seconds: 1),
          ));
        },
              ),
            );
  }
}
