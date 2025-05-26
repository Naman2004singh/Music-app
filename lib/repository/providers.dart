import 'package:flutter_riverpod/flutter_riverpod.dart';

// navigation provider of navigation bar
final navigationProvider = StateProvider<int>((ref) => 0);

//selected service provider to store the selected music service
final selectedServiceProvider = StateProvider<String?>((ref) => null);