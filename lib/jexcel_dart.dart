@JS()
library jexcel_dart;

import 'dart:html';
import 'package:js/js.dart';

@JS("jexcel")
class Jexcel {
  external Jexcel(Element container, Options options);

  external Options get options;
  external set options(Options v);
}

@anonymous
@JS()
class Options {
  external List<dynamic> get data;
  external List<Column> get columns;
  external factory Options({List<dynamic> data, List<Column> columns});
}

@anonymous
@JS()
class Column {
  external factory Column({
    String title,
    String columnType,  // autocomplete|calendar|checkbox|dropdown|text
    num width,
  });
  external String get title;
  external set title(String v);
  external String get columnType;
  external set columnType(String v);
  external num get width;
  external set width(num v);
}


