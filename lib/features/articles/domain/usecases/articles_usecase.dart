import 'package:dartz/dartz.dart';
import 'package:mvvm_example/core/network/error/failures.dart';
import 'package:mvvm_example/core/utils/usecases/usecase.dart';
import 'package:mvvm_example/features/articles/domain/models/article_model.dart';
import 'package:mvvm_example/features/articles/domain/models/articles_params.dart';
import 'package:mvvm_example/features/articles/domain/repositories/abstract_articles_repository.dart';

class ArticlesUseCase extends UseCase<List<ArticleModel>, ArticlesParams> {
  final AbstractArticlesRepository repository;

  ArticlesUseCase(this.repository);

  @override
  Future<Either<Failure, List<ArticleModel>>> call(
      ArticlesParams params) async {
    final result = await repository.getArticles(params);
    return result.fold((l) {
      return Left(l);
    }, (r) async {
      return Right(r);
    });
  }
}

