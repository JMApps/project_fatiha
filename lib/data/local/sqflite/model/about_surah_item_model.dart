class AboutSurahItemModel {
  final int id;
  final String title;
  final String content;

  AboutSurahItemModel(
      {required this.id, required this.title, required this.content});

  AboutSurahItemModel.fromMap(dynamic object)
      : id = object['id'],
        title = object['title'],
        content = object['content'];
}
