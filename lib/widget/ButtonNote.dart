import 'package:flutter/material.dart';
import 'package:pro_mi_0001/Provider/base_model.dart';
import 'package:pro_mi_0001/widget/WidgetHelp.dart';
import 'package:provider/provider.dart';

class ButtonNote<T extends BaseModel> extends StatelessWidget {
  ButtonNote(this.num, this.typeModule);
  WidgetHelp _widgetHelp = WidgetHelp();
  T _miProvidr;

  final int num;
  final int typeModule;
  @override
  Widget build(BuildContext context) {
    _miProvidr = Provider.of<T>(context);

    final _typeOfModule = _miProvidr.typeModule[typeModule];
    double note;
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 60,
      child: InkWell(

       
        onTap: () async {
          note = await _widgetHelp.asyncInputDialog(
              context, _miProvidr.getModuleName(num), _typeOfModule);
          //? for test  print("********Note = $note $_typeOfModule");
          if (note != null) {
            try {
              setNote(typeModule, note);
            } catch (e) {
              print(e);
            }
          }
        },
        child: Container(
          alignment: Alignment.center,
        height: 30,
        width: 60,
          child: Text(
              "${(getModuleNote(typeModule) < 0) ? _typeOfModule : getModuleNote(typeModule).toStringAsFixed(2)}"),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  void setNote(int i, double note) {
    switch (i) {
      case 0:
        _miProvidr.setExamaModule(num, note);
        break;
      case 1:
        _miProvidr.setTdModule(num, note);
        break;
      case 2:
        _miProvidr.setTpModule(num, note);
        break;
    }
  }

  double getModuleNote(int i) {
    double note;
    switch (i) {
      case 0:
        note = _miProvidr.getModule(num).exama;
        break;
      case 1:
        note = _miProvidr.getModule(num).td;
        break;
      case 2:
        note = _miProvidr.getModule(num).tp;
        break;
    }
    return note;
  }
}
