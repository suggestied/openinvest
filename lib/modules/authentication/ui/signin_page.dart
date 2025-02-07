import 'package:apparence_kit/core/extensions/colors.dart';
import 'package:apparence_kit/core/theme/extensions/theme_extension.dart';
import 'package:apparence_kit/core/widgets/buttons.dart';
import 'package:apparence_kit/core/widgets/responsive_layout.dart';
import 'package:apparence_kit/core/widgets/toast.dart';
import 'package:apparence_kit/modules/authentication/providers/models/email.dart';
import 'package:apparence_kit/modules/authentication/providers/models/password.dart';
import 'package:apparence_kit/modules/authentication/providers/signin_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _formKey = GlobalKey<FormState>();

class SigninPage extends ConsumerWidget {
  final bool canDismiss;

  const SigninPage({super.key, this.canDismiss = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signinStateProvider);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: PopScope(
        canPop: canDismiss,
        child: Scaffold(
          backgroundColor: context.colors.background,
          resizeToAvoidBottomInset: false,
          body: Form(
            autovalidateMode: AutovalidateMode.disabled,
            key: _formKey,
            child: LargeLayoutContainer(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: context.colors.surface,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: context.colors.onBackground.withOpacityCpy(.05),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome back',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        key: const Key('email_input'),
                        onChanged: (value) => ref
                            .read(signinStateProvider.notifier)
                            .setEmail(value),
                        decoration: const InputDecoration(
                          hintText: 'bruce@wayne.com',
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          try {
                            state.email.validate();
                          } on EmailException catch (e) {
                            return e.message;
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        key: const Key('password_input'),
                        onChanged: (newValue) => ref
                            .read(signinStateProvider.notifier)
                            .setPassword(newValue),
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                        ),
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        validator: (value) {
                          try {
                            state.password.validate();
                          } on PasswordException catch (e) {
                            return e.message;
                          }
                          return null;
                        },
                      ),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: TextButton(
                      //     onPressed: () {
                      //       context.push('/recover_password');
                      //     },
                      //     child: const Text(
                      //       "I lost my password",
                      //       textAlign: TextAlign.right,
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        key: const Key('send_button'),
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          // hide keyboard
                          FocusScope.of(context).unfocus();
                          ref.read(signinStateProvider.notifier).signin().then(
                                // ignore: use_build_context_synchronously
                                (value) => context.go('/users'),
                                // (value) => _redirectAfterLogin(context),
                                onError: (err) => showErrorToast(
                                  context: context,
                                  title: 'Error',
                                  text:
                                      'Wrong email, password or this email is not registered',
                                ),
                              );
                        },
                        child: state.when(
                          (_, __) => const Text('Sign in'),
                          sending: (_, __) => const ButtonLoading(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
