import 'package:apparence_kit/core/data/models/user.dart';
import 'package:apparence_kit/core/data/repositories/user_repository.dart';
import 'package:apparence_kit/core/initializer/onstart_service.dart';
import 'package:apparence_kit/core/states/models/user_state.dart';
import 'package:apparence_kit/environnements.dart';
import 'package:apparence_kit/modules/authentication/repositories/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final userStateNotifierProvider =
    StateNotifierProvider<UserStateNotifier, UserState>(
  (ref) => UserStateNotifier(
    authenticationRepository: ref.read(authRepositoryProvider),
    userRepository: ref.read(userRepositoryProvider),
    mode: ref.read(environmentProvider).authenticationMode,
  ),
);

/// This enum is used to parameter the list of the authentication mode
///
/// Most of apps try to not force user to create an account to access the app
/// But you may want to force the user to be authenticated to access the app
enum AuthenticationMode {
  /// By default the user will be authenticated anonymously
  /// This means that the user can access your app without login
  /// He will be able to link his account later to an email or social login
  anonymous,

  /// The user requires to be authenticated to access the app
  /// By default the user won't have any identity
  authRequired,
}

/// This class is responsible for managing the state of the user over the app.
/// It will be used to know if the user is connected or not and to get the user
class UserStateNotifier extends StateNotifier<UserState>
    implements OnStartService {
  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
  final Logger _logger;

  /// The authentication mode of the app
  /// see [AuthenticationMode]
  final AuthenticationMode mode;

  UserStateNotifier({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
    Logger? logger,
    this.mode = AuthenticationMode.anonymous,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        _logger = logger ?? Logger(),
        super(
          const UserState(
            user: User.loading(),
          ),
        );

  @override
  Future<void> init() async {
    try {
      await _loadState();
    } catch (e, stacktrace) {
      _logger.e(e, stackTrace: stacktrace);
    }
    assert(state.user is! LoadingUserData, 'UserStateNotifier is not ready');
    // await _initDeviceRegistration();
    // _deviceRepository.onTokenUpdate(_onUpdateToken);
  }

  /// This function is called when the user click on the signin button
  /// It will load the user state and register the device to the notification service
  /// It will also load the subscription state
  Future<void> onSignin() async {
    state = const UserState(
      user: User.loading(),
    );
    await _loadState();
  }

  /// Set the user as onboarded in the database
  /// This function is called when the user has completed the onboarding
  Future<void> onOnboarded() async {
    final newUser = await _userRepository.setOnboarded(state.user);
    state = state.copyWith(user: newUser);
  }

  /// This function is called when the user click on the logout button
  /// It will unregister the device from the notification service
  /// and logout the user
  Future<void> onLogout() async {
    await _authenticationRepository.logout();
    state = const UserState(
      user: User.anonymous(),
    );
    if (mode == AuthenticationMode.anonymous) {
      await _loadAnonymousState();
    }
  }

  /// Refresh the user
  Future<void> onUpdateAvatar() async {
    await refresh();
  }

  /// Refresh the user
  Future<void> refresh() async {
    final user = await _userRepository.get(state.user.idOrThrow);

    state = state.copyWith(
      user: user ?? const User.anonymous(),
    );
  }

  // -------------------------------
  // PRIVATES
  // -------------------------------

  /// load anonymous state for the user
  Future<void> _loadAnonymousState() async {
    await _authenticationRepository.signupAnonymously();
    await Future.delayed(const Duration(seconds: 1));
    final credentials = await _authenticationRepository.get();
    final user = await _userRepository.get(credentials!.id);
    state = state.copyWith(user: user ?? User.anonymous(id: credentials.id));
  }

  /// Load the state of the user
  Future<void> _loadState() async {
    final credentials = await _authenticationRepository.get();

    if (credentials == null && mode == AuthenticationMode.anonymous) {
      _logger.i('Anonymous user mode activated, signup anonymously');
      await _loadAnonymousState();
    } else if (credentials == null && mode == AuthenticationMode.authRequired) {
      _logger.i('Authentification required, user is not connected');
      state = state.copyWith(user: const User.anonymous());
    } else if (credentials != null) {
      _logger.i('User is connected with id ${credentials.id}');
      final userId = credentials.id;

      // I like to save a User automatically when the user is authenticated
      // Using firestore you can create a trigger to do this with the same document ID as the credentials
      final user = await _userRepository.get(credentials.id);
      state = state.copyWith(
        user: user ??
            User.authenticated(
              id: userId,
              email: '',
              name: '',
              onboarded: false,
            ),
      );
    }
  }


}
