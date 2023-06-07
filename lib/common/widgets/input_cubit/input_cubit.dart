import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_bank/l10n/generated/l10n.dart';

part 'input_cubit.freezed.dart';

class InputCubit<T> extends Cubit<StateInputCubit> {
  InputCubit({
    List<String> Function(T?)? validator,
    bool? autovalidate,
  }) : super(const StateInputCubit.validated()) {
    _validator = validator ?? _defaultValidator;
    _autovalidate = autovalidate ?? false;
  }

  late List<String> Function(T?) _validator;

  // ignore: avoid_setters_without_getters
  set validator(List<String> Function(T?) func) {
    _validator = func;
  }

  late bool _autovalidate;
  bool isAutovalidationOn = false;

  bool validate(T? value) {
    isAutovalidationOn = true;
    final errorMessages = _validator(value);
    if (errorMessages.isNotEmpty) {
      emit(StateInputCubit.error(errorMessages));
    } else {
      emit(StateInputCubit.validated(key: UniqueKey()));
    }
    return errorMessages.isEmpty;
  }

  void autovalidate(T? value) {
    if (_autovalidate && isAutovalidationOn) {
      validate(value);
    }
  }

  List<String> Function(T? value) get _defaultValidator {
    if (T == String) {
      return _defaultValidatorString;
    } else {
      return _defaultValidatorAny;
    }
  }

  List<String> _defaultValidatorAny(T? value) {
    final output = <String>[];
    if (value == null) output.add(S.current.inputErrorGeneral);
    return output;
  }

  List<String> _defaultValidatorString(dynamic value) {
    final output = <String>[];
    if (value == null || value.isEmpty) output.add(S.current.inputErrorGeneral);
    return output;
  }

  void rebuild() {
    emit(state.copyWith(key: UniqueKey()));
  }

  void reset() {
    emit(StateInputCubit.validated(key: UniqueKey()));
  }
}

@freezed
class StateInputCubit with _$StateInputCubit {
  const factory StateInputCubit.validated({Key? key}) = _Validated;

  const factory StateInputCubit.error(List<String> messages, {Key? key}) = _Error;
}
