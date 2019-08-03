import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableGen extends StatelessWidget {
  TableGen(this._table_row);
  double width_a, width_b;
 
  List<TableRow> _table_row;

  @override
  Widget build(BuildContext context) {
    Size sizes = MediaQuery.of(context).size;
    clc_width(sizes.width);
    return Table(textBaseline: TextBaseline.alphabetic,
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(width: 1),
      columnWidths: {
        0: Table_widths(width_a, 30),
        1: Table_widths(width_a, 30),
        2: Table_widths(width_b, 15),
        3: Table_widths(width_b, 15),
        4: Table_widths(width_b, 15),
        5: Table_widths(width_b, 30),
        6: Table_widths(width_b, 30),
        7: Table_widths(width_b, 15),
      },
      children: [
        initTableRow(),
        for (var i in _table_row) i,
      ],
    );
  }

  TableRow initTableRow() => TableRow(children: [
        text_fit('Modules'),
        text_fit('  Note  '),
        text_fit('Coef'),
        text_fit('Cred'),
        text_fit('Moyenne\nModule'),
        text_fit('Moyenne\nUnités'),
        text_fit('   Cred    \n  Unités'),
        text_fit(' Unités'),
      ]);

  Widget text_fit(String text) => FittedBox(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(vertical: 6.5),
          child: Text(text),
        ),
      );

  void clc_width(double width) {
    double widthtmp = width / 8;
    width_a = widthtmp + 10;
    width_b = ((widthtmp * 3) - 30) / 3;
  }

 
}

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
