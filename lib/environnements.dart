// ignore_for_file: avoid_redundant_argument_values

import 'package:apparence_kit/core/states/user_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'environnements.freezed.dart';

const _kEnvironmentInput = String.fromEnvironment('ENV', defaultValue: 'dev');

const _kBackendUrl = String.fromEnvironment(
  'BACKEND_URL',
  // this URL is a fake backend to let you test the app without having to setup your own
  // it replies with fake data and is not meant to be used in production
  // please replace it with your own backend URL
  defaultValue: '',
);

const kSupabaseTOken = String.fromEnvironment(
  'SUPABASE_TOKEN',
  // this URL is a fake backend to let you test the app without having to setup your own
  // it replies with fake data and is not meant to be used in production
  // please replace it with your own backend URL
  defaultValue: '', 
);

final environmentProvider = Provider<Environment>(
  (ref) => Environment.fromEnv(),
);

/// The environment of the app.
/// - dev: Development environment
/// - prod: Production environment
/// Feel free to add more environments with your custom properties if needed.
@freezed
sealed class Environment with _$Environment {
  const factory Environment.dev({
    // Name of the environment (dev, prod, ...) just for debug purpose
    required String name,

    /// Url of your backend API / or Supabase URL / or Firebase Functions region
    required String backendUrl,

    required List<String> notificationsTopicChannels,

    /// The default authentication mode of the app (anonymous or authRequired)
    /// See [AuthenticationMode]
    required AuthenticationMode authenticationMode,
  }) = DevEnvironment;

  const factory Environment.prod({
    required String name,

    /// Url of your backend API / or Supabase URL / or Firebase Functions region
    required String backendUrl,

    required List<String> notificationsTopicChannels,

    /// Sentry is an error reporting tool that will help you to track errors in production
    /// You can get it from https://sentry.io
    /// by default sentry will read the SENTRY_DSN environment variable except for web
    /// you can also setup it directly here. Prefer using environment variables
    String? sentryDsn,

    /// The default authentication mode of the app (anonymous or authRequired)
    /// See [AuthenticationMode]
    required AuthenticationMode authenticationMode,
  }) = ProdEnvironment;

  const Environment._();

  factory Environment.fromEnv() {
    switch (_kEnvironmentInput) {
      case 'dev':
        return const Environment.dev(
          name: 'dev',
          backendUrl: _kBackendUrl,
          authenticationMode: AuthenticationMode.authRequired,
          notificationsTopicChannels: ['test', 'general', 'general-en', 'general-fr']
        );
      case 'prod':
        return const Environment.prod(
          name: 'production',
          backendUrl: _kBackendUrl,
          sentryDsn: String.fromEnvironment('SENTRY_DSN'),
          authenticationMode: AuthenticationMode.authRequired,
          notificationsTopicChannels: ['general', 'general-en', 'general-fr', 'test']
        );
      default:
        throw Exception('Unknown environment $_kEnvironmentInput');
    }
  }
}

/// This callback is called when the app is launched.
typedef OnEnvCallback = Future<void> Function();
