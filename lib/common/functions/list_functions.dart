class ListFunctions {

  Map<String, dynamic> clearNullValues(Map<String, dynamic> map) {

    return map..removeWhere((key, value) => value == null);
  }
}