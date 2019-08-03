import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/ProviderMi2.dart';
import 'package:pro_mi_0001/widget/TableGen.dart';
import 'package:pro_mi_0001/widget/WidgetHelp.dart';
import 'package:provider/provider.dart';

class TableMi2S2 extends StatelessWidget {
  WidgetHelp _widgetHelp = WidgetHelp();
  @override
  Widget build(BuildContext context) {
    final _mi2Providr = Provider.of<ProviderMi2>(context);

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
                for (int i = 0; i < 3; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS2(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Base de données', "TP",
                      onTap, 0, 2, _mi2Providr.getModuleNoteS2(0, 2)),
                  _widgetHelp.button_note(context, 'Base de données', "TD",
                      onTap, 0, 1, _mi2Providr.getModuleNoteS2(0, 1)),
                  _widgetHelp.button_note(context, 'Base de données', "exame",
                      onTap, 0, 0, _mi2Providr.getModuleNoteS2(0, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Syst d\'exploitation', "TP",
                      onTap, 1, 2, _mi2Providr.getModuleNoteS2(1, 2)),
                  _widgetHelp.button_note(context, 'Syst d\'exploitation', "TD",
                      onTap, 1, 1, _mi2Providr.getModuleNoteS2(1, 1)),
                  _widgetHelp.button_note(context, 'Syst d\'exploitation',
                      "Exame", onTap, 1, 0, _mi2Providr.getModuleNoteS2(1, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Genie logiciel', "TD",
                      onTap, 2, 1, _mi2Providr.getModuleNoteS2(2, 1)),
                  _widgetHelp.button_note(context, 'Genie logiciel', "Exame",
                      onTap, 2, 0, _mi2Providr.getModuleNoteS2(2, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS2(0).toString()),
                cont_Center(_mi2Providr.getCofS2(1).toString()),
                cont_Center(_mi2Providr.getCofS2(2).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS2(0).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(1).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(2).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(0))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(1))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(2))),
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
                for (int i = 3; i < 6; i++)
                  _widgetHelp.text_fit(_mi2Providr.getModuleNameS2(i)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Théorie ded graphes', "TD",
                      onTap, 3, 1, _mi2Providr.getModuleNoteS2(3, 1)),
                  _widgetHelp.button_note(context, 'Théorie ded graphes',
                      "Exame", onTap, 3, 0, _mi2Providr.getModuleNoteS2(3, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Réseaux', "TP", onTap, 4, 2,
                      _mi2Providr.getModuleNoteS2(4, 2)),
                  _widgetHelp.button_note(context, 'Réseaux', "TD", onTap, 4, 1,
                      _mi2Providr.getModuleNoteS2(4, 1)),
                  _widgetHelp.button_note(context, 'Réseaux', "Exame", onTap, 4,
                      0, _mi2Providr.getModuleNoteS2(4, 0)),
                ]),
                _widgetHelp.widgetInColumn(<Widget>[
                  _widgetHelp.button_note(context, 'Réseaux', "TD", onTap, 5, 1,
                      _mi2Providr.getModuleNoteS2(5, 1)),
                  _widgetHelp.button_note(context, 'Réseaux', "Exame", onTap, 5,
                      0, _mi2Providr.getModuleNoteS2(5, 0)),
                ]),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS2(3).toString()),
                cont_Center(_mi2Providr.getCofS2(4).toString()),
                cont_Center(_mi2Providr.getCofS2(5).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS2(3).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(4).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(5).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(3))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(4))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(5))),
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
              _widgetHelp.dvider_column(
                <Widget>[
                  _widgetHelp.text_fit("Anglais"),
                  _widgetHelp.text_fit("Aspects\njuridiaues"),
                ],
              ),
              _widgetHelp.dvider_column(<Widget>[
                _widgetHelp.button_note(context, 'Anglais', "Exame", onTap, 6,
                    0, _mi2Providr.getModuleNoteS2(6, 0)),
                _widgetHelp.button_note(context, 'Aspects juridiaues', "Exame",
                    onTap, 7, 0, _mi2Providr.getModuleNoteS2(7, 0)),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getCofS2(6).toString()),
                cont_Center(_mi2Providr.getCofS2(7).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(_mi2Providr.getOrginCredS2(6).toString()),
                cont_Center(_mi2Providr.getOrginCredS2(7).toString()),
              ]),
              _widgetHelp.dvider_column(<Widget>[
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(6))),
                cont_Center(numbreToString(_mi2Providr.getmoyenneModS2(7))),
              ]),
              cont_Center(numbreToString(_mi2Providr.getMoyenneUnitS2(2))),
              cont_Center(_mi2Providr.getCredUnitS2(2).toString()),
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
