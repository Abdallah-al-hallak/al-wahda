part of 'articles_bloc.dart';

@freezed
class ArticlesEvent with _$ArticlesEvent {
  const factory ArticlesEvent.articlesSub() = ArticlesSubscription;
  const factory ArticlesEvent.articlesSubF() = ArticlesSubscriptionF;
}
