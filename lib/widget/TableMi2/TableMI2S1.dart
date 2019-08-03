import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProviderMi2.dart';
import 'package:pro_mi_0001/widget/TableGen.dart';
import 'package:pro_mi_0001/widget/WidgetHelp.dart';
import 'package:provider/provider.dart';

class TableMi2S1 extends StatelessWidget {
  WidgetHelp _widgetHelp = WidgetHelp();
  @override
  Widget build(BuildContext context) {
    final _mi2Providr = Provider.of<ProviderMi2>(context);

    Size size1 = MediaQuery.of(context).size;

    void onTap(int i, int j, double note) {
      _mi2Providr.setmoduleNoteS1(i, j, note);
    }

    return Container(
      width: size1.width,
      child: TableGen(
        [
          TableRow(
            children: <Widget>[
              _widgetHelp.dvider_column(<Widget>[
                for (int i = 0; i < 3; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS1(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Architecture', "TD", onTap,
                      0, 1, _mi2Providr.getModuleNoteS1(0, 1)),
                  _widgetHelp.button_note(context, 'Architecture', "exame",
                      onTap, 0, 0, _mi2Providr.getModuleNoteS1(0, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Algo et SD', "TP", onTap, 1,
                      2, _mi2Providr.getModuleNoteS1(1, 2)),
                  _widgetHelp.button_note(context, 'Algo et SD', "TD", onTap, 1,
                      1, _mi2Providr.getModuleNoteS1(1, 1)),
                  _widgetHelp.button_note(context, 'Algo et SD', "Exame", onTap,
                      1, 0, _mi2Providr.getModuleNoteS1(1, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Logique math', "TD", onTap,
                      2, 1, _mi2Providr.getModuleNoteS1(2, 1)),
                  _widgetHelp.button_note(context, 'Logique math', "Exame",
                      onTap, 2, 0, _mi2Providr.getModuleNoteS1(2, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS1(0).toString()),
                cont_Center(_mi2Providr.getCofS1(1).toString()),
                cont_Center(_mi2Providr.getCofS1(2).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS1(0).toString()),
                cont_Center(_mi2Providr.getOrginCredS1(1).toString()),
                cont_Center(_mi2Providr.getOrginCredS1(2).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(0))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(1))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(2))),
              ]),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS1(0))),
              cont_Center(_mi2Providr.getCredUnitS1(0).toString()),
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                    alignment: Alignment.center, child: Text('fondamentale 1')),
              )
            ],
          ),
          TableRow(
            children: <Widget>[
              _widgetHelp.dvider_column(<Widget>[
                for (int i = 3; i < 6; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS1(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'POO', "TP", onTap, 3, 2,
                      _mi2Providr.getModuleNoteS1(3, 2)),
                  _widgetHelp.button_note(context, 'POO', "TD", onTap, 3, 1,
                      _mi2Providr.getModuleNoteS1(3, 1)),
                  _widgetHelp.button_note(context, 'POO', "Exame", onTap, 3, 0,
                      _mi2Providr.getModuleNoteS1(3, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Syst d\'info', "TD", onTap,
                      4, 1, _mi2Providr.getModuleNoteS1(4, 1)),
                  _widgetHelp.button_note(context, 'Syst d\'info', "Exame",
                      onTap, 4, 0, _mi2Providr.getModuleNoteS1(4, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Théorie des Lan', "TD",
                      onTap, 5, 1, _mi2Providr.getModuleNoteS1(5, 1)),
                  _widgetHelp.button_note(context, 'Théorie des Lan', "Exame",
                      onTap, 5, 0, _mi2Providr.getModuleNoteS1(5, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS1(3).toString()),
                cont_Center(_mi2Providr.getCofS1(4).toString()),
                cont_Center(_mi2Providr.getCofS1(5).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS1(3).toString()),
                cont_Center(_mi2Providr.getOrginCredS1(4).toString()),
                cont_Center(_mi2Providr.getOrginCredS1(5).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(3))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(4))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(5))),
              ]),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS1(1))),
              cont_Center(_mi2Providr.getCredUnitS1(1).toString()),
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                    alignment: Alignment.center,
                    child: Text('fondamentale 2 ')),
              )
            ],
          ),
          TableRow(
            children: <Widget>[
              _widgetHelp.text_fit("Anglais"),
              _widgetHelp.button_note(context, 'Anglais', "Exame", onTap, 6, 0,
                  _mi2Providr.getModuleNoteS1(6, 0)),
              cont_Center(_mi2Providr.getCofS1(6).toString()),
              cont_Center(_mi2Providr.getOrginCredS1(6).toString()),
                             cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(6))),

              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS1(2))),
              cont_Center(_mi2Providr.getCredUnitS1(2).toString()),
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                    alignment: Alignment.center, child: Text('Méthodologie')),
              )
            ],
          ),
        ],
      ),
    );
  }

  String numbreToString(num) {
    return (num == 0) ? '0' : num.toStringAsFixed(2);
  }

  Container cont_Center(String text) => Container(
        alignment: Alignment.center,
        child: Text(text),
      );
}
