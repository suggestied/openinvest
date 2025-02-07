import 'package:apparence_kit/core/data/api/subscription_api.dart';
import 'package:apparence_kit/core/data/api/user_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_stats_provider.g.dart';

@riverpod
Future<int> fetchTotalUsers(Ref ref) async {
  return ref.read(userApiProvider).totalUsers();
}

@riverpod
Future<int> fetchTotalSubscriptions(Ref ref) async {
  return ref.read(subscriptionApiProvider).totalSubscriptions();
}