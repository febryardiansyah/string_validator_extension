# String Validator Extension

Dart extension for string validation, especially from user input.

## Demo

<img src="https://raw.githubusercontent.com/febryardiansyah/string_validator_extension/master/assets/demo.gif?raw=true" height="400em" width="225em" />

## Usage

1\. Add dependency to your package's `pubspec.yaml` file:

    dependencies:
      string_validator_extension: ^0.0.2 # change to latest version

2\. Run from the command line:

    $ pub get

Alternatively, your editor might support pub. Check the docs for your editor to learn more.

3\. Import in your Dart code:

    import 'package:string_validator_extension/extension.dart';

## Usage

Example how to use this, just added validation you want.

```dart
final isEmail = 'john@gmail.com'.isEmail();
final emailNotValid = 'john@gmail'.isEmail();
final isUrl = 'https://google.com'.isUrl();

print(isEmail); // true
print(emailNotValid); // false
print(isUrl); // true
```

## Available Extension

```dart
bool equals(comparison)
bool isEmail()
bool isURL()
bool validUsername()
bool isPhoneNumber()
bool isHexa()
bool isVector()
bool isImage()
bool isAudio()
bool isVideo()
bool isTxt()
bool isDoc()
bool isExcel()
bool isPpt()
bool isApk()
bool isPdf()
bool isHTML()
bool isBasicDateTime()
bool isBinary()
bool isMd5()
bool isSha1()
bool isSha256()
bool isIpv4()
bool isIpv5()
bool isPassportNumber()
bool isCurrency()
bool isNumericOnly()
bool isAplhabetOnly()
```

## Contribution

If you wish to contribute, fork this repository and add your extension. Create a PR & i'll check it.