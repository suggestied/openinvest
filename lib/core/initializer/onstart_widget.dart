import 'package:apparence_kit/core/initializer/onstart_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Initializer extends ConsumerStatefulWidget {
  final Widget onReady;
  final Widget onLoading;
  final List<ProviderListenable<OnStartService>> services;

  const Initializer({
    super.key,
    required this.onReady,
    required this.onLoading,
    this.services = const [],
  });

  // TODO : create a spaslhscreen widget + a splashscreen factory

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InitializerState();
}

class _InitializerState extends ConsumerState<Initializer> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      final onStartHandler = ref.read(onStartProvider.notifier);
      for (final service in widget.services) {
        final serviceInstance = ref.read(service);
        await serviceInstance.init();
        onStartHandler.register(serviceInstance); // useless now
      }
      onStartHandler.onEnded();
    });
  }

  @override
  Widget build(BuildContext context) {
    final onStartState = ref.watch(onStartProvider);
    return onStartState.when(
      loading: () => widget.onLoading,
      ready: () => widget.onReady,
    );
  }
}
