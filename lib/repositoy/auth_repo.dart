import 'dart:async';
import 'dart:math';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as appwrite;
import 'package:appwrite/models.dart';
import 'package:appwrite_renew/constant.dart';
import 'package:cache/cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/users.dart';

class AuthRepository {
  AuthRepository({
    required Client client,
    Account? account,
    Realtime? realtime,
    CacheClient? cache,
  })  : _client = client,
        _realtime = realtime ?? Realtime(client),
        _cache = cache ?? CacheClient(),
        _account = account ?? Account(client);

  Client _client;
  Realtime _realtime;

  Account _account;
  CacheClient _cache;
  initialize() {
    _client
            .setEndpoint(AppWriteConst.baseUrl) // Your API Endpoint
            .setProject(AppWriteConst.prohectId) // Your project ID
        ;
    _account = Account(_client);
  }

  static const userCacheKey = '__user_cache_key__';

  Stream<Users> get user {
    initialize();
    final subscription = _realtime.subscribe(['account']);
    return subscription.stream.map((event) {
      print(event.payload['current']);
      print(event);
      final user = event.payload['current']
          ? Users(
              name: event.payload['userId'],
              id: event.payload['userId'],
              email: event.payload['providerUid'],
              photo: event.payload['\$id'])
          : Users.empty;
      print(user);
      _cache.write<Users>(key: userCacheKey, value: user);

      _cache.write(key: 's', value: user.photo ?? '');
      return user;
    });
  }

  Future user2() async {
    initialize();
    try {
      final u = await _account.get();
      _cache.write(key: 'g', value: u.email);

      return u;
    } on AppwriteException catch (e) {
      print(e.message);
    }
  }

  get currentUser {
    return _cache.read(key: 'g') ?? Users(id: 'g');
  }

  get sessionId {
    return _cache.read(key: 's') ?? '';
  }

  Future logIn(String email, String password) async {
    initialize();
    try {
      final result =
          await _account.createSession(email: email, password: password);

      return result;
    } on AppwriteException catch (e) {
      print(e.message);
    }
  }

  Future logOut() async {
    initialize();
    try {
      print(sessionId);
      final result = await _account.deleteSession(sessionId: sessionId);

      return result;
    } on AppwriteException catch (e) {
      print(e.message);
    }
  }
}
