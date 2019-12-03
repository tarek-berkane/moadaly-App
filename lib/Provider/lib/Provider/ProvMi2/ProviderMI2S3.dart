import 'package:pro_mi_0001/Provider/base_model.dart';
import 'package:pro_mi_0001/enums/view_state.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleExama.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTd.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTpTd.dart';
import 'package:pro_mi_0001/model/Unite.dart';

class ProviderMi2S3 extends BaseModel {
  static ModuleTd2 architecture_des_oredinateurs = ModuleTd2(cof: 2, cred: 5);
  static ModuleTpTd2 algorithmique = ModuleTpTd2(cof: 3, cred: 6);
  static ModuleTd2 logic_matehmatique = ModuleTd2(cof: 2, cred: 4);

  static ModuleTpTd2 poo = ModuleTpTd2(cof: 3, cred: 5);
  static ModuleTd2 system_info = ModuleTd2(cof: 3, cred: 4);
  static ModuleTd2 theorie_des_lngages = ModuleTd2(cof: 2, cred: 4);

  static ModuleExama langue_etrangere = ModuleExama(cof: 1, cred: 2);

  List<dynamic> modulesS1 = [
    architecture_des_oredinateurs,
    algorithmique,
    logic_matehmatique,
    poo,
    system_info,
    theorie_des_lngages,
    langue_etrangere
  ];

  List<Unite> uniteS1 = [
    Unite([architecture_des_oredinateurs, algorithmique, logic_matehmatique]),
    Unite([poo, system_info,theorie_des_lngages]),
    Unite([langue_etrangere]),
  ];

  List<String> module1Mi1 = [
    'Architecture',
    'algorithmique',
    'Logique\nmath',
    'POO',
    'system\ninfo',
    'theorie\ndes\nlngages',
    'langue\netrangere'
  ];

  @override
  String getModuleName(int num) => module1Mi1[num];

  @override
  int getCredUnite(int num) => uniteS1[num].credUnite();

  @override
  double getMoyUnite(int num) => uniteS1[num].moyenneUnite();

  @override
  getModule(int num) => modulesS1[num];

  @override
  void setExamaModule(int num, double note) {
    setState(ViewState.Busy);
    modulesS1[num].set_exama(note);
    setState(ViewState.Idle);
  }

  @override
  void setTdModule(int num, double note) {
    setState(ViewState.Busy);
    modulesS1[num].set_td(note);
    setState(ViewState.Idle);
  }

  @override
  void setTpModule(int num, double note) {
    setState(ViewState.Busy);
    modulesS1[num].set_tp(note);
    setState(ViewState.Idle);
  }

  int credTotal() {
    int som = 0;
    for (int i = 0; i < 4; i++) {
      som += getCredUnite(i);
    }
    return som;
  }

  @override
  int credObtenu() {
    int sum = 0;
    for (int i = 0; i < 3; i++) sum += getCredUnite(i);
    return moyObtenu() >= 10 ? 30 : sum;
  }

  @override
  double moyObtenu() {
    double moyObt = 0;
    int cof = 0;
    for (int i = 0; i < 7; i++) {
      moyObt += getModule(i).clcMoy() * getModule(i).cof;
      cof += getModule(i).cof;
    }
    return moyObt / cof;
  }

  @override
  int getUniteSize(int index) => uniteS1[index].modules.length;
}
