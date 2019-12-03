import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProvMi1/ProviderMI1S1.dart';
import 'package:pro_mi_0001/Provider/ProvMi1/ProviderMI1S2.dart';
import 'package:pro_mi_0001/widget/DrawerWgt.dart';
import 'package:pro_mi_0001/widget/TabeResult.dart';
import 'package:pro_mi_0001/widget/TableMI1/TableMI1S1.dart';
import 'package:pro_mi_0001/widget/TableMI1/TableMI1S2.dart';
import 'package:provider/provider.dart';

class HomeMi1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => ProviderMi1S1()),
        ChangeNotifierProvider(
          builder: (_) => ProviderMi1S2(),
        )
      ],
      child: MI1Screen(),
    );
  }
}

class MI1Screen extends StatelessWidget {
  MI1Screen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final moyProvider1 = Provider.of<ProviderMi1S1>(context);
    final moyProvider2 = Provider.of<ProviderMi1S2>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Math Informatique 1"),
        centerTitle: true,
      ),
      drawer: DrawerWgt(),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 60,
            color: Color(0xff0970d2),
            alignment: Alignment.center,
            child: Text(
              "Semestre 1",
              style: TextStyle(fontSize: 20),
            ),
          ),
          TableMi1S1(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 60,
            color: Color(0xff0970d2),
            alignment: Alignment.center,
            child: Text(
              "Semestre 2",
              style: TextStyle(fontSize: 20),
            ),
          ),
          TableMi1S2(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 60,
            color: Color(0xff3366ff),
            alignment: Alignment.center,
            child: Text(
              "Résultat 1",
              style: TextStyle(fontSize: 20),
            ),
          ),
         TableResult(moyProvider1,moyProvider2),
        ],
      ),
    );
  }
}
