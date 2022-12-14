extension AssetsExtension on String {
  String get toSVG => 'assets/svg/$this.svg';
  String get toPNG => 'assets/images/$this.png';
  String get appIcon => 'app_icon'.toPNG;
  String get toJSON => 'assets/jsons/$this.json';
  String get toLottie => 'assets/lotties/$this.json';
}
