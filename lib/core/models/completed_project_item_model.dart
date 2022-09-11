class CompletedProjectItemModel {
  CompletedProjectItemModel(this.id, this.imgPath, this.title, this.budget, this.timespan, this.status, this.size, this.location);

  final int id;
  final String imgPath;
  final String title;
  final String budget;
  final String timespan;
  final String status;
  final String size;
  final String location;
}

List<CompletedProjectItemModel> completedProjects = [
  CompletedProjectItemModel(
    0,
    'https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    'Harvard Square Residence',
    'Confidential',
    '2022-2023',
    'Completed',
    '23000 m',
    'NY, USA',
  ),
  CompletedProjectItemModel(
    1,
    'https://images.unsplash.com/photo-1615875605825-5eb9bb5d52ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80',
    'Modern Meadow Residence',
    'Confidential',
    '2022-2023',
    'Completed',
    '29500 m',
    'LA, USA',
  ),
  CompletedProjectItemModel(
    2,
    'https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    'Brooklyn Townhouse',
    '\$40K',
    '2022-2023',
    'Completed',
    '19000 m',
    'NY, USA',
  ),
];
