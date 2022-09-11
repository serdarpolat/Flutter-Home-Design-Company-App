import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScrollNotifier extends StateNotifier<bool> {
  ScrollNotifier() : super(false);

  void change(bool b) => state = b;
}

final scrollProvider = StateNotifierProvider<ScrollNotifier, bool>((ref) => ScrollNotifier());
