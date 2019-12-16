import 'package:pro_mi_0001/Provider/base_model.dart';
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

  List<dynamic> modules = [
    analyse1,
    algebre1,
    algo1,
    strm1,
    terminologieS,
    langueEtrangere,
    physique1
  ];

  List<Unite> unite = [
    Unite([analyse1, algebre1]),
    Unite([algo1, strm1]),
    Unite([terminologieS, langueEtrangere]),
    Unite([physique1]),
  ];

  List<String> moduleName = [
    'Analyse 1 ',
    'Algebre 1',
    'Algorithmiques \net structure \nde données',
    'Structure \nMachine 1',
    'Terminologie \nScient',
    'Langue \nEtrangere',
    'Physique1'
  ];

}
