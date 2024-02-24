class ShoeData{
  String? _imagePath;
  String? _tag;
  String? _name;
  String _price;

  ShoeData(this._imagePath, this._tag, this._name, this._price);

  String get price => _price;

  set price(String value) {
    _price = value;
  }

  String? get name => _name;

  String? get tag => _tag;

  String? get imagePath => _imagePath;
}