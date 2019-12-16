
import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProvMi2/ProviderMI2S4.dart';

import 'package:provider/provider.dart';

import '../CustomTableRow.dart';

class TableMi2S4 extends StatelessWidget {
  ProviderMi2S4 _mi2Providr;
  InierTableRow<ProviderMi2S4> _inireTableRow;
    final double heightOfTable = 105;


  @override
  Widget build(BuildContext context) {
    _mi2Providr = Provider.of<ProviderMi2S4>(context);
    _inireTableRow = InierTableRow(context);

    return Table(
      columnWidths: {0: FractionColumnWidth(.7)},
      border: TableBorder.all(),
      children: [
        CustomRowName().rowOfColumnName(),
          //?----------------------------------Unite 1 -------------------------------------------------
        TableRow(children: [
          Container(
              height: sizetable(0),
              child: InerTable<ProviderMi2S4>(
                children: [
                  _inireTableRow.customTablerow(0, 3), //?theorie des langages
                  _inireTableRow.customTablerow(1, 3), //?system d'exploitation
                ],
              )),
          credOfUnite(0,  sizetable(0)),
          moyOfUnite(0,  sizetable(0)),
          uniteName('Unite 1',  sizetable(0))
        ]),
          //?----------------------------------Unite 2---------------------------------------------------
        TableRow(children: [
          Container(
              height:  sizetable(1),
              child: InerTable<ProviderMi2S4>(
                children: [
                  _inireTableRow.customTablerow(2, 3), //?Bases de donnees
                  _inireTableRow.customTablerow(3, 3), //?Reseaux
                ],
              )),
          credOfUnite(1,  sizetable(1)),
          moyOfUnite(1,  sizetable(1)),
          uniteName('Unite 2',  sizetable(1))
        ]),
          //?----------------------------------Unite 3---------------------------------------------------
          TableRow(children: [
          Container(
              height:  sizetable(1),
              child: InerTable<ProviderMi2S4>(
                children: [
                  _inireTableRow.customTablerow(4, 2), //?Poo
                  _inireTableRow.customTablerow(5, 2), //?Dev Web
                ],
              )),
          credOfUnite(1,  sizetable(2)),
          moyOfUnite(1,  sizetable(2)),
          uniteName('Unite 3',  sizetable(2))
        ]),
          //?----------------------------------Unite 4 ---------------------------------------------
        TableRow(children: [
          Container(
              height:  sizetable(3),
              child: InerTable<ProviderMi2S4>(
                children: [
                  _inireTableRow.customTablerow(6, 1), //?langue etrangere
                ],
              )),
          credOfUnite(3,  sizetable(3)),
          moyOfUnite(3,  sizetable(3)),
          uniteName('Unite 4', sizetable(3))
        ]),
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
