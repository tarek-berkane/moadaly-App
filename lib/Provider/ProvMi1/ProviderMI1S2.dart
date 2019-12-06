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

  List<dynamic> modules = [
    analyse2,
    algebre2,
    algo2,
    strm2,
    proba,
    opm,
    tic,
    physique2
  ];

  List<Unite> unite = [
    Unite([analyse2, algebre2]),
    Unite([algo2, strm2]),
    Unite([proba, opm, tic]),
    Unite([physique2]),
  ];

   List<String> moduleName = [
    'Analyse 2',
    'Algebre 2',
    'Algorithmiques \net structure \nde données 2',
    'Structure \nMachine 2',
    'Intrduction \nProba',
    "OPM",
    "TIC",
    'Physique 2'
  ];

}
