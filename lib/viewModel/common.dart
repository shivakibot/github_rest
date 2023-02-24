import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appThemeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);
final editingProvider = StateProvider<bool>((ref) => false);
final searchProvider = StateProvider<String>((ref) => '');
final editProvider = StateProvider<String>((ref) => '');
// final pageProvider = StateProvider<int>((ref) => 1);
// final selectedProvider = StateProvider<int>((ref) => 0);