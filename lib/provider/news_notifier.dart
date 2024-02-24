import 'package:newscreen1/model/news_model.dart';
import 'package:newscreen1/provider/news_state.dart';
import 'package:newscreen1/repo/news_repo.dart';
import 'package:riverpod/riverpod.dart';

final newsProvider = StateNotifierProvider<NewsNotifier,NewsState >(
      (ref) => NewsNotifier(),
);



class NewsNotifier extends StateNotifier<NewsState> {
  NewsRepo newsRepo = NewsRepo();

  NewsNotifier() : super(NewsState.intial()){
    getNewsArticle();
  }

  void getNewsArticle() async {
    state = state.copyWith(newsStatus: NewsStatus.loading);

    try {
      NewsModel newsModel = await newsRepo.getAllNewsArticle();
      state = state.copyWith(newsStatus: NewsStatus.loaded, newsModel: newsModel);
    } catch (e) {
     state = state.copyWith(newsStatus: NewsStatus.error, error: e.toString());
    }
  }
}
