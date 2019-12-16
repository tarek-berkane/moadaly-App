import 'package:pro_mi_0001/Provider/base_model.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleExama.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTd.dart';
import 'package:pro_mi_0001/model/ModulesMi1/ModuleTpTd.dart';
import 'package:pro_mi_0001/model/Unite.dart';

class ProviderMi2S4 extends BaseModel {

  static ModuleTpTd theorie_des_langages = ModuleTpTd(cof: 2, cred: 5);
  static ModuleTpTd systemes_exploitation = ModuleTpTd(cof: 3, cred: 5);

  static ModuleTpTd bases_de_donnees = ModuleTpTd(cof: 3, cred: 5);
  static ModuleTpTd reseaux = ModuleTpTd(cof: 3, cred:5);

  static ModuleTd poo = ModuleTd(cof: 2, cred: 4);
  static ModuleTd dev_web = ModuleTd(cof: 2, cred: 4);


  static ModuleExama langue_etrangere = ModuleExama(cof: 1, cred: 2);

  List<dynamic> modules = [
    theorie_des_langages,
    systemes_exploitation,
    bases_de_donnees,
    reseaux,
    poo,
    dev_web,
    langue_etrangere
  ];

  List<Unite> unite = [
    Unite([theorie_des_langages,systemes_exploitation]),
    Unite([bases_de_donnees, reseaux]),
    Unite([poo, dev_web]),
    Unite([langue_etrangere]),
  ];

   List<String> moduleName = [
    'Théorie\ndes langages',
    'Système\nd\'exploitation 1',
    'Bases\nde données ',
    'Réseaux',
    "Poo",
    'dev Web',
    'Langue\nétrangère '
  ];

}
