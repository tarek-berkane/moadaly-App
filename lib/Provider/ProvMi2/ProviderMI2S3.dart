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

  List<dynamic> modules = [
    architecture_des_oredinateurs,
    algorithmique,
    logic_matehmatique,
    poo,
    system_info,
    theorie_des_lngages,
    langue_etrangere
  ];

  List<Unite> unite = [
    Unite([architecture_des_oredinateurs, algorithmique, logic_matehmatique]),
    Unite([poo, system_info,theorie_des_lngages]),
    Unite([langue_etrangere]),
  ];

  List<String> moduleName = [
    'Architecture',
    'algorithmique',
    'Logique\nmath',
    'POO',
    'system\ninfo',
    'theorie\ndes\nlngages',
    'langue\netrangere'
  ];

}
