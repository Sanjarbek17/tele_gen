import 'dart:io';

Future<void> main() async {
  File file = File('./extra.dart');

  if (file.existsSync()) {
    print('file Exists');
    await file.writeAsString('int add(){return 10;}', mode: FileMode.write);
  } else {
    print('File does not exist');
  }
}
