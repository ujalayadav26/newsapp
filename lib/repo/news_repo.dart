import 'dart:convert';
import 'package:http/http.dart' as http ;
import 'package:newscreen1/model/news_model.dart';

class NewsRepo {
    Future<NewsModel> getAllNewsArticle () async{
     try{
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/everything?q=tesla&from=2024-01-24&sortBy=publishedAt&apiKey=f9edc4c04e6f41cf863ad7baef610d63'));
      final Map<String, dynamic> jsonresponse = jsonDecode(response.body);

      NewsModel newmodel = NewsModel.fromJson(jsonresponse);
      print(newmodel.articles![8].title);
      return newmodel;
    }catch(e){
       print(e.toString());
       throw(e);

     }
  }


}
