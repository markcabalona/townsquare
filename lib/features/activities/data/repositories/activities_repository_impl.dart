import 'package:dartz/dartz.dart';
import 'package:townsquare/core/errors/exceptions/app_exception.dart';
import 'package:townsquare/core/errors/failures/app_failure.dart';
import 'package:townsquare/features/activities/data/datasources/activities_datasource.dart';
import 'package:townsquare/features/activities/domain/entities/activity.dart';
import 'package:townsquare/features/activities/domain/entities/activity_search_params.dart';
import 'package:townsquare/features/activities/domain/repositories/activities_repository.dart';

class ActivitiesRepositoryImpl implements ActivitiesRepository {
  final ActivitiesDatasource _datasource;
  ActivitiesRepositoryImpl({
    required ActivitiesDatasource datasource,
  }) : _datasource = datasource;
  @override
  Future<Either<AppFailure, List<Activity>>> fetchActivities({
    int offset = 0,
    int limit = 10,
  }) async {
    try {
      final response = await _datasource.fetchActivities(
        offset: offset,
        limit: limit,
      );
      return Right(response);
    } on AppException catch (e) {
      // TODO: do something with the exception
      return Left(AppFailure(
        body: e.body,
      ));
    } catch (e) {
      return const Left(AppFailure<String>(
        body: 'Something went wrong.',
      ));
    }
  }

  @override
  Future<Either<AppFailure, List<Activity>>> searchActivities({
    required ActivitySearchParams searchParameter,
    int offset = 0,
    int limit = 10,
  }) async {
    try {
      final response = await _datasource.searchActivities(
        keyword: searchParameter.keyword,
        categories: searchParameter.categories,
        offset: offset,
        limit: limit,
      );
      return Right(response);
    } on AppException catch (e) {
      // TODO: do something with the exception
      return Left(AppFailure(
        body: e.body,
      ));
    } catch (e) {
      return const Left(AppFailure<String>(
        body: 'Something went wrong.',
      ));
    }
  }
}
