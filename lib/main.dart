import 'package:clone_line/chat_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


Future<void> main() async {
  await dotenv.load(fileName: '.env');
  final app = ProviderScope(child: Placeholder());
  runApp(app);
}
