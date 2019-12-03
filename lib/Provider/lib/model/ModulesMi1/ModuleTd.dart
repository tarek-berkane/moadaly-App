
import 'package:pro_mi_0001/model/AbstractModule/ModuleTE.dart';

class ModuleTd extends ModuleTE{
  ModuleTd({int cof,int cred}):super(cof,cred);

  @override
  double clcMoy() {
    if(td == -1 || exama == -1 )return 0 ;
    return ((td*0.4) + exama*0.6);
  }

}


class ModuleTd2 extends ModuleTE{
  ModuleTd2({int cof,int cred}):super(cof,cred);

  @override
  double clcMoy() {
    if(td == -1 || exama == -1 )return 0 ;
    return (td+ exama*2)/3;
  }

}
