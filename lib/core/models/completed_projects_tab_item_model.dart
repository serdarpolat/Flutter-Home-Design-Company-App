class CompletedProjectsTabItemModel {
  CompletedProjectsTabItemModel(this.id, this.title);

  final int id;
  final String title;
}

List<CompletedProjectsTabItemModel> tabItems = [
  CompletedProjectsTabItemModel(0, 'Best of all time'),
  CompletedProjectsTabItemModel(1, 'Living area'),
  CompletedProjectsTabItemModel(2, 'Dining room'),
  CompletedProjectsTabItemModel(3, 'Minimal design'),
  CompletedProjectsTabItemModel(4, 'Colorfull interior'),
  CompletedProjectsTabItemModel(5, 'Tiny bedroom'),
];
