import 'package:apparence_kit/core/data/entities/user_entity.dart';

import 'package:apparence_kit/environnements.dart';
import 'package:apparence_kit/modules/authentication/api/authentication_api_interface.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

final authenticationApiProvider = Provider<AuthenticationApi>(
  (ref) => SupabaseAuthenticationApi(
    client: Supabase.instance.client,
    environment: ref.watch(environmentProvider),
  ),
);

class SupabaseAuthenticationApi implements AuthenticationApi {
  final SupabaseClient client;
  final Environment environment;

  SupabaseAuthenticationApi({
    required this.client,
    required this.environment,
  });

  @override
  Future<void> init() async {}

  @override
  Future<void> recoverPassword(String email) {
    return client.auth.resetPasswordForEmail(email);
  }

  Future<Credentials?> get() async {
    final user = client.auth.currentUser;
    if (user == null) {
      return null;
    }
    return Credentials(id: user.id, token: '');
  }

  @override
  Future<Credentials> signup(String email, String password) async {
    return client.auth
        .signUp(
      email: email,
      password: password,
    )
        .then(
      (value) => Credentials(
        id: value.user!.id,
        token: value.session?.accessToken ?? '',
      ),
      onError: (error) {
        Logger().e("Error while signup: $error");
        Logger().e('''
==============================================================
💡 Please check you enabled email authentication in Supabase 
  (Supabase dashboard > Authentication > Providers > Email (enable it))
  -> disable Confirm email as you are on mobile. You don't want a user to leave the app to confirm email.
Note: wait a minute after enabling before trying again. It takes a bit of time to propagate.
Second note: Ensure you installed database schema and policies : https://apparencekit.dev/docs/start/supabase-setup/
==============================================================
                ''');
        return error;
      },
    );
  }

  @override
  Future<Credentials> signin(String email, String password) {
    return client.auth
        .signInWithPassword(
          email: email,
          password: password,
        )
        .then(
          (value) => Credentials(
            id: value.user!.id,
            token: value.session?.accessToken ?? '',
          ),
        );
  }

  @override
  Future<Credentials> signinAnonymously() {
    return client.auth.signInAnonymously().then(
      (value) => Credentials(
        id: value.user!.id,
        token: value.session?.accessToken ?? '',
      ),
      onError: (error) {
        Logger().e("Error while signing in anonymously: $error");
        Logger().e('''
==============================================================
💡 Please check you enabled anonymous sign-in in Supabase 
  (Supabase dashboard > project settings > Authentication > Allow anonymous sign-in (don't enable captcha)
Note: wait a minute after enabling anonymous sign-in before trying again. It takes a bit of time to propagate.
==============================================================
                ''');
        return error;
      },
    );
  }

  @override
  Future<Credentials> signinWithApple() async {
    throw UnimplementedError();
  }

  @override
  Future<Credentials> signinWithFacebook() {
    // TODO: implement signinWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Credentials> signinWithGoogle() async {
    throw UnimplementedError();
  }

  @override
  Future<Credentials> signinWithGooglePlay() {
    // TODO: implement signinWithGooglePlay
    throw UnimplementedError();
  }

  @override
  Future<void> signout() {
    return client.auth.signOut();
  }
}
