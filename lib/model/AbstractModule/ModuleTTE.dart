
import 'ModuleTE.dart';

abstract class ModuleTTE extends ModuleTE {
  ModuleTTE(int cof,int cred):super(cof,cred);
  double tp = -1;

  double get_tp()=>tp;

  void set_tp(double tpNote){ tp = tpNote;}
}