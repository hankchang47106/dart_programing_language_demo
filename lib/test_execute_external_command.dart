import 'dart:io';

void main(List<String> args) async {
  var executable = 'ls';
  if (Platform.isWindows) {
    executable = 'dir';
  }

  final arguments = <String>[];
  print('List Files and Directories');
  print('============');
  final process = await Process.start(executable, arguments, runInShell: true);
  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);
  final exitCode = await process.exitCode;
  print('============');
  print('Exit code: $exitCode');
}