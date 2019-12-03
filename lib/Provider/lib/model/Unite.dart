import 'package:pro_mi_0001/model/AbstractModule/ModuleE.dart';

class Unite<T extends ModuleE> {
  Unite(this.modules);

  final List<T> modules;

  int _sumOfCof = 0;
  int _sumOfCred = 0 ;
  double _sumOfMoy = 0;


  double moyenneUnite() {
    _sumOfCred = 0;
    _sumOfCof = 0;
    _sumOfMoy = 0;

    for (var module in modules) {
      if(module.clcMoy()<0){
        _sumOfMoy = 0 ;
        break;
      }
      _sumOfMoy += module.clcMoy() * module.get_cof();
      _sumOfCof += module.get_cof();
      _sumOfCred += module.get_cred();

    }
    return _sumOfMoy/_sumOfCof;

  }

  int credUnite(){
    if(moyenneUnite()>=10){
      return _sumOfCred;
    }
    _sumOfCred = 0;
    for (var module in modules) {
        if(module.clcMoy()>=10)
          _sumOfCred += module.get_cred();
      }
    return _sumOfCred;
    }

}