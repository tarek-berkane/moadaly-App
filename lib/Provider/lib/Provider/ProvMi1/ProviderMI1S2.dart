import 'package:pro_mi_0001/Provider/base_model.dart';
import 'package:pro_mi_0001/enums/view_state.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleExama.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTd.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTpTd.dart';
import 'package:pro_mi_0001/model/Unite.dart';

class ProviderMi1S2 extends BaseModel {
  static ModuleTd analyse2 = ModuleTd(cof: 4, cred: 6);
  static ModuleTd algebre2 = ModuleTd(cof: 2, cred: 4);

  static ModuleTpTd algo2 = ModuleTpTd(cof: 4, cred: 6);
  static ModuleTd strm2 = ModuleTd(cof: 2, cred: 4);

  static ModuleTd proba = ModuleTd(cof: 2, cred: 3);
  static ModuleTpTd opm = ModuleTpTd(cof: 1, cred: 2);
  static ModuleExama tic = ModuleExama(cof: 1, cred: 2);

  static ModuleTd physique2 = ModuleTd(cof: 2, cred: 3);

  List<dynamic> modulesS2 = [
    analyse2,
    algebre2,
    algo2,
    strm2,
    proba,
    opm,
    tic,
    physique2
  ];

  List<Unite> uniteS2 = [
    Unite([analyse2, algebre2]),
    Unite([algo2, strm2]),
    Unite([proba, opm, tic]),
    Unite([physique2]),
  ];

  static List<String> module2Mi1 = [
    'Analyse 2',
    'Algebre 2',
    'Algorithmiques \net structure \nde données 2',
    'Structure \nMachine 2',
    'Intrduction \nProba',
    "OPM",
    "TIC",
    'Physique 2'
  ];

  @override
  String getModuleName(int num) => module2Mi1[num];

  @override
  int getCredUnite(int num) => uniteS2[num].credUnite();

  @override
  double getMoyUnite(int num) => uniteS2[num].moyenneUnite();

  @override
  getModule(int num) => modulesS2[num];

  @override
  void setExamaModule(int num, double note) {
    setState(ViewState.Busy);
    modulesS2[num].set_exama(note);
    setState(ViewState.Idle);
  }

  @override
  void setTdModule(int num, double note) {
    setState(ViewState.Busy);
    modulesS2[num].set_td(note);
    setState(ViewState.Idle);
  }

  @override
  void setTpModule(int num, double note) {
    setState(ViewState.Busy);
    modulesS2[num].set_tp(note);
    setState(ViewState.Idle);
  }

  @override
  int credObtenu() {
    int sum = 0;
    for (int i = 0; i < 4; i++) sum += getCredUnite(i);
    return moyObtenu() >= 10 ? 30 : sum;
  }

  @override
  double moyObtenu() {
    double moyObt = 0;
    int cof = 0;
    for (int i = 0; i < 8; i++) {
      moyObt += getModule(i).clcMoy() * getModule(i).cof;
      cof += getModule(i).cof;
    }
    return moyObt / cof;
  }

  @override
  int getUniteSize(int index) => uniteS2[index].modules.length;
}
