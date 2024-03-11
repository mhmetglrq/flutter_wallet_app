enum ImageEnum {
  profile("profile");

  final String value;

  const ImageEnum(this.value);

  String get svgPath => "assets/svg/$value.png";
  String get imagePath => "assets/images/$value.png";
}
