import 'package:appwrite/models.dart';
import 'package:appwrite_renew/repositoy/articles_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'articles_event.dart';
part 'articles_state.dart';
part 'articles_bloc.freezed.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final ArticelesRepo repo;
  ArticlesBloc(this.repo) : super(const _Initial()) {
    on<ArticlesSubscription>(_getArticles);
    on<ArticlesSubscriptionF>(_getArticles2);
  }
  Future<void> _getArticles(
      ArticlesSubscription event, Emitter<ArticlesState> emit) async {
    emit(const ArticlesState.loading());
    await emit.forEach<File>(
      repo.getArticles(),
      onData: (data) => ArticlesState.loaded(data),
    );
  }

  Future<void> _getArticles2(
      ArticlesSubscriptionF event, Emitter<ArticlesState> emit) async {
    emit(const ArticlesState.loading());
    await emit.forEach<FileList>(
      Stream.fromFuture(repo.getFiles()),
      onData: (data) => ArticlesState.listLoaded(data),
      onError: (_, __) => const ArticlesState.failure(),
    );
  }
}
