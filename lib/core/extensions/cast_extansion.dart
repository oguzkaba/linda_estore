extension DynamicCasting on dynamic {
  T? toCastModel<T>() => this is T ? this as T : null;
}
