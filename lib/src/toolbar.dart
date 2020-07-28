@JS()
part of jexcel_dart;

@anonymous
@JS()
class ToolbarEntry {
  external factory ToolbarEntry({
    String type,
    String content,
    String k,
    List<String> v,
    ///
    void Function(dynamic, dynamic, dynamic) onclick,
  });

  external String get type;
  external set type(String value);
  external String get content;
  external set content(String value);

  external String get k;
  /// the style that will be applied to selection
  external set k(String value);

  external List<String> get v;
  /// the value of the style that will be applied to selection.  When
  /// type = 'select', you can pass in a list of possible values, e.g. font
  /// sizes.
  external set v(List<String> value);


}