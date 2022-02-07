class About {
  final int id;
  final String question;
  final String answer;

  About.fromMap(dynamic object)
      : id = object['_id'],
        question = object['question'],
        answer = object['answer'];
}
