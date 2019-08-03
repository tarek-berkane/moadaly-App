import 'package:flutter/cupertino.dart';
import 'package:pro_mi_0001/model/AppDataMi1.dart';

import 'ClcNote.dart';

class ProviderMi1 with ChangeNotifier {
  ClcNote _clc = ClcNote();

  double _moyS1 = 0, _moyS2 = 0;
  int _credS2 = 0, _credS1 = 0;

  static List<String> _module1 = AppDataMi1.module1Mi2;
  static List<String> _module2 = AppDataMi1.module2Mi2;

  List<int> _listOfCofS1 = AppDataMi1.listOfCoefS1;
  List<int> _listOfCofS2 = AppDataMi1.listOfCoefS2;

  Map<String, List<double>> _moduleNote1 = AppDataMi1.moduleNote1;
  Map<String, List<double>> _moduleNote2 = AppDataMi1.moduleNote2;

  List<double> _moyenneModS1 = listGenerated(_module1.length);
  List<double> _moyenneModS2 = listGenerated(_module2.length);

  List<double> _moyenneUnitS1 = listGenerated(4);
  List<double> _moyenneUnitS2 = listGenerated(4);

  List<int> _credModS1 = List.generate(_module1.length, (i) => 0);
  List<int> _credModS2 = List.generate(_module2.length, (i) => 0);

  List<int> _credUnitS1 = List.generate(4, (i) => 0);
  List<int> _credUnitS2 = List.generate(4, (i) => 0);

  static List<double> listGenerated(int i) => List.generate(i, (i) => 0.0);

  // !!------------------------------------ set function ---------------------------------------------

  setmoduleNoteS1(int i, int j, double note) {
    _moduleNote1[_module1[i]][j] = note;

    int _modLength = _moduleNote1[_module1[i]].length;
    bool isTrue = check_value(_moduleNote1[_module1[i]]);

    if (isTrue) {
      if (_modLength == 1)
        _moyenneModS1[i] = note;
      else if (_modLength == 2)
        _moyenneModS1[i] = _clc.tow_note2(
            _moduleNote1[_module1[i]][1], _moduleNote1[_module1[i]][0]);
      else
        _moyenneModS1[i] = _clc.there_note2(_moduleNote1[_module1[i]][2],
            _moduleNote1[_module1[i]][1], _moduleNote1[_module1[i]][0]);

      if (_moyenneModS1[i] >= 10) {
        _credModS1[i] = AppDataMi1.listOfCredS1[i];
      }else{
        _credModS1[i]=0;
      }
      if (i < 2) {
        clcMoyUNniteAndCred(0, 2, 0);
      } else if (i < 4) {
        clcMoyUNniteAndCred(2, 4, 1);
      } else if (i < 6) {
        clcMoyUNniteAndCred(4, 6, 2);
      } else {
        clcMoyUNniteAndCred(6, 7, 3);
      }

      _moyS1 = _clc.total_note(_moyenneModS1, _listOfCofS1);
      _credS1 = _clc.sum_of_num(_credModS1);

      notifyListeners();
    }
  }

  setmoduleNoteS2(int i, int j, double note) {
    _moduleNote2[_module2[i]][j] = note;

    int _modLength = _moduleNote2[_module2[i]].length;
    bool isTrue = check_value(_moduleNote2[_module2[i]]);

    if (isTrue) {
      if (_modLength == 1)
        _moyenneModS2[i] = note;
      else if (_modLength == 2)
        _moyenneModS2[i] = _clc.tow_note2(
            _moduleNote2[_module2[i]][1], _moduleNote2[_module2[i]][0]);
      else
        _moyenneModS2[i] = _clc.there_note2(_moduleNote2[_module2[i]][2],
            _moduleNote2[_module2[i]][1], _moduleNote2[_module2[i]][0]);

      if (_moyenneModS2[i] >= 10) {
        _credModS2[i] = AppDataMi1.listOfCredS2[i];
      }else{
         _credModS2[i] = 0;
      }
      if (i < 2) {
        clcMoyUNniteAndCred2(0, 2, 0);
      } else if (i < 4) {
        clcMoyUNniteAndCred2(2, 4, 1);
      } else if (i < 7) {
        clcMoyUNniteAndCred2(4, 7, 2);
      } else {
        clcMoyUNniteAndCred2(7, 8, 3);
      }

      _moyS2 = _clc.total_note(_moyenneModS2, _listOfCofS2);
      _credS2 = _clc.sum_of_num(_credModS2);

      notifyListeners();
    }
  }

  void clcMoyUNniteAndCred(int start, int stop, int i) {
    List _subListofMoy = _moyenneModS1.sublist(start, stop);
    List _subListofCof = _listOfCofS1.sublist(start, stop);

    List _subListofCre = _credModS1.sublist(start, stop);

    _moyenneUnitS1[i] = _clc.total_note(_subListofMoy, _subListofCof);
    _credUnitS1[i] = _clc.sum_of_num(_subListofCre);
  }

  void clcMoyUNniteAndCred2(int start, int stop, int i) {
    List _subListofMoy = _moyenneModS2.sublist(start, stop);
    List _subListofCof = _listOfCofS2.sublist(start, stop);

    List _subListofCre = _credModS2.sublist(start, stop);

    _moyenneUnitS2[i] = _clc.total_note(_subListofMoy, _subListofCof);
    _credUnitS2[i] = _clc.sum_of_num(_subListofCre);
  }

  bool check_value(List<double> notes) {
    for (int i = 0; i < notes.length; i++) {
      if (notes[i] == -1) return false;
    }
    return true;
  }
// !!---------------------------------- get function ------------------------------------

  String getModuleNameS1(int i) => _module1[i];
  String getModuleNameS2(int i) => _module2[i];

  double getModuleNoteS1(int i, int j) => _moduleNote1[_module1[i]][j];
  double getModuleNoteS2(int i, int j) => _moduleNote2[_module2[i]][j];

  double getMoyS1() => _moyS1;
  double getMoyS2() => _moyS2;

  int getcredS2() => _credS2;
  int getcredS1() => _credS1;

  double getMoyGen() => (_moyS1 + _moyS2) / 2;
  int getCredGen() => _clc.sum_of_num(_credModS1) + _clc.sum_of_num(_credModS2);

  double getmoyenneModS1(int i) => _moyenneModS1[i];
  double getmoyenneModS2(int i) => _moyenneModS2[i];

  double getMoyenneUnitS1(int i) => _moyenneUnitS1[i];
  double getMoyenneUnitS2(int i) => _moyenneUnitS2[i];

  int getCofS1(int i) => _listOfCofS1[i];
  int getCofS2(int i) => _listOfCofS2[i];

  int getCredModS1(int i) => _credModS1[i];
  int getCredModS2(int i) => _credModS2[i];

  int getCredUnitS1(int i) => _credUnitS1[i];
  int getCredUnitS2(int i) => _credUnitS2[i];

  int getOrginCredS1(int i) => AppDataMi1.listOfCredS1[i];
  int getOrginCredS2(int i) => AppDataMi1.listOfCredS2[i];
}
