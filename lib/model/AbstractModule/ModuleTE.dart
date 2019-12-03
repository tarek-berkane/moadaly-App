
import 'ModuleE.dart';

abstract class ModuleTE  extends ModuleE {
  ModuleTE(int cof,int cred):super(cof,cred);
  double td = -1;

  double get_td()=>td;

  void set_td(double tdNote){ td= tdNote;}
}