extension Capitalize on String {
  String get capitalizeFirst => "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  String get capitalize => split(" ").map((word) => word.capitalizeFirst).join(" ");
}
