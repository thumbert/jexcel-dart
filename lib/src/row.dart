@JS()
part of jexcel_dart;

@anonymous
@JS()
class Row {
  external factory Row({
    String title,
    String
    columnType = 'text', // autocomplete|calendar|checkbox|color|dropdown|image|numeric|text
    num width,
  });

//  factory Column.text({
//    String title,
//    num width,
//  }) {
//    return Column(
//      title: title,
//      columnType: 'text',
//      width: width,
//    );
//  }

  external String get title;
  external set title(String v);
  external String get columnType;
  external set columnType(String v);
  external num get width;
  external set width(num v);
}
