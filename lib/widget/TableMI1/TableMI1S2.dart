import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:pro_mi_0001/Provider/ProvMi1/ProviderMI1S2.dart';
import '../CustomTableRow.dart';

class TableMi1S2 extends StatelessWidget {
  ProviderMi1S2 _mi1Providr;
  InierTableRow<ProviderMi1S2> _inireTableRow;
  @override
  Widget build(BuildContext context) {
    _mi1Providr = Provider.of<ProviderMi1S2>(context);
    _inireTableRow = InierTableRow(context);

    return Table(
      columnWidths: {0: FractionColumnWidth(.7)},
      border: TableBorder.all(),
      children: [
        //?----------------------------------Unite 1 -------------------------------------------------

        CustomRowName().rowOfColumnName(),
        TableRow(children: [
          Container(
              height: 210,
              child: InerTable<ProviderMi1S2>(
                children: [
                  _inireTableRow.customTablerow(0, 2), //?Analyse2
                  _inireTableRow.customTablerow(1, 2), //?algebre2
                ],
              )),
          credOfUnite(0, 210),
          moyOfUnite(0, 210),
          uniteName('fondamentale 1', 210)
        ]),
        TableRow(children: [
          //?----------------------------------Unite 2-------------------------------------------------

          Container(
              height: 210,
              child: InerTable<ProviderMi1S2>(
                children: [
                  _inireTableRow.customTablerow(2, 3), //?Algo2
                  _inireTableRow.customTablerow(3, 2), //?strm2
                ],
              )),
          credOfUnite(1, 210),
          moyOfUnite(1, 210),
          uniteName('fondamentale 2', 210)
        ]),
        TableRow(children: [
          //?----------------------------------Unite 3-------------------------------------------------

          Container(
              height: 315,
              child: InerTable<ProviderMi1S2>(
                children: [
                  _inireTableRow.customTablerow(4, 2), //?proba
                  _inireTableRow.customTablerow(5, 3), //?OPM
                  _inireTableRow.customTablerow(6, 1), //?TIC
                ],
              )),
          credOfUnite(2, 315),
          moyOfUnite(2, 315),
          uniteName('Methodologie', 315)
        ]),
        TableRow(children: [
          //?----------------------------------Unite 4-------------------------------------------------

          Container(
              height: 105,
              child: InerTable<ProviderMi1S2>(
                children: [
                  _inireTableRow.customTablerow(7, 2), //?Phys2
                ],
              )),
          credOfUnite(3, 105),
          moyOfUnite(3, 105),
          uniteName('Decouverte', 105),
        ]),
        //?-----------------------------------------------------------------------------------
      ],
    );
  }

  Container moyOfUnite(int numUnite, double height) {
    return Container(
      height: height,
      alignment: Alignment.center,
      child: Text("${_mi1Providr.getMoyUnite(numUnite).toStringAsFixed(2)}"),
    );
  }

  Container credOfUnite(int numOfUnite, double height) {
    return Container(
      height: height,
      alignment: Alignment.center,
      child: Text("${_mi1Providr.getCredUnite(numOfUnite)}"),
    );
  }

  Container uniteName(String name, double height) {
    return Container(
      height: height,
      child: RotatedBox(
        quarterTurns: 1,
        child: Container(alignment: Alignment.center, child: Text(name)),
      ),
    );
  }
}
