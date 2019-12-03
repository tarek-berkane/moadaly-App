import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProvMi2/ProviderMI2S3.dart';
import 'package:pro_mi_0001/Provider/ProvMi2/ProviderMI2S4.dart';
import 'package:pro_mi_0001/widget/DrawerWgt.dart';
import 'package:pro_mi_0001/widget/TabeResult.dart';
import 'package:pro_mi_0001/widget/TableMi2/TableMI2S3.dart';
import 'package:pro_mi_0001/widget/TableMi2/TableMIS2.dart';
import 'package:provider/provider.dart';

class HomeMi2Screen extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => ProviderMi2S3()),
        ChangeNotifierProvider(builder: (_) => ProviderMi2S4()),
      ],
      child: MI2Screen(),
    );
  }
}

class MI2Screen extends StatelessWidget {
  MI2Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moyProviderS3 = Provider.of<ProviderMi2S3>(context);
    final moyProviderS4 = Provider.of<ProviderMi2S4>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Math Informatique 2"),
        centerTitle: true,
      ),
      drawer: DrawerWgt(),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 60,
            color: Color(0xff51ae56),
            alignment: Alignment.center,
            child: Text(
              "Semestre 1",
              style: TextStyle(fontSize: 20),
            ),
          ),
          TableMi2S3(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 60,
            color: Color(0xff51ae56),
            alignment: Alignment.center,
            child: Text(
              "Semestre 2",
              style: TextStyle(fontSize: 20),
            ),
          ),
          TableMi2S4(),
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
         TableResult(moyProviderS3,moyProviderS4),
        ],
      ),
    );
  }
}
