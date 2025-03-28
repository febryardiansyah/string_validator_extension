part '_regex_collection.dart';

extension StringExt on String {
  /// check string if equal to comparison, it return true or false
  bool equals(String comparison) => this == comparison;

  /// check if string is valid email
  bool isEmail() => _email.hasMatch(toLowerCase());

  /// check if the string is a URL
  bool isURL() => _url.hasMatch(this);

  /// username validation
  /// Requires minimum 3 character
  /// Allowing "_" and "." in middle of name
  bool validUsername() => _username.hasMatch(this);

  /// is phone number valid
  /// Must started by either, "0", "+", "+XX <X between 2 to 4 digit>", "(+XX <X between 2 to 3 digit>)"
  /// Can add whitespace separating digit with "+" or "(+XX)"
  /// Example: 05555555555, +555 5555555555, (+123) 5555555555, (555) 5555555555, +5555 5555555555
  bool isPhoneNumber() => _phone.hasMatch(this);

  /// check if string is hexa
  bool isHexa() => _hexadecimal.hasMatch(this);

  /// check if string is valid vector
  /// example: image.svg
  bool isVector() => _svg.hasMatch(this);

  /// check if string is valid image
  /// example: pic.png, pic.jpg, pic.gif
  bool isImage() => _image.hasMatch(this);

  /// check if string is valid audio
  /// example: music.mp3, muisc.wav
  bool isAudio() => _audio.hasMatch(this);

  /// check if string is valid video
  /// example: video.mp4, video.3gp
  bool isVideo() => _video.hasMatch(this);

  /// check if string is txt
  bool isTxt() => _txt.hasMatch(this);

  /// check if string is doc
  bool isDoc() => _doc.hasMatch(this);

  /// check if string is excel
  bool isExcel() => _excel.hasMatch(this);

  /// check if string is ppt
  bool isPpt() => _ppt.hasMatch(this);

  /// check if string is apk
  bool isApk() => _apk.hasMatch(this);

  /// check if string is pdf
  bool isPdf() => _pdf.hasMatch(this);

  /// check if string is html
  bool isHTML() => _html.hasMatch(this);

  /// Unformatted date time (UTC and Iso8601)
  /// Example: 2020-04-27 08:14:39.977, 2020-04-27T08:14:39.977, 2020-04-27 01:14:39.977Z
  bool isBasicDateTime() => _basicDateTime.hasMatch(this);

  /// check if string is binary
  /// only consist 1 & 0
  bool isBinary() => _binary.hasMatch(this);

  /// check if string is md5
  bool isMd5() => _md5.hasMatch(this);

  /// check if string is sha1
  bool isSha1() => _sha1.hasMatch(this);

  /// check if string is sha256
  bool isSha256() => _sha256.hasMatch(this);

  /// check if string is ipv4
  bool isIpv4() => _ipv4.hasMatch(this);

  /// check if string is ipv5
  bool isIpv5() => _ipv5.hasMatch(this);

  /// check if string is passport number
  bool isPassportNumber() => _passport.hasMatch(this);

  /// check if string is national currency
  bool isCurrency() => _currency.hasMatch(this);

  /// check if string is numeric
  bool isNumericOnly() => _numericOnly.hasMatch(this);

  /// check if string is alphabet
  bool isAplhabetOnly() => _alphabetOnly.hasMatch(this);
}
