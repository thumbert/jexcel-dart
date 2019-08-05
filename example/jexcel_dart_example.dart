
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

/// multiple choices and autocomplete options
spreadsheet2() {
  var data = [
    ['US', 'Wholemeal', true, '2019-02-12'],
    ['UK', 'Breakfast Cereals', true, '2019-03-01'],
    ['CA', 'Grains', false, '2018-11-10'],
    ['BR', 'Pasta', true, '2019-01-12'],
  ];


  var columns = [
    Column(title: 'Product Origin', width: 300, type: 'dropdown',
      source: ['US', 'UK', 'CA', 'BR'], multiple: true),
    Column(title: 'Product', width: 200),
    Column(title: 'Stock', width: 70, type:'checkbox'),
    Column(title: 'Available', width: 100, type:'calendar'),
  ];

  Jexcel(querySelector('#spreadsheet-2'), Options(
    data: data,
    columns: columns,
    minDimensions: [10,5],
  ));
}


main() {
  spreadsheet1();
  spreadsheet2();
}
