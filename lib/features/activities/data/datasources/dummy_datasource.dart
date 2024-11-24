import 'dart:math';

import 'package:townsquare/core/enums/tags.dart';
import 'package:townsquare/features/activities/data/datasources/activities_datasource.dart';
import 'package:townsquare/features/activities/domain/entities/activity.dart';
import 'package:townsquare/features/activities/domain/entities/location.dart';
import 'package:townsquare/features/activities/domain/entities/participant.dart';

class DummyDatasource implements ActivitiesDatasource {
  DummyDatasource() {
    activitiesDatabase = generateRandomActivities(10000);
  }

  late final List<Activity> activitiesDatabase;

  @override
  Future<List<Activity>> fetchActivities({
    int offset = 0,
    int limit = 10,
  }) async {
    await Future.delayed(
      Duration(
        milliseconds: Random().nextInt(1500) + 500,
      ),
    );
    return activitiesDatabase.skip(offset).take(limit).toList();
  }

  @override
  Future<List<Activity>> searchActivities({
    String? keyword,
    List<String>? categories,
    int offset = 0,
    int limit = 10,
  }) async {
    await Future.delayed(
      Duration(
        milliseconds: Random().nextInt(1500) + 500,
      ),
    );
    final filteredActivities = activitiesDatabase.where(
      (element) {
        final searchables = [
          ...element.categories,
          ...element.tags.map(
            (e) => e.name,
          ),
          element.name,
          element.location.address,
          element.price.toString(),
        ];
        return searchables.any(
          (element) {
            final searches = [...?categories, keyword].nonNulls;
            for (final search in searches) {
              if (element.contains(search)) {
                return true;
              }
            }
            return false;
          },
        );
      },
    );

    return filteredActivities.skip(offset).take(limit).toList();
  }

  String generateRandomId() {
    const characters = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return List.generate(
        8, (index) => characters[random.nextInt(characters.length)]).join();
  }

  DateTime generateRandomDate() {
    final random = Random();
    final randomDate = DateTime.now().add(Duration(days: random.nextInt(365)));
    return randomDate;
  }

  Location generateRandomLocation() {
    const cities = ['New York', 'London', 'Paris', 'Tokyo', 'Berlin'];

    final random = Random();
    return Location(address: cities[random.nextInt(cities.length)]);
  }

  String generateRandomName() {
    const activityNames = [
      'Yoga Class',
      'Music Concert',
      'Tech Conference',
      'Food Festival',
      'Art Exhibition'
    ];
    final random = Random();
    return activityNames[random.nextInt(activityNames.length)];
  }

  double generateRandomPrice() {
    final random = Random();
    return (random.nextDouble() * 100).toDouble();
  }

  List<Participant> generateRandomParticipants(int maxParticipants) {
    final participantsList = <Participant>[];
    final random = Random();
    final numParticipants = random.nextInt(maxParticipants + 1);

    for (int i = 0; i < numParticipants; i++) {
      participantsList.add(
        Participant(
          id: generateRandomId(),
          name: 'Participant ${i + 1}',
        ),
      );
    }

    return participantsList;
  }

  List<Tags> generateRandomTags() {
    final random = Random();
    final tags = <Tags>{};
    final randomLength = random.nextInt(Tags.values.length);

    for (var i = 0; i < randomLength; i++) {
      tags.add(Tags.values[random.nextInt(Tags.values.length)]);
    }

    return tags.toList();
  }

  List<String> generateRandomCategories() {
    const categoryList = [
      'Sports',
      'Food',
      'Kids',
      'Creative',
      'Popular',
      'Calm',
    ];
    final random = Random();
    final categories = <String>{};
    final randomLength = random.nextInt(categoryList.length);

    for (var i = 0; i < randomLength; i++) {
      categories.add(categoryList[random.nextInt(categoryList.length)]);
    }

    return categories.toList();
  }

  List<Activity> generateRandomActivities(int count) {
    final random = Random();
    return List.generate(count, (index) {
      final startDate = generateRandomDate();
      final endDate = startDate.add(Duration(
          hours: random.nextInt(8) + 1)); // Event duration between 1 to 8 hours

      final maxParticipants = random.nextInt(100) + 1;

      return Activity(
        id: generateRandomId(),
        startDate: startDate,
        endDate: endDate,
        name: generateRandomName(),
        location: generateRandomLocation(),
        maxParticipants: maxParticipants, // max participants between 1 and 100
        participants: generateRandomParticipants(maxParticipants),
        tags: generateRandomTags(),
        categories: generateRandomCategories(),
        price: generateRandomPrice(),
      );
    });
  }
}
