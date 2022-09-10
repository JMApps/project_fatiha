class TafseerSurahItemModel {
  final int id;
  final String ayahArabic;
  final String ayahTranslation;
  final String ayahTafseer;

  TafseerSurahItemModel({
    required this.id,
    required this.ayahArabic,
    required this.ayahTranslation,
    required this.ayahTafseer,
  });

  TafseerSurahItemModel.fromMap(dynamic object)
      : id = object['id'],
        ayahArabic = object['ayah_arabic'],
        ayahTranslation = object['ayah_translation'],
        ayahTafseer = object['ayah_tafseer'];
}
