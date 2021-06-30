import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';
import 'package:uuid/uuid.dart';

class Utils {
  static String generateGUID() {
    var uuid = Uuid();
    final guid =
        uuid.v1buffer(List.generate(16, (index) => Random().nextInt(16)));
    return Base64Encoder().convert(guid);
  }

  static Future<String> loadKey(String path) async {
    final file = File(path);
    return await file.readAsString();
  }

  static String decryptAES(String encryptedString, String keyString) {
    try {
      var decoder = Base64Decoder();
      final bytes = decoder.convert(encryptedString);
      final k = Key.fromBase64(keyString);
      final iv = IV(bytes.sublist(0, 16));
      final encrypter = Encrypter(AES(k, mode: AESMode.cbc));
      final encrypted = Encrypted(bytes.sublist(16));
      final decryptedString = encrypter.decrypt(encrypted, iv: iv);
      return decryptedString;
    } catch (ex) {
      rethrow;
    }
  }

  /// Generates a random salt of [length] bytes from a cryptographically secure random number generator.
  ///
  /// Each element of this list is a byte.
  static Uint8List generate(int length) {
    var buffer = Uint8List(length);
    var rng = Random.secure();
    for (var i = 0; i < length; i++) {
      buffer[i] = rng.nextInt(256);
    }
    return buffer;
  }

  /// Generates a random salt of [length] bytes from a cryptographically secure random number generator and encodes it to Base64.
  ///
  /// [length] is the number of bytes generated, not the [length] of the base64 encoded string returned. Decoding
  /// the base64 encoded string will yield [length] number of bytes.
  static String generateAsBase64String(int length) {
    var encoder = Base64Encoder();
    return encoder.convert(generate(length));
  }

  static String encryptLongInput(
      Encrypter? encrypter, Uint8List inputBytes, int outBlockSize) {
    final blockSize = 501;
    final blocks = (inputBytes.length / blockSize.toDouble()).ceil().toInt();
    var output = Uint8List(blocks * outBlockSize);
    var outputSize = 0;
    for (var i = 0; i < blocks; i++) {
      final offset = i * blockSize;
      final blockLength = min(blockSize, inputBytes.length - offset);
      final sublist = inputBytes.sublist(offset, offset + blockLength);
      final cryptoBlock = encrypter!.encryptBytes(sublist);
      output.setRange(
          outputSize, outputSize + cryptoBlock.bytes.length, cryptoBlock.bytes);
      outputSize += cryptoBlock.bytes.length;
    }
    if (outputSize != output.length) {
      final tmp = output.sublist(0, outputSize);
      output = tmp;
    }
    var encoder = Base64Encoder();
    return encoder.convert(output);
  }

  static String decryptLongInput(
      Encrypter? encrypter, Uint8List inputBytes, int outBlockSize) {
    final blockSize = 512;
    final blocks = (inputBytes.length / blockSize.toDouble()).ceil().toInt();
    var output = Uint8List(blocks * outBlockSize);
    var outputSize = 0;
    for (var i = 0; i < blocks; i++) {
      final offset = i * blockSize;
      final blockLength = min(blockSize, inputBytes.length - offset);
      final sublist = inputBytes.sublist(offset, offset + blockLength);
      final cryptoBlock = encrypter!.decryptBytes(Encrypted(sublist));
      output.setRange(outputSize, outputSize + cryptoBlock.length, cryptoBlock);
      outputSize += cryptoBlock.length;
    }
    if (outputSize != output.length) {
      final tmp = output.sublist(0, outputSize);
      output = tmp;
    }
    return utf8.decode(output);
  }

  static int outputBlockSize(int bitSize, bool forEncryption) {
    if (forEncryption) {
      return (bitSize + 7) ~/ 8;
    } else {
      return ((bitSize + 7) ~/ 8) - 1;
    }
  }
}
