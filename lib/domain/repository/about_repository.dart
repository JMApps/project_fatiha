import 'package:project_fatiha/domain/model/about_model.dart';

abstract class AboutRepository {
  Future<AboutModel> aboutModel({
    required String question,
    required String answer,
  });
}