part of 'component_cubit.dart';

@freezed
abstract class ComponentState with _$ComponentState {
  const factory ComponentState.visible({required bool visibility}) =
      _ComponentVisible;
}
