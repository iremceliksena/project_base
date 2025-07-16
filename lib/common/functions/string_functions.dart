class StringFunctions {
  /// Removes last char from a string variable, returns a string variable
  /// if given string is "" or empty, returns ""
  String removeLastChar(String str) {
    if(str.isEmpty) return ""; 
    if(str == "") return ""; 

    str = str.substring(0, str.length - 1); 

    return str; 
  }
}