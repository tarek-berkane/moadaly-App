import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProviderMI1.dart';
import 'package:pro_mi_0001/widget/TableGen.dart';
import 'package:pro_mi_0001/widget/WidgetHelp.dart';
import 'package:provider/provider.dart';

class TableMi1S1 extends StatelessWidget {
  WidgetHelp _widgetHelp = WidgetHelp();
  @override
  Widget build(BuildContext context) {
    final _mi2Providr = Provider.of<ProviderMi1>(context);

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
                for (int i = 0; i < 2; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS1(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Analyse 1', "TD", onTap, 0,
                      1, _mi2Providr.getModuleNoteS1(0, 1)),
                  _widgetHelp.button_note(context, 'Analyse 1', "exame", onTap,
                      0, 0, _mi2Providr.getModuleNoteS1(0, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Algebre 1', "TD", onTap, 1,
                      1, _mi2Providr.getModuleNoteS1(1, 1)),
                  _widgetHelp.button_note(context, 'Algebre 1', "Exame", onTap,
                      1, 0, _mi2Providr.getModuleNoteS1(1, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS1(0).toString()),
                cont_Center(_mi2Providr.getCofS1(1).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS1(0).toString()),
                cont_Center(_mi2Providr.getOrginCredS1(1).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(0))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(1))),
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
                for (int i = 2; i < 4; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS1(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Algorithmiques', "TP",
                      onTap, 2, 2, _mi2Providr.getModuleNoteS1(2, 2)),
                  _widgetHelp.button_note(context, 'Algorithmiques', "TD",
                      onTap, 2, 1, _mi2Providr.getModuleNoteS1(2, 1)),
                  _widgetHelp.button_note(context, 'Algorithmiques', "Exame",
                      onTap, 2, 0, _mi2Providr.getModuleNoteS1(2, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Structure Machine 1', "TD",
                      onTap, 3, 1, _mi2Providr.getModuleNoteS1(3, 1)),
                  _widgetHelp.button_note(context, 'Structure Machine 1',
                      "Exame", onTap, 3, 0, _mi2Providr.getModuleNoteS1(3, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS1(2).toString()),
                cont_Center(_mi2Providr.getCofS1(3).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS1(2).toString()),
                cont_Center(_mi2Providr.getOrginCredS1(3).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(2))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(3))),
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
              _widgetHelp.dvider_column(<Widget>[
                for (int i = 4; i < 6; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS1(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.button_note(context, 'Terminologie Scient', "Exame",
                    onTap, 4, 0, _mi2Providr.getModuleNoteS1(4, 0)),
                _widgetHelp.button_note(context, 'Structure Machine 1', "Exame",
                    onTap, 5, 0, _mi2Providr.getModuleNoteS1(5, 0)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS1(4).toString()),
                cont_Center(_mi2Providr.getCofS1(5).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS1(4).toString()),
                cont_Center(_mi2Providr.getOrginCredS1(5).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(4))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(5))),
              ]),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS1(2))),
              cont_Center(_mi2Providr.getCredUnitS1(2).toString()),
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                    alignment: Alignment.center,
                    child: Text(' Méthodologie ')),
              )
            ],
          ),
          TableRow(
            children: <Widget>[
              _widgetHelp.text_fit("Physique1"),
              _widgetHelp.widgetInColumn(<Widget>[
                _widgetHelp.button_note(context, 'Physique1', "TD", onTap, 6,
                    1, _mi2Providr.getModuleNoteS1(6, 1)),
                _widgetHelp.button_note(context, 'Physique1', "Exame", onTap, 6,
                    0, _mi2Providr.getModuleNoteS1(6, 0)),
              ]),
              cont_Center(_mi2Providr.getCofS1(6).toString()),
              cont_Center(_mi2Providr.getOrginCredS1(6).toString()),
              cont_Center(numbreToString(_mi2Providr.getmoyenneModS1(6))),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS1(3))),
              cont_Center(_mi2Providr.getCredUnitS1(3).toString()),
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
