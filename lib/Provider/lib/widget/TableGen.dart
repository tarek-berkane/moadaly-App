import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Table_widths extends TableColumnWidth {
  Table_widths(this._max, this._min);

  final double _max, _min;

  @override
  double maxIntrinsicWidth(Iterable<RenderBox> cells, double containerWidth) {
    return _max;
  }

  @override
  double minIntrinsicWidth(Iterable<RenderBox> cells, double containerWidth) {
    return _min;
  }
}
