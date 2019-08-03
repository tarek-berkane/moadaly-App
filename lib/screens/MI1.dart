import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProviderMI1.dart';
import 'package:pro_mi_0001/widget/DrawerWgt.dart';
import 'package:pro_mi_0001/widget/TableGen.dart';
import 'package:pro_mi_0001/widget/TableMI1/TableMI1S1.dart';
import 'package:pro_mi_0001/widget/TableMI1/TableMI1S2.dart';
import 'package:provider/provider.dart';

class HomeMi1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderMi1>(
      builder: (_) => ProviderMi1(),
      child: MI1Screen(),
    );
  }
}

class MI1Screen extends StatelessWidget {
  MI1Screen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final moyProvider = Provider.of<ProviderMi1>(context);
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              textBaseline: TextBaseline.alphabetic,
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(width: 1.0),
              columnWidths: {
                0: Table_widths(200.0, 30.0),
                1: Table_widths(80.0, 30.0),
              },
              children: [
                TableRow(children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text('moyenne semestre 1'),
                  ),
                  Container(
                    child: Text(moyProvider.getMoyS1().toStringAsFixed(2)),
                    alignment: Alignment.center,
                    height: 30,
                  ),
                ]),
                TableRow(children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text('moyenne semestre 2'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text(moyProvider.getMoyS2().toStringAsFixed(2)),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text('credit obtenu 1'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text(moyProvider.getcredS1().toString()),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text('credit obtenu 2'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text(moyProvider.getcredS2().toString()),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text('moyenne Gen 1'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text(moyProvider.getMoyGen().toStringAsFixed(2)),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text('credit obtenu 1'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text(moyProvider.getCredGen().toString()),
                  ),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
