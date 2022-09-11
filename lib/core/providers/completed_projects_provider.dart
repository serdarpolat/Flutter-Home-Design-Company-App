import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompletedProjectsNotifier extends StateNotifier<int> {
  CompletedProjectsNotifier() : super(0);

  void change(int i) => state = i;
}

final completedProjectsProvider = StateNotifierProvider<CompletedProjectsNotifier, int>((ref) => CompletedProjectsNotifier());
