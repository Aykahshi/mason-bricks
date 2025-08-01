import 'package:injectable/injectable.dart';
import '../../domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import '../services/{{feature_name.snakeCase()}}_service.dart';

@LazySingleton(as: {{feature_name.pascalCase()}}Repository)
final class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  final {{feature_name.pascalCase()}}Service service;

  {{feature_name.pascalCase()}}RepositoryImpl({
    required this.service,
  });
}
