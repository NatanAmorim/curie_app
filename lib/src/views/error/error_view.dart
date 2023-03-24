import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Default error page implementation for Material.
class ErrorView extends StatelessWidget {
  const ErrorView({
    this.errorDetails,
    this.error,
    Key? key,
  })  : assert(
          errorDetails != null || error != null,
          'At least one parameter must be non-null',
        ),
        super(key: key);

  /// The FlutterErrorDetails to be displayed.
  final FlutterErrorDetails? errorDetails;

  /// The exception to be displayed.
  final Exception? error;

  @override
  Widget build(BuildContext context) {
    // TODO translate
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.error,
          title: Text(
            'Error',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onError,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                errorDetails == null
                    ? 'Page not found'
                    : 'An unknown error has occurred.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 20),
              SelectableText(
                errorDetails == null
                    ? error?.toString() ?? 'Page not found'
                    : errorDetails!.exceptionAsString(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () => context.go('/'),
                child: const Text('Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
