import 'dart:async';
import 'package:process_run/shell.dart';

Future main() async {
  // This works on Windows/Linux/Mac

  var shell = Shell();

  await shell.run('''

# Display some text
echo Hello

# Display dart version
dart --version

# Display pub version
pub --version

  ''');

  await shell.run('flutter pub get  giffy_dialog');

  shell = shell.popd();
}