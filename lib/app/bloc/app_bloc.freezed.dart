// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  LogOutReq logOutReq() {
    return const LogOutReq();
  }

  AppUserChanged appUserChanged(Users user) {
    return AppUserChanged(
      user,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logOutReq,
    required TResult Function(Users user) appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logOutReq,
    TResult Function(Users user)? appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logOutReq,
    TResult Function(Users user)? appUserChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOutReq value) logOutReq,
    required TResult Function(AppUserChanged value) appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogOutReq value)? logOutReq,
    TResult Function(AppUserChanged value)? appUserChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutReq value)? logOutReq,
    TResult Function(AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class $LogOutReqCopyWith<$Res> {
  factory $LogOutReqCopyWith(LogOutReq value, $Res Function(LogOutReq) then) =
      _$LogOutReqCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogOutReqCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $LogOutReqCopyWith<$Res> {
  _$LogOutReqCopyWithImpl(LogOutReq _value, $Res Function(LogOutReq) _then)
      : super(_value, (v) => _then(v as LogOutReq));

  @override
  LogOutReq get _value => super._value as LogOutReq;
}

/// @nodoc

class _$LogOutReq implements LogOutReq {
  const _$LogOutReq();

  @override
  String toString() {
    return 'AppEvent.logOutReq()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogOutReq);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logOutReq,
    required TResult Function(Users user) appUserChanged,
  }) {
    return logOutReq();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logOutReq,
    TResult Function(Users user)? appUserChanged,
  }) {
    return logOutReq?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logOutReq,
    TResult Function(Users user)? appUserChanged,
    required TResult orElse(),
  }) {
    if (logOutReq != null) {
      return logOutReq();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOutReq value) logOutReq,
    required TResult Function(AppUserChanged value) appUserChanged,
  }) {
    return logOutReq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogOutReq value)? logOutReq,
    TResult Function(AppUserChanged value)? appUserChanged,
  }) {
    return logOutReq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutReq value)? logOutReq,
    TResult Function(AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) {
    if (logOutReq != null) {
      return logOutReq(this);
    }
    return orElse();
  }
}

abstract class LogOutReq implements AppEvent {
  const factory LogOutReq() = _$LogOutReq;
}

/// @nodoc
abstract class $AppUserChangedCopyWith<$Res> {
  factory $AppUserChangedCopyWith(
          AppUserChanged value, $Res Function(AppUserChanged) then) =
      _$AppUserChangedCopyWithImpl<$Res>;
  $Res call({Users user});
}

/// @nodoc
class _$AppUserChangedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppUserChangedCopyWith<$Res> {
  _$AppUserChangedCopyWithImpl(
      AppUserChanged _value, $Res Function(AppUserChanged) _then)
      : super(_value, (v) => _then(v as AppUserChanged));

  @override
  AppUserChanged get _value => super._value as AppUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AppUserChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Users,
    ));
  }
}

/// @nodoc

class _$AppUserChanged implements AppUserChanged {
  const _$AppUserChanged(this.user);

  @override
  final Users user;

  @override
  String toString() {
    return 'AppEvent.appUserChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUserChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AppUserChangedCopyWith<AppUserChanged> get copyWith =>
      _$AppUserChangedCopyWithImpl<AppUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logOutReq,
    required TResult Function(Users user) appUserChanged,
  }) {
    return appUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logOutReq,
    TResult Function(Users user)? appUserChanged,
  }) {
    return appUserChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logOutReq,
    TResult Function(Users user)? appUserChanged,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOutReq value) logOutReq,
    required TResult Function(AppUserChanged value) appUserChanged,
  }) {
    return appUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogOutReq value)? logOutReq,
    TResult Function(AppUserChanged value)? appUserChanged,
  }) {
    return appUserChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutReq value)? logOutReq,
    TResult Function(AppUserChanged value)? appUserChanged,
    required TResult orElse(),
  }) {
    if (appUserChanged != null) {
      return appUserChanged(this);
    }
    return orElse();
  }
}

abstract class AppUserChanged implements AppEvent {
  const factory AppUserChanged(Users user) = _$AppUserChanged;

  Users get user;
  @JsonKey(ignore: true)
  $AppUserChangedCopyWith<AppUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  Authinticated authinticated({required Users user, Session? session}) {
    return Authinticated(
      user: user,
      session: session,
    );
  }

  UnAuthinticated unAuthinticated() {
    return const UnAuthinticated();
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Users user, Session? session) authinticated,
    required TResult Function() unAuthinticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Users user, Session? session)? authinticated,
    TResult Function()? unAuthinticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Users user, Session? session)? authinticated,
    TResult Function()? unAuthinticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) authinticated,
    required TResult Function(UnAuthinticated value) unAuthinticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(UnAuthinticated value)? unAuthinticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(UnAuthinticated value)? unAuthinticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class $AuthinticatedCopyWith<$Res> {
  factory $AuthinticatedCopyWith(
          Authinticated value, $Res Function(Authinticated) then) =
      _$AuthinticatedCopyWithImpl<$Res>;
  $Res call({Users user, Session? session});
}

/// @nodoc
class _$AuthinticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AuthinticatedCopyWith<$Res> {
  _$AuthinticatedCopyWithImpl(
      Authinticated _value, $Res Function(Authinticated) _then)
      : super(_value, (v) => _then(v as Authinticated));

  @override
  Authinticated get _value => super._value as Authinticated;

  @override
  $Res call({
    Object? user = freezed,
    Object? session = freezed,
  }) {
    return _then(Authinticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Users,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session?,
    ));
  }
}

/// @nodoc

class _$Authinticated implements Authinticated {
  const _$Authinticated({required this.user, this.session});

  @override
  final Users user;
  @override
  final Session? session;

  @override
  String toString() {
    return 'AppState.authinticated(user: $user, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authinticated &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  $AuthinticatedCopyWith<Authinticated> get copyWith =>
      _$AuthinticatedCopyWithImpl<Authinticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Users user, Session? session) authinticated,
    required TResult Function() unAuthinticated,
  }) {
    return authinticated(user, session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Users user, Session? session)? authinticated,
    TResult Function()? unAuthinticated,
  }) {
    return authinticated?.call(user, session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Users user, Session? session)? authinticated,
    TResult Function()? unAuthinticated,
    required TResult orElse(),
  }) {
    if (authinticated != null) {
      return authinticated(user, session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) authinticated,
    required TResult Function(UnAuthinticated value) unAuthinticated,
  }) {
    return authinticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(UnAuthinticated value)? unAuthinticated,
  }) {
    return authinticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(UnAuthinticated value)? unAuthinticated,
    required TResult orElse(),
  }) {
    if (authinticated != null) {
      return authinticated(this);
    }
    return orElse();
  }
}

abstract class Authinticated implements AppState {
  const factory Authinticated({required Users user, Session? session}) =
      _$Authinticated;

  Users get user;
  Session? get session;
  @JsonKey(ignore: true)
  $AuthinticatedCopyWith<Authinticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnAuthinticatedCopyWith<$Res> {
  factory $UnAuthinticatedCopyWith(
          UnAuthinticated value, $Res Function(UnAuthinticated) then) =
      _$UnAuthinticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthinticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $UnAuthinticatedCopyWith<$Res> {
  _$UnAuthinticatedCopyWithImpl(
      UnAuthinticated _value, $Res Function(UnAuthinticated) _then)
      : super(_value, (v) => _then(v as UnAuthinticated));

  @override
  UnAuthinticated get _value => super._value as UnAuthinticated;
}

/// @nodoc

class _$UnAuthinticated implements UnAuthinticated {
  const _$UnAuthinticated();

  @override
  String toString() {
    return 'AppState.unAuthinticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnAuthinticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Users user, Session? session) authinticated,
    required TResult Function() unAuthinticated,
  }) {
    return unAuthinticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Users user, Session? session)? authinticated,
    TResult Function()? unAuthinticated,
  }) {
    return unAuthinticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Users user, Session? session)? authinticated,
    TResult Function()? unAuthinticated,
    required TResult orElse(),
  }) {
    if (unAuthinticated != null) {
      return unAuthinticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) authinticated,
    required TResult Function(UnAuthinticated value) unAuthinticated,
  }) {
    return unAuthinticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(UnAuthinticated value)? unAuthinticated,
  }) {
    return unAuthinticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(UnAuthinticated value)? unAuthinticated,
    required TResult orElse(),
  }) {
    if (unAuthinticated != null) {
      return unAuthinticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthinticated implements AppState {
  const factory UnAuthinticated() = _$UnAuthinticated;
}
