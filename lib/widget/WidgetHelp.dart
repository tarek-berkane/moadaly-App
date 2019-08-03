import 'package:flutter/material.dart';

class WidgetHelp {
  Future<double> asyncInputDialog(
      BuildContext context, String text, String type) async {
    double note = -1;
    final formKey = GlobalKey<FormState>();
    String check_valide(String text) {
      try {
        double a = num.parse(text).toDouble();
        return ((a <= 20 && a >= 0) ? null : "Erreur de numéro");
      } catch (e) {
        return "Erreur de numéro";
      }
    }

    return showDialog<double>(
      context: context,
      barrierDismissible:
          false, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: Text('Entrerz la note de ${text}'),
            content: Container(
              child: Form(
                key: formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      width: 150,
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        validator: check_valide,
                        onSaved: (str) {
                          note = num.parse(str).toDouble();
                        },onEditingComplete: (){
                           var form = formKey.currentState;
                  if (form.validate()) {
                    form.save();
                    Navigator.of(context).pop(note);
                        }},
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: type,
                            labelStyle: TextStyle(color: Colors.blue)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  var form = formKey.currentState;
                  if (form.validate()) {
                    form.save();
                    Navigator.of(context).pop(note);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Container cont_Center(Widget child, double height) => Container(
        alignment: Alignment.center,
        height: height,
        child: child,
      );

  Widget widgetInColumn(List<Widget> children) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: children,
      );

  Widget dvider_column(
    List children,
  ) =>
      Container(
        child: Column(
          children: <Widget>[
            if (children.length == 1) one_item(children[0]),
            if (children.length == 2) tow_item(children),
            if (children.length == 3) tree_item(children)
          ],
        ),
      );

  Widget one_item(childe) => cont_Center(childe, 70);

  Widget tow_item(List<Widget> childe) => Column(
        children: <Widget>[
          cont_Center(childe[0], 90),
          Divider(
            color: Colors.black,
          ),
          cont_Center(childe[1], 60),
        ],
      );

  Widget tree_item(List<Widget> childe) => Column(
        children: <Widget>[
          cont_Center(childe[0], 90),
          Divider(
            color: Colors.black,
          ),
          cont_Center(childe[1], 90),
          Divider(
            color: Colors.black,
          ),
          cont_Center(childe[2], 90)
        ],
      );

  Widget text_fit(String text, {double size}) => FittedBox(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(vertical: 2),
          child: Text(
            text,
            style: TextStyle(fontSize: size),
          ),
        ),
      );

  Card conOfNote(String text) => Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: StadiumBorder(side: BorderSide(color: Color(0xff323EA6))),
        elevation: 3,
        child: Container(
          alignment: Alignment.center,
          height: 22,
          width: 70,
          child: Text(text),
        ),
      );

  InkWell button_note(context, String module, String type, var ontap, int i,
      int j, double note) {
    String text = note != -1 ? note.toStringAsFixed(2) : type;
    return InkWell(
        onTap: () async {
          double note = await asyncInputDialog(context, module, type);
          if (note != null) {
            try {
              ontap(i, j, note);
            } catch (e) {
              print(e);
            }
          }
        },
        child: conOfNote(text));
  }
}
