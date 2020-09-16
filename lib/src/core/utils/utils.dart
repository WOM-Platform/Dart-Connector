import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';
import 'package:uuid/uuid.dart';

class Utils {
  static String generateGUID() {
    var uuid = Uuid();
    final guid = uuid.v1buffer(List(16));
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

  static encryptLongString(Encrypter encrypter, Uint8List inputBytes, int outBlockSize){

    print('inputBytes length: ${inputBytes.length}');

    final blockSize = 245;
    final blocks = (inputBytes.length / blockSize.toDouble()).ceil().toInt();
    var output = Uint8List(blocks*outBlockSize);
    var outputSize = 0;
    for(var i = 0; i< blocks;i++){
      final offset = i * blockSize;
      final blockLength = min(blockSize, inputBytes.length - offset);
      final sublist = inputBytes.sublist(offset, offset + blockLength);
      final cryptoBlock = encrypter.encryptBytes(sublist);
      output.setRange(outputSize, outputSize + cryptoBlock.bytes.length, cryptoBlock.bytes);
      outputSize += cryptoBlock.bytes.length;
    }

    print('output length before: ${output.length}');
    if (outputSize != output.length) {
      final tmp = output.sublist(0, outputSize);
      output = tmp;
    }
    print('output length: ${output.length}');
    var encoder = Base64Encoder();
    return encoder.convert(output);

    /*private fun encryptData(txt: String, publicKey: String): String {
        val encoded: String
        try {
            val publicBytes = Base64.decode(publicKey, Base64.DEFAULT)
            val keySpec = X509EncodedKeySpec(publicBytes)
            val keyFactory = KeyFactory.getInstance("RSA")
            val pubKey = keyFactory.generatePublic(keySpec)
            val cipher = Cipher.getInstance("RSA/ECB/PKCS1PADDING")
            cipher.init(Cipher.ENCRYPT_MODE, pubKey)

            val bytes = txt.toByteArray()
            val blockSize = cipher.blockSize
            val outBlockSize = cipher.getOutputSize(bytes.size)
            val blocks: Int = Math.ceil(bytes.size / blockSize.toDouble()).toInt()
            var output = ByteArray(blocks * outBlockSize)
            var outputSize = 0

            for (i in 0 until blocks) {
                val offset = i * blockSize
                val blockLength = Math.min(blockSize, bytes.size - offset)
                val cryptoBlock = cipher.doFinal(bytes, offset, blockLength)
                System.arraycopy(cryptoBlock, 0, output, outputSize, cryptoBlock.size)
                outputSize += cryptoBlock.size
            }

            if (outputSize != output.size) {
                val tmp = output.copyOfRange(0, outputSize)
                output = tmp
            }

            encoded = Base64.encodeToString(output, Base64.DEFAULT)
            return encoded

        } catch (e: Exception) {
            throw Exception(e.toString())
        }
    }*/

  }

 static int outputBlockSize (int bitSize, bool forEncryption){
    if (forEncryption) {
      return (bitSize + 7) ~/ 8;
    } else {
      return ((bitSize + 7) ~/ 8) - 1;
    }
  }
}
