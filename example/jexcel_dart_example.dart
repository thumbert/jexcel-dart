
import 'dart:html';
import 'package:jexcel_dart/jexcel_dart.dart';

spreadsheet1() {
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

  Jexcel(querySelector('#spreadsheet-1'), Options(
    data: data,
    columns: columns,
  ));
}



main() {
  spreadsheet1();

}
