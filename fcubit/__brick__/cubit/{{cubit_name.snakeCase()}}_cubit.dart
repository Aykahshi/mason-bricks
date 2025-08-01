import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{cubit_name.snakeCase()}}_state.dart';
part '{{cubit_name.snakeCase()}}_cubit.freezed.dart';

@injectable
final class {{cubit_name.pascalCase()}}Cubit extends Cubit<{{bloc_name.pascalCase()}}Event, {{cubit_name.pascalCase()}}State> {
  {{cubit_name.pascalCase()}}Cubit() : super(const {{cubit_name.pascalCase()}}State());

   // TODO: Implement cubit methods
}
