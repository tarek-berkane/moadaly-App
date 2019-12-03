import 'package:flutter/material.dart';
import 'package:pro_mi_0001/screens/MI1.dart';
import 'package:pro_mi_0001/screens/MI2.dart';
import 'package:pro_mi_0001/widget/CustomCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),

    );
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
        body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomCard(
                  text: 'Math Informatique 1',
                  srcImage: 'images/mi1.png',
                  page: HomeMi1Screen(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomCard(
                  text: 'Math Informatique 2',
                  srcImage: 'images/mi2.png',
                  page: HomeMi2Screen(),
                ),
              ),
              SeparateWidget()
            ],
          ),
        ));
  }
}

class SeparateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        color: Color(0xFFFFFFFF),
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 120,
                width: 120,
                child: Image.asset('images/mi3.png'),
              ),
              Container(
                width: 200,
                child: Text(
                  'Math Informatique 3',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.blue,
              elevation: 2,
              content: Text('Soon'),
              duration: Duration(seconds: 2),
            ));
          },
        ),
      ),
    );
  }
}
