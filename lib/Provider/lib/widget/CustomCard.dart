import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String srcImage, text;
  final Widget page;
  CustomCard({this.srcImage, this.text, this.page});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Color(0xFFFFFFFF),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              child: Image.asset(srcImage),
            ),
            Container(
              width: 200,
              child: Text(
                text,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
      ),
    );
  }
}
