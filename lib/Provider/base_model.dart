import 'package:flutter/widgets.dart';
import 'package:pro_mi_0001/enums/view_state.dart';

abstract class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  List<String> typeModule = ["Exama", "TD", "TP"];

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  void setTdModule(int num, double note);
  void setTpModule(int num, double note);
  void setExamaModule(int num, double note);

  String getModuleType(int num)=>typeModule[num];
  String getModuleName(int num);
  dynamic getModule(int num);
  double getMoyUnite(int num);
  int getCredUnite(int num);

  int credObtenu();
  double moyObtenu();
  int getUniteSize(int index);
}
