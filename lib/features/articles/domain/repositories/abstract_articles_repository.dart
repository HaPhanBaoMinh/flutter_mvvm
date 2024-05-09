import 'package:dartz/dartz.dart';
import 'package:mvvm_example/core/network/error/failures.dart';
import 'package:mvvm_example/features/articles/domain/models/article_model.dart';
import 'package:mvvm_example/features/articles/domain/models/articles_params.dart';

abstract class AbstractArticlesRepository {
  // Gent Ny Times Articles
  Future<Either<Failure, List<ArticleModel>>> getArticles(
      ArticlesParams params);
}
