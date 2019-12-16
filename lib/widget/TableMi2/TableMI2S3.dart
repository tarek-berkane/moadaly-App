import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProvMi2/ProviderMI2S3.dart';

import 'package:provider/provider.dart';

import '../CustomTableRow.dart';

class TableMi2S3 extends StatelessWidget {
  ProviderMi2S3 _mi2Providr;
  InierTableRow<ProviderMi2S3> _inireTableRow;
  final double heightOfTable = 105;

  @override
  Widget build(BuildContext context) {
    _mi2Providr = Provider.of<ProviderMi2S3>(context);
    _inireTableRow = InierTableRow(context);

    return Table(
      columnWidths: {0: FractionColumnWidth(.7)},
      border: TableBorder.all(),
      children: [
        CustomRowName().rowOfColumnName(),
        TableRow(children: [
          //?----------------------------------Unite 1 -------------------------------------------------
          Container(
              height: sizetable(0),
              child: InerTable<ProviderMi2S3>(
                children: [
                  _inireTableRow.customTablerow(0, 3), //?architecture
                  _inireTableRow.customTablerow(1, 3), //?algorithmique
                ],
              )),
          credOfUnite(0, sizetable(0)),
          moyOfUnite(0, sizetable(0)),
          uniteName('Unite 1', sizetable(0))
        ]),
        TableRow(children: [
          //?----------------------------------Unite 2---------------------------------------------------
          Container(
              height: sizetable(1),
              child: InerTable<ProviderMi2S3>(
                children: [
                  _inireTableRow.customTablerow(2, 3), //?sys info
                  _inireTableRow.customTablerow(3, 2), //?therie des graphes
                ],
              )),
          credOfUnite(1, sizetable(1)),
          moyOfUnite(1, sizetable(1)),
          uniteName('Unite 2', sizetable(1))
        ]),
        TableRow(children: [
          //?----------------------------------Unite 3 ---------------------------------------------
          Container(
              height: sizetable(2),
              child: InerTable<ProviderMi2S3>(
                children: [
                  _inireTableRow.customTablerow(4, 2), //?methodes numeriques
                  _inireTableRow.customTablerow(5, 2), //?logique mathematique
                ],
              )),
          credOfUnite(2, sizetable(2)),
          moyOfUnite(2, sizetable(2)),
          uniteName('Unite 3', sizetable(2))
        ]),
        TableRow(children: [
          //?----------------------------------Unite 4 ---------------------------------------------
          Container(
              height: sizetable(3),
              child: InerTable<ProviderMi2S3>(
                children: [
                  _inireTableRow.customTablerow(6, 1), //?langue etrangere
                ],
              )),
          credOfUnite(3, sizetable(3)),
          moyOfUnite(3, sizetable(3)),
          uniteName('Unite 4', sizetable(3))
        ]),
      ],
    );
  }

// TODO:need to find a way to remove duplicate code

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
      child: Text("${_mi2Providr.getMoyUnite(numUnite).toStringAsFixed(2)}"),
    );
  }

  //* fun that return Container containe Text Widget of CRED OF UNITE
  Container credOfUnite(int numOfUnite, double height) {
    return Container(
      height: height,
      alignment: Alignment.center,
      child: Text("${_mi2Providr.getCredUnite(numOfUnite)}"),
    );
  }

  double sizetable(int index)=>heightOfTable*_mi2Providr.getUniteSize(index);
}
