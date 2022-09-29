extension SnakeCase on String {
  String get toSnakeCase => toLowerCase().split(" ").join("_");
}
