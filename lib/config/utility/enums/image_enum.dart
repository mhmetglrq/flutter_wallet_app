enum ImageEnum {
  profile("profile"),
  keySquare("key_square"),
  eye("eye"),
  eyeSlash("eye_slash"),
  ;

  final String value;

  const ImageEnum(this.value);

  String get svgPath => "assets/svg/$value.svg";
  String get imagePath => "assets/images/$value.png";
}
