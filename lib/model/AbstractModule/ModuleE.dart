

abstract class ModuleE  {
  ModuleE(this.cof,this.cred);

  double exama = -1;
  final int cof ;
  final int cred ;

  double clcMoy();

  int get_cof()=>cof;
  int get_cred()=>cred;
  double get_exama()=>exama;

  void set_exama(double examaNote){ exama= examaNote;}

}
