@JS()
library jexcel_dart;

import 'dart:html';
import 'package:js/js.dart';

part 'src/column.dart';
part 'src/row.dart';

@JS('jexcel')
class Jexcel {
  external Jexcel(Element container, Options options);

  external Options get options;
  external set options(Options v);
  /// don't display row numbers
  external void hideIndex();

}

@anonymous
@JS()
class Options {
  external List<dynamic> get data;
  external List<Column> get columns;
  external List<Row> get rows;
  external int get minSpareRows;
  external set minSpareRows(int v);
  external int get minSpareCols;
  external set minSpareCols(int v);
  external List<int> get minDimensions;
  external set minDimensions(List<int> v);
  external bool get allowExport;
  external set allowExport(bool v);
  external bool get columnSorting;
  external set columnSorting(bool v);
  external bool get columnDrag;
  external set columnDrag(bool v);
  external bool get columnResize;
  external set columnResize(bool v);
  external bool get rowResize;
  external set rowResize(bool v);
  external bool get rowDrag;
  external set rowDrag(bool v);
  external bool get editable;
  external set editable(bool v);
  external bool get allowInsertRow;
  external set allowInsertRow(bool v);
  external bool get allowInsertColumn;
  external set allowInsertColumn(bool v);
  external bool get allowDeleteRow;
  external set allowDeleteRow(bool v);
  external bool get allowDeleteColumn;
  external set allowDeleteColumn(bool v);
  external bool get allowRenameColumn;
  external set allowRenameColumn(bool v);
  external bool get allowComments;
  external set allowComments(bool v);
  external bool get tableOverflow;
  external set tableOverflow(bool v);
  external String get tableHeight;
  external set tableHeight(String v);
  external String get tableWidth;
  external set tableWidth(String v);
  external bool get wordWrap;
  external set wordWrap(bool v);


  external factory Options({
    List<dynamic> data,
    List<Row> rows,
    List<Column> columns,
    /// Spare rows and columns
    int minSpareRows = 0,
    int minSpareCols = 0,
    /// Minimal table dimensions
    List<int> minDimensions = const [0,0],
    /// Allow exporting
    bool allowExport = true,
    /// Allow column sorting
    bool columnSorting = true,
    /// Allow column dragging
    bool columnDrag = false,
    /// Allow column resizing
    bool columnResize = true,
    /// Allow row resizing
    bool rowResize = false,
    /// Allow row dragging
    bool rowDrag = true,
    /// Allow table editing
    bool editable = true,
    /// Allow row insertion
    bool allowInsertRow = true,
    /// Allow column insertion
    bool allowInsertColumn = true,
    /// Allow row deletion
    bool allowDeleteRow = true,
    /// Allow column deletion
    bool allowDeleteColumn = true,
    /// Allow column rename
    bool allowRenameColumn = true,
    /// Allow comments
    bool allowComments = false,
    /// if you want scrollbars
    bool tableOverflow = false,
    /// the height of the table
    String tableHeight = '300px',
    /// the width of the table, for example '500px'
    String tableWidth,
    /// Global wrap
    bool wordWrap = false,

  });
}



