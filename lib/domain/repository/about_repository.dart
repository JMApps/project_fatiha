import 'package:project_fatiha/domain/entities/about_model.dart';

abstract class AboutRepository {
  Future<AboutModel> aboutModel();
}