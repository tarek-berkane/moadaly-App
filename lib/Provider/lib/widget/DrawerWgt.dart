import 'package:flutter/material.dart';
import 'package:pro_mi_0001/screens/MI1.dart';
import 'package:pro_mi_0001/screens/MI2.dart';

class DrawerWgt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
           
            Container(
              child: Image.asset('images/mi.jpg'),
            ),
            InkWell(
              child: Card(
                elevation: 3,
                color: Color(0xff51ae56),
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Text('Math Informatique 1'),
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeMi1Screen()));
              },
            ),
            InkWell(
              child: Card(
                elevation: 3,
                color: Color(0xff51ae56),
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Text('Math Informatique 2'),
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeMi2Screen()));
              },
            ),
            Expanded(child: Container(),),
             Container(
              alignment: Alignment.center,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "math informatique bouira",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
