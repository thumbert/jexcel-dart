
import 'dart:html';
import 'package:jexcel_dart/jexcel_dart.dart';

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

  var table = Jexcel(querySelector('#spreadsheet-1'), Options(
    data: data,
    columns: columns,
  ));
  table.hideIndex();
}

void spreadsheet2() {
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

  var table = Jexcel(querySelector('#spreadsheet-1'), Options(
    data: data,
    columns: columns,
  ));
  table.hideIndex();
}

void main() {
//  spreadsheet1();
  spreadsheet2();
}
