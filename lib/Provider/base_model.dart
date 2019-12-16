import 'package:flutter/widgets.dart';
import 'package:pro_mi_0001/enums/view_state.dart';
import 'package:pro_mi_0001/model/Unite.dart';

abstract class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  List<String> typeModule = ["Exama", "TD", "TP"];

  //TODO:Replace List with Dict Modules []=>{}  
  
  List<dynamic> modules = [];
   
  List<Unite> unite = [];

  List<String> moduleName = [];

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }



  String getModuleName(int num) => moduleName[num];

  int getCredUnite(int num) => unite[num].credUnite();

  double getMoyUnite(int num) => unite[num].moyenneUnite();

  getModule(int num) => modules[num];

  void setExamaModule(int num, double note) {
    setState(ViewState.Busy);
    modules[num].set_exama(note);
    setState(ViewState.Idle);
  }

  void setTdModule(int num, double note) {
    setState(ViewState.Busy);
    modules[num].set_td(note);
    setState(ViewState.Idle);
  }

  void setTpModule(int num, double note) {
    setState(ViewState.Busy);
    modules[num].set_tp(note);
    setState(ViewState.Idle);
  }

  int credObtenu() {
    int sum = 0;
    int uniteSize = unite.length;
    for (int i = 0; i <uniteSize ; i++) sum += getCredUnite(i);
    return moyObtenu() >= 10 ? 30 : sum;
  }

  double moyObtenu() {
    double moyObt = 0;
    int cof = 0;
    int modulesSize = modules.length; 
    for (int i = 0; i < modulesSize; i++) {
      moyObt += getModule(i).clcMoy() * getModule(i).cof;
      cof += getModule(i).cof;
    }
    return moyObt / cof;
  }

  int getUniteSize(int index) => unite[index].modules.length;
}
