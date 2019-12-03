

import 'package:pro_mi_0001/model/AbstractModule/ModuleTTE.dart';

class ModuleTpTd extends ModuleTTE {
  ModuleTpTd({int cof,int cred}):super(cof,cred);

  @override
  double clcMoy() {
    if(tp==-1 ||td== -1 || exama == -1)return 0;
    return ((td+tp)/2+exama*2)/3;
  }

}