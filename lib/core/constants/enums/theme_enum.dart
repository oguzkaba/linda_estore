// ignore_for_file: constant_identifier_names

enum AppThemes {
  LIGHT(name: "LIGHT"),
  DARK(name: "DARK");

  const AppThemes({required this.name});
  final String name;
}
