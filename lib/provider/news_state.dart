import '../model/news_model.dart';

enum NewsStatus{
  initial,
  loading,
  loaded,
  error,

}

class NewsState {
  NewsStatus? newsStatus;
  NewsModel? newsModel;
  String? error;

  NewsState({
   required  this.newsStatus,
    this.newsModel,
    this.error,
  });
  ///
  factory NewsState.intial(){
    return NewsState(newsStatus: NewsStatus.initial,newsModel: null,error: "");
  }
  ///
  NewsState copyWith({
    NewsStatus? newsStatus,
    NewsModel? newsModel,
    String? error,
  }) {
    return NewsState(
      newsStatus: newsStatus ?? this.newsStatus,
      newsModel: newsModel ?? this.newsModel,
      error: error ?? this.error,
    );
  }
}
