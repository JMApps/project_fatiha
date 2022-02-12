class Words {
  final int id;
  final String word;
  final String translate;
  final String nameAudio;

  Words.fromMap(dynamic object)
      : id = object['_id'],
        word = object['word'],
        translate = object['translate'],
        nameAudio = object['name_audio'];
}
