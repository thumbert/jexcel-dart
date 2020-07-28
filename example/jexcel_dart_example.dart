import 'dart:html';
import 'package:jexcel_dart/jexcel_dart.dart';
import 'package:js/js.dart';

/// Simple spreadsheet
void spreadsheet1() {
  var data = [
    ['Mazda', 2001, 2000],
    ['Pegeout', 2010, 5000],
    ['Honda Fit', 2009, 3000],
    ['Honda CRV', 2010, 6000],
  ];

  var columns = [
    Column(title: 'Model', width: 300),
    Column(title: 'Price', width: 80),
    Column(title: 'Model', width: 100),
  ];

  var table = Jexcel(
      querySelector('#spreadsheet-1'),
      Options(
        data: data,
        columns: columns,
      ));
  table.hideIndex();
}

/// Spreadsheet with toolbar and example of onclick
void spreadsheet2() async {
  var data = [
    ['2020-01', 50],
    ['2020-02', 50.3],
    ['2020-03', 52],
    ['2020-04', 55],
  ];

  var columns = [
    Column(title: 'Month', width: 100, type: 'text'),
    Column(title: 'MW', width: 80, type: 'numeric'),
  ];

  var table = Jexcel(
      querySelector('#spreadsheet-1'),
      Options(
        data: data,
        columns: columns,
        toolbar: [
          ToolbarEntry(type: 'i', content: 'undo'),
          ToolbarEntry(type: 'i', content: 'redo'),
          ToolbarEntry(type: 'i', content: 'close'),
          ToolbarEntry(
              type: 'i',
              content: 'save',
              onclick: allowInterop((a, b, c) => print(data))),
          ToolbarEntry(
              type: 'select', k: 'font-family', v: ['Arial', 'Verdana']),
          ToolbarEntry(
              type: 'select', k: 'font-size', v: ['9px', '14px', '20px']),
        ],
      ));

  /// Wait a second, and set new data
  await Future.delayed(Duration(seconds: 4));
  table.setData([
    ['2020-01', 1],
    ['2020-02', 1],
    ['2020-03', 1],
    ['2020-04', 1],
  ]);

  /// Wait a second, and set new data
  await Future.delayed(Duration(seconds: 4));
  table.setColumnData(0, ['2020-09', '2020-10', '2020-11', '2020-12']);



}

/// Customizations:  in jexcel.css
///
/// .jexcel_content::-webkit-scrollbar {
///    width: 10px;
///    height: 10px;
///}

void main() {
//  spreadsheet1();
  spreadsheet2();
}
