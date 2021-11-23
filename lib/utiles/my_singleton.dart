class MySingleton {
  static final MySingleton _singleton = MySingleton._internal();
  String userId = "";
  String deviceToken = "";

  factory MySingleton() {
    return _singleton;
  }
  MySingleton._internal();
  static MySingleton get shared => _singleton;
}
