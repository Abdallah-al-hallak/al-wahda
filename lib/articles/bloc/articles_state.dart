part of 'articles_bloc.dart';

@freezed
class ArticlesState with _$ArticlesState {
  const factory ArticlesState.initial() = _Initial;
  const factory ArticlesState.loading() = ArticlesLoading;
  const factory ArticlesState.loaded(File file) = ArticlesLoaded;
  const factory ArticlesState.listLoaded(FileList fileList) =
      ArticlesLoadedList;
  const factory ArticlesState.failure() = Failure;
}
