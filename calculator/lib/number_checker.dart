bool isNumeric(String str) {
  try {
    // ignore: unused_local_variable
    double x = double.parse(str);
    return true;
  } catch (e) {
    return false;
  }
}
