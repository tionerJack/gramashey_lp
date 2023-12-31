import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'app/index.dart';

Future<void> main() async {
  runApp(const MyApp());
  html.document.getElementById('centered')!.remove();
}
