import 'package:pro_mi_0001/Provider/base_model.dart';
import 'package:pro_mi_0001/enums/view_state.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleExama.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTd.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTpTd.dart';
import 'package:pro_mi_0001/model/Unite.dart';

class ProviderMi1S1 extends BaseModel {
  static ModuleTd analyse1 = ModuleTd(cof: 4, cred: 6);
  static ModuleTd algebre1 = ModuleTd(cof: 3, cred: 5);

  static ModuleTpTd algo1 = ModuleTpTd(cof: 4, cred: 6);
  static ModuleTd strm1 = ModuleTd(cof: 3, cred: 5);

  static ModuleExama terminologieS = ModuleExama(cof: 1, cred: 2);
  static ModuleExama langueEtrangere = ModuleExama(cof: 1, cred: 2);

  static ModuleTd physique1 = ModuleTd(cof: 2, cred: 4);

  List<dynamic> modulesS1 = [
    analyse1,
    algebre1,
    algo1,
    strm1,
    terminologieS,
    langueEtrangere,
    physique1
  ];

  List<Unite> uniteS1 = [
    Unite([analyse1, algebre1]),
    Unite([algo1, strm1]),
    Unite([terminologieS, langueEtrangere]),
    Unite([physique1]),
  ];

  List<String> module1Mi1 = [
    'Analyse 1 ',
    'Algebre 1',
    'Algorithmiques \net structure \nde données',
    'Structure \nMachine 1',
    'Terminologie \nScient',
    'Langue \nEtrangere',
    'Physique1'
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
    for (int i = 0; i < 4; i++) sum += getCredUnite(i);
    return moyObtenu()>=10 ? 30 :sum;
    // return sum;
  }

  @override
  double moyObtenu() {
    double moyObt=0;
    int cof =0;
    for(int i =0 ; i<7;i++){
     moyObt +=  getModule(i).clcMoy()*getModule(i).cof;
     cof += getModule(i).cof;
    }
    return moyObt/cof;
  }

   @override
  int getUniteSize(int index) => uniteS1[index].modules.length;
}
