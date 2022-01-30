import 'package:project_fatiha/domain/entities/about.dart';

abstract class AboutRepository {
  Future<About> aboutModel();
}