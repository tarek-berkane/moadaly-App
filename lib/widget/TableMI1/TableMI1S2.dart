import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProviderMI1.dart';
import 'package:pro_mi_0001/widget/TableGen.dart';
import 'package:pro_mi_0001/widget/WidgetHelp.dart';
import 'package:provider/provider.dart';

class TableMi1S2 extends StatelessWidget {
  WidgetHelp _widgetHelp = WidgetHelp();
  @override
  Widget build(BuildContext context) {
    final _mi2Providr = Provider.of<ProviderMi1>(context);

    Size size1 = MediaQuery.of(context).size;

    void onTap(int i, int j, double note) {
      _mi2Providr.setmoduleNoteS2(i, j, note);
    }

    return Container(
      width: size1.width,
      child: TableGen(
        [
          TableRow(
            children: <Widget>[
              _widgetHelp.dvider_column(<Widget>[
                for (int i = 0; i < 2; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS2(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Analyse 2', "TD", onTap, 0,
                      1, _mi2Providr.getModuleNoteS2(0, 1)),
                  _widgetHelp.button_note(context, 'Analyse 2', "exame", onTap,
                      0, 0, _mi2Providr.getModuleNoteS2(0, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Algebre 2', "TD", onTap, 1,
                      1, _mi2Providr.getModuleNoteS2(1, 1)),
                  _widgetHelp.button_note(context, 'Algebre 2', "Exame", onTap,
                      1, 0, _mi2Providr.getModuleNoteS2(1, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS2(0).toString()),
                cont_Center(_mi2Providr.getCofS2(1).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS2(0).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(1).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(0))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(1))),
              ]),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS2(0))),
              cont_Center(_mi2Providr.getCredUnitS2(0).toString()),
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
                for (int i = 2; i < 4; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS2(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Algorithmiques', "TP",
                      onTap, 2, 2, _mi2Providr.getModuleNoteS2(2, 2)),
                  _widgetHelp.button_note(context, 'Algorithmiques', "TD",
                      onTap, 2, 1, _mi2Providr.getModuleNoteS2(2, 1)),
                  _widgetHelp.button_note(context, 'Algorithmiques', "Exame",
                      onTap, 2, 0, _mi2Providr.getModuleNoteS2(2, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Structure nMachine2', "TD",
                      onTap, 3, 1, _mi2Providr.getModuleNoteS2(3, 1)),
                  _widgetHelp.button_note(context, 'Structure nMachine2',
                      "Exame", onTap, 3, 0, _mi2Providr.getModuleNoteS2(3, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS2(2).toString()),
                cont_Center(_mi2Providr.getCofS2(3).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS2(2).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(3).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(2))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(3))),
              ]),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS2(1))),
              cont_Center(_mi2Providr.getCredUnitS2(1).toString()),
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
              _widgetHelp.dvider_column(<Widget>[
                for (int i = 4; i < 7; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS2(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Intrduction Proba', "TD",
                      onTap, 4, 1, _mi2Providr.getModuleNoteS2(4, 1)),
                  _widgetHelp.button_note(context, 'Intrduction Proba', "Exame",
                      onTap, 4, 0, _mi2Providr.getModuleNoteS2(4, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                 
                  _widgetHelp.button_note(context, 'TIC', "Exame", onTap, 5, 0,
                      _mi2Providr.getModuleNoteS2(5, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'OPM', "TP", onTap, 6, 2,
                      _mi2Providr.getModuleNoteS2(6, 2)),
                  _widgetHelp.button_note(context, 'OPM', "TD", onTap, 6, 1,
                      _mi2Providr.getModuleNoteS2(6, 1)),
                _widgetHelp.button_note(context, 'OPM', "Exame", onTap, 6, 0,
                      _mi2Providr.getModuleNoteS2(6, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS2(4).toString()),
                cont_Center(_mi2Providr.getCofS2(5).toString()),
                cont_Center(_mi2Providr.getCofS2(6).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS2(4).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(5).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(6).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(4))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(5))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(6))),
              ]),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS2(2))),
              cont_Center(_mi2Providr.getCredUnitS2(2).toString()),
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                    alignment: Alignment.center,
                    child: Text('  Méthodologie  ')),
              )
            ],
          ),
          TableRow(
            children: <Widget>[
              _widgetHelp.text_fit("Physique 2"),
              _widgetHelp.widgetInColumn(<Widget>[
                _widgetHelp.button_note(context, 'Physique2', "TD", onTap, 7, 1,
                    _mi2Providr.getModuleNoteS2(7, 1)),
                _widgetHelp.button_note(context, 'Physique2', "Exame", onTap, 7,
                    0, _mi2Providr.getModuleNoteS2(7, 0)),
              ]),
              cont_Center(_mi2Providr.getCofS2(7).toString()),
              cont_Center(_mi2Providr.getOrginCredS2(7).toString()),
              cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(7))),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS2(3))),
              cont_Center(_mi2Providr.getCredUnitS2(3).toString()),
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                    alignment: Alignment.center, child: Text('Decouverte')),
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
