class Error {
  final int id;
  final String errorTitle;
  final String errorContent;

  Error.fromMap(dynamic object)
      : id = object['_id'],
        errorTitle = object['error_title'],
        errorContent = object['error_content'];
}
