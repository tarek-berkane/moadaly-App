import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'TableGen.dart';

class TableResult extends StatelessWidget{
  final  moyProvider1,moyProvider2;
  TableResult(this.moyProvider1,this.moyProvider2);

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                    child: Text((moyProvider1.moyObtenu().toStringAsFixed(2))),
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
                    child: Text((moyProvider2.moyObtenu().toStringAsFixed(2))),
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
                    child: Text(moyProvider1.credObtenu().toString()),
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
                    child: Text(moyProvider2.credObtenu().toString()),
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
                    child: Text(
                        ((moyProvider1.moyObtenu() + moyProvider2.moyObtenu()) /
                                2)
                            .toStringAsFixed(2)),
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
                    child: Text((moyProvider1.credObtenu() +
                            moyProvider2.credObtenu())
                        .toString()),
                  ),
                ]),
              ],
            ),
          );
  }
}