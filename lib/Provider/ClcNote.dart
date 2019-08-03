class ClcNote {

  
  dynamic sum_of_num(List<dynamic> numD) {
    var sum = 0;
    for (int i = 0; i < numD.length; i++) sum += numD[i];
    return sum;
  }



  double there_note(double tp, double td, double exam) =>
      ((tp + td) / 2 + exam * 2) / 3;



  double tow_note(double tp_or_td, double exam) =>
      (tp_or_td  + exam * 2) / 3;



  double total_note(List<double> note,  coef) {
    int total_cof = sum_of_num(coef);
    double total_note=0;
    for (int i = 0; i < note.length; i++) total_note += (note[i] * coef[i]);
    return total_note / total_cof;
  }
}
