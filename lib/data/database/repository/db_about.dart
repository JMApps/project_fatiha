class DbAbout {
  int? id;
  String? question;
  String? answer;

  DbAbout.fromMap(dynamic object) {
    id = object['_id'];
    question = object['question'];
    answer = object['answer'];
  }
}
