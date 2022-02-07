class Tajweed {
  final int id;
  final String ayah;
  final String tajweedTitle;
  final String tajweedContent;

  Tajweed.fromMap(dynamic object)
      : id = object['_id'],
        ayah = object['ayah'],
        tajweedTitle = object['tajweed_title'],
        tajweedContent = object['tajweed_content'];
}
