import 'dart:io';

void main() async {
  final result = await Process.run('dart', ['./writes.dart']);
  final result2 = await Process.run('dart', ['./runs.dart']);
  print(result.stdout);
  print(result.stderr);
  print(result2.stdout);
}
