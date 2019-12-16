import 'package:pro_mi_0001/Provider/base_model.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleExama.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTd.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTpTd.dart';
import 'package:pro_mi_0001/model/Unite.dart';

class ProviderMi2S3 extends BaseModel {
  static ModuleTpTd architecture_des_oredinateurs = ModuleTpTd(cof: 3, cred: 5);
  static ModuleTpTd algorithmique = ModuleTpTd(cof: 3, cred: 6);


  static ModuleTpTd system_info = ModuleTpTd(cof: 3, cred: 5);
  static ModuleTd theorie_des_graphes = ModuleTd(cof: 2, cred: 4);
  
  static ModuleTd methodes_numeriques = ModuleTd(cof: 2, cred: 4);
  static ModuleTd logique_mathematique = ModuleTd(cof: 2, cred: 4);



  static ModuleExama langue_etrangere = ModuleExama(cof: 1, cred: 2);

  List<dynamic> modules = [
    architecture_des_oredinateurs,
    algorithmique,
    system_info,
    theorie_des_graphes,
    methodes_numeriques,
    logique_mathematique,
    langue_etrangere
  ];

  List<Unite> unite = [
    Unite([architecture_des_oredinateurs, algorithmique]),
    Unite([system_info,theorie_des_graphes]),
    Unite([methodes_numeriques,logique_mathematique]),
    Unite([langue_etrangere]),
  ];

  List<String> moduleName = [
    'Architecture\ndes ordinateurs ',
    'Algorithmique et\nstructure\nde données 3',
    'Systèmes\nd\'information ',
    'Théorie\ndes graphes ',
    ' Méthodes\nnumériques ',
    'Logique\nmathématique ',
    'langue\netrangere'
  ];

}
