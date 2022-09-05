import 'package:flutter_test/flutter_test.dart';

import 'package:string_validator_extension/string_validator_extension.dart';

void main() {
  test('comparison test', () {
    final success = 'John'.equals('John');
    final failure = 'John Doe'.equals('John');

    expect(success, true);
    expect(failure, false);
  });

  test('is email test', () {
    final valid = 'febryardiansyah@mail.com'.isEmail();
    final notValid = 'febry@'.isEmail();

    expect(valid, true);
    expect(notValid, false);
  });

  test('is url test', () {
    final valid = 'https://flutter.dev'.isURL();
    final notValid = 'http://flutter.'.isURL();

    expect(valid, true);
    expect(notValid, false);
  });

  test('valid username test', () {
    final valid = 'febry_ardiansyah24'.validUsername();
    final notValid = 'f'.validUsername();

    expect(valid, true);
    expect(notValid, false);
  });

  test('is phone number test', () {
    final valid = '+628585555'.isPhoneNumber();
    final notValid = '77777'.isPhoneNumber();

    expect(valid, true);
    expect(notValid, false);
  });

  test('is hexadecimal test', () {
    final valid = '012'.isHexa();
    final notValid = '10'.isHexa();

    expect(valid, true);
    expect(notValid, false);
  });

  test('is vector test', () {
    final valid = 'picture.svg'.isVector();
    final notValid = 'picture.png'.isVector();

    expect(valid, true);
    expect(notValid, false);
  });

  test('is valid image test', () {
    final valid = 'picture.png'.isImage();
    final notValid = 'picture'.isImage();

    expect(valid, true);
    expect(notValid, false);
  });
  
  test('is binary test', () {
    final valid = '1'.isBinary();
    final notValid = '8'.isBinary();

    expect(valid, true);
    expect(notValid, false);
  });

  test('is currency test', () {
    final valid = 'Rp50000'.isCurrency();
    final notValid = 'Lima'.isCurrency();

    expect(valid, true);
    expect(notValid, false);
  });

  test('is numeric test', () {
    final valid = '999'.isNumericOnly();
    final notValid = 'Rp50000'.isNumericOnly();

    expect(valid, true);
    expect(notValid, false);
  });
}
