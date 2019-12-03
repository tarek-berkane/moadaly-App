import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/base_model.dart';
import 'package:pro_mi_0001/widget/ButtonNote.dart';

import 'package:provider/provider.dart';

class InerTable<T> extends StatelessWidget {
  InerTable({this.children});
  final List<TableRow> children;
  @override
  Widget build(BuildContext context) {

    return Table(
      columnWidths: {
        0: FractionColumnWidth(.3),
        1: FractionColumnWidth(.25),
      },
      border: TableBorder.all(width: 0.5),
      children: children,
    );
  }
}

class CustomRowName {
  final double consHeight = 50;
  TableRow rowOfColumnName() => TableRow(children: [
        Container(
          height: consHeight,
          child: Table(
            columnWidths: {
              0: FractionColumnWidth(.3),
              1: FractionColumnWidth(.25),
            },
            border: TableBorder.all(width: 0.5),
            children: [TableRow(children: [
              Container(
                alignment: Alignment.center,
                height: consHeight,
                child: FittedBox(
                  child: Text("Modules"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: consHeight,
                child: FittedBox(
                  child: Text("Note"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: consHeight,
                child: FittedBox(
                  child: Text("Coef"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: consHeight,
                child: FittedBox(
                  child: Text("Cred"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: consHeight,
                child: FittedBox(
                  child: Text(" Moyenne \n Module "),
                ),
              ),
            ])],
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: consHeight,
          child: FittedBox(child: Text(" Cred \n Unites ")),
        ),
        Container(
          alignment: Alignment.center,
          height: consHeight,
          child: FittedBox(child: Text(" Moy \n Unites ")),
        ),
        Container(
          alignment: Alignment.center,
          height: consHeight,
          child: FittedBox(
            alignment: Alignment.center,
            child: Text(" Unites ")),
        ),
      ]);
}

class InierTableRow<T extends BaseModel> {
  InierTableRow(this.context);

  final BuildContext context;
  T _miProvider;

  TableRow customTablerow(int numbreModule, int buttonNumbre) {
    _miProvider = Provider.of<T>(context);
    const double heightFix = 105;

    return TableRow(children: [
      Container(
        height: heightFix,
        alignment: Alignment.center,
        child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.contain,
            child: Container(
                padding: EdgeInsets.all(5),
                child: Text("${_miProvider.getModuleName(numbreModule)}"))),
      ),
      Container(
          height: heightFix,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              for (int i = 0; i < buttonNumbre; i++)
                ButtonNote<T>(numbreModule, i)
            ],
          )),
      Container(
        height: heightFix,
        alignment: Alignment.center,
        child: Text("${_miProvider.getModule(numbreModule).cof}"),
      ),
      Container(
        height: heightFix,
        alignment: Alignment.center,
        child: Text("${_miProvider.getModule(numbreModule).cred}"),
      ),
      Container(
        height: heightFix,
        alignment: Alignment.center,
        child: Text(
            "${_miProvider.getModule(numbreModule).clcMoy().toStringAsFixed(2)}"),
      ),
    ]);
  }
}
