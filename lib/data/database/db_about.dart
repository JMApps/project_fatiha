class DbAbout {
  final int id;
  final String question;
  final String answer;

  DbAbout.fromMap(dynamic object)
      : id = object['_id'],
        question = object['question'],
        answer = object['answer'];
}
