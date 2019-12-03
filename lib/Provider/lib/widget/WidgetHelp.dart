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

}
