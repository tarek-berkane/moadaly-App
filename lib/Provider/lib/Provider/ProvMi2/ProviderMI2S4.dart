import 'package:pro_mi_0001/Provider/base_model.dart';
import 'package:pro_mi_0001/enums/view_state.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleExama.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTd.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTpTd.dart';
import 'package:pro_mi_0001/model/Unite.dart';

class ProviderMi2S4 extends BaseModel {
  static ModuleTpTd2 bases_de_donnees = ModuleTpTd2(cof: 2, cred: 4);
  static ModuleTpTd2 systemes_exploitation = ModuleTpTd2(cof: 3, cred: 5);
  static ModuleTd2 genie_logiciel = ModuleTd2(cof: 2, cred: 4);

  static ModuleTd2 theorie_des_graphes = ModuleTd2(cof: 2, cred: 4);
  static ModuleTpTd2 reseaux = ModuleTpTd2(cof: 3, cred: 5);
  static ModuleTd2 dev_web = ModuleTd2(cof: 2, cred: 4);

  static ModuleExama aje = ModuleExama(cof: 1, cred: 2);
  static ModuleExama anglais = ModuleExama(cof: 1, cred: 2);

  List<dynamic> modulesS2 = [
    bases_de_donnees,
    systemes_exploitation,
    genie_logiciel,
    theorie_des_graphes,
    reseaux,
    dev_web,
    aje,
    anglais
  ];

  List<Unite> uniteS2 = [
    Unite([bases_de_donnees, systemes_exploitation, genie_logiciel]),
    Unite([theorie_des_graphes, reseaux, dev_web]),
    Unite([aje, anglais]),
  ];

  static List<String> module2Mi1 = [
    'bases\nde donnees ',
    'systemes\nexploitation ',
    'genie\nlogiciel',
    'theorie\ndes graphes',
    "reseaux",
    "dev web",
    'aje',
    'anglais'
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
    for (int i = 0; i < 3; i++) sum += getCredUnite(i);
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
