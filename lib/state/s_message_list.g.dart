// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's_message_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SMessageListNotifier)
const sMessageListProvider = SMessageListNotifierProvider._();

final class SMessageListNotifierProvider
    extends $NotifierProvider<SMessageListNotifier, List<Message>> {
  const SMessageListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sMessageListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sMessageListNotifierHash();

  @$internal
  @override
  SMessageListNotifier create() => SMessageListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Message> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Message>>(value),
    );
  }
}

String _$sMessageListNotifierHash() =>
    r'e959bffa870bd9ee16866429d3b45a80dba18338';

abstract class _$SMessageListNotifier extends $Notifier<List<Message>> {
  List<Message> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Message>, List<Message>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Message>, List<Message>>,
              List<Message>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
