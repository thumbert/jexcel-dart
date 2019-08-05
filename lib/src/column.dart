@JS()
part of jexcel_dart;

@anonymous
@JS()
class Column {
  external factory Column({
    String title,
    num width,
    String type,
    List<String> source,
    bool multiple = false, // for multiple selection
  });


  external String get title;
  external set title(String v);
  external String get type;
  external set type(String v);
  external num get width;
  external set width(num v);
  // for autocomplete
  external List<String> get source;
  external set source(List<String> v);
  // for dropdown multiple selection
  external bool get multiple;
  external set multiple(bool v);
}

enum ColumnType {autocomplete, checkbox, dropdown, text}

//class Column2 {
//  _Column _jsColumn;
//
//  String title;
//  ColumnType columnType;
//  num width;
//
//  Column2({
//    this.title,
//    this.width,
//  }) {
//    _jsColumn = _Column(
//      title: title,
//      width: width,
//    );
//  }
//
//  Column.calendar({
//    this.title,
//    this.width,
//  }) {
//    _jsColumn = _Column(
//      title: title,
//      width: width,
//    );
//    _jsColumn.type = 'calendar';
//  }
//
//
//  Column.checkbox({
//    this.title,
//    this.width,
//  }) {
//    _jsColumn = _Column(
//      title: title,
//      width: width,
//      type: 'checkbox',
//    );
//    print('here');
//    _jsColumn.type = 'checkbox';
//  }
//
//  Column.dropdown({
//    String title,
//    num width,
//    List<String> source,
//  }) {
//    _jsColumn = _Column(
//      title: title,
//      width: width,
//
//    );
//    _jsColumn.type = 'dropdown';
//  }
//
//
//
//
//
//
//}
