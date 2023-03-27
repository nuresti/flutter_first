import 'dart:io';

class FileHandler {
  static save({
    required String fileName,
    required String content,
  }) {
    File logFile = File(fileName);
    content = """
      created_at : ${DateTime.now()}
      barcode : FFFf
      $content
  """;
    logFile.writeAsStringSync(content);
  }
}
