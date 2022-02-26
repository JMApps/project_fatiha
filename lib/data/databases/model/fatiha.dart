class Fatiha {
  final int id;
  final String ayah;
  final String ayahTranslation;

  Fatiha.fromMap(dynamic object)
      : id = object['_id'],
        ayah = object['ayah_arabic'],
        ayahTranslation = object['ayah_translation'];
}
