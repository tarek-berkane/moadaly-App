import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProvMi1/ProviderMI1S1.dart';

import 'package:provider/provider.dart';

import '../CustomTableRow.dart';

class TableMi1S1 extends StatelessWidget {
  ProviderMi1S1 _mi1Providr;
  InierTableRow<ProviderMi1S1> _inireTableRow;

  @override
  Widget build(BuildContext context) {
    _mi1Providr = Provider.of<ProviderMi1S1>(context);
    _inireTableRow = InierTableRow(context);

    return Table(
      columnWidths: {0: FractionColumnWidth(.7)},
      border: TableBorder.all(),
      children: [
        CustomRowName().rowOfColumnName(),
        TableRow(children: [
          //?----------------------------------Unite 1 -------------------------------------------------
          Container(
              height: 210,
              child: InerTable<ProviderMi1S1>(
                children: [
                  _inireTableRow.customTablerow(0, 2), //?Analyse
                  _inireTableRow.customTablerow(1, 2), //?algebre
                ],
              )),
          credOfUnite(0, 210),
          moyOfUnite(0, 210),
          uniteName('fondamentale 1', 210)
        ]),
        TableRow(children: [
          //?----------------------------------Unite 2---------------------------------------------------
          Container(
              height: 210,
              child: InerTable<ProviderMi1S1>(
                children: [
                  _inireTableRow.customTablerow(2, 3), //?Algo
                  _inireTableRow.customTablerow(3, 2), //?strm
                ],
              )),
          credOfUnite(1, 210),
          moyOfUnite(1, 210),
          uniteName('fondamentale 2', 210)
        ]),
        TableRow(children: [
          //?----------------------------------Unite 3 ---------------------------------------------
          Container(
              height: 210,
              child: InerTable<ProviderMi1S1>(
                children: [
                  _inireTableRow.customTablerow(4, 1), //?FR
                  _inireTableRow.customTablerow(5, 1), //?En
                ],
              )),
          credOfUnite(2, 210),
          moyOfUnite(2, 210),
          uniteName('Methodologie', 210)
        ]),
        TableRow(
          children: [
            //?-------------------------------- Unite 4 --------------------------------------------
            Container(
                height: 105,
                child: InerTable<ProviderMi1S1>(
                  children: [
                    _inireTableRow.customTablerow(6, 2), //?Phys
                  ],
                )),
            credOfUnite(3, 105),
            moyOfUnite(3, 105),
            uniteName('Decouverte', 105)
          ], //?----------------------------------------------------------
        ),
      ],
    );
  }

// todo Make uniteName and
  //*this Fun return A Container with Text rotate 90
  Container uniteName(String name, double height) {
    return Container(
      height: height,
      child: RotatedBox(
        quarterTurns: 1,
        child: Container(alignment: Alignment.center, child: Text(name)),
      ),
    );
  }

  //* fun that return Container containe Text Widget of MOY OF UNITE
  Container moyOfUnite(int numUnite, double height) {
    return Container(
      height: height,
      alignment: Alignment.center,
      child: Text("${_mi1Providr.getMoyUnite(numUnite).toStringAsFixed(2)}"),
    );
  }
  //* fun that return Container containe Text Widget of CRED OF UNITE
  Container credOfUnite(int numOfUnite, double height) {
    return Container(
      height: height,
      alignment: Alignment.center,
      child: Text("${_mi1Providr.getCredUnite(numOfUnite)}"),
    );
  }
}
