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

  List<dynamic> modules = [
    bases_de_donnees,
    systemes_exploitation,
    genie_logiciel,
    theorie_des_graphes,
    reseaux,
    dev_web,
    aje,
    anglais
  ];

  List<Unite> unite = [
    Unite([bases_de_donnees, systemes_exploitation, genie_logiciel]),
    Unite([theorie_des_graphes, reseaux, dev_web]),
    Unite([aje, anglais]),
  ];

   List<String> moduleName = [
    'bases\nde donnees ',
    'systemes\nexploitation ',
    'genie\nlogiciel',
    'theorie\ndes graphes',
    "reseaux",
    "dev web",
    'aje',
    'anglais'
  ];

}
