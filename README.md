# TownSquare Activity Screen - In Real Life Task

- The task is to create a single screen from the TownSquare app
  - create the "Today's Activities" screen that allows to:
    1. View today's activities
    2. Filter activities by category
    3. Join an activity

- Required Features
  - Show at least 4 activities in the list
  - Working category filters at the top (Sports, Food, Kids, Creative)
  - Each activity card must show:
    - Time & duration
    - Title
    - Location
    - Available spots
    - Price
    - "Join" button
  - Basic animations when filtering
  - Must work on both iOS and Android
---
### Project Demo
- go to the link below to view project demo
https://markcabalona.github.io/townsquare-demo/
---
### Run the app
- If you're on vscode, you can just press F5 to run the app
- To run the app from the terminal run the command below
  - omit the fvm command if you are the using [fvm](https://fvm.app/)
```bash
fvm flutter run -d {device-id}
```
---
### Assumption/s
- Since the taks instructions is specific to the acitivity list and the interations, I focused on its development, and did not include non-related widgets/components 
#### features
 - Working search/filter feature
 - Dummy data implementation (Randomized 10k Activities)
 - Lazy loaded data (paginate data on scroll)
 - Debounce (prevents unnecessary calls to api when user is typing)
   - only request for new data once user is done typing (500ms debounce duration, can be updated easily)
#### Improvements
- With more time I would implement the join feature, and would use firebase for storage and realtime updates
- I would also focus more on other details such as the responsiveness
- I would also implement CI/CD using github actions
---
### Project Structure
- This project follows Clean architecture and a feature first approach, you can visit the website below to read more about clean architecture and feature first in details
  - [clean architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
  - [feature first](https://codewithandrea.com/articles/flutter-project-structure/#feature-first-layers-inside-features) 
- But to give you an idea the project structure would be as follows:
  - lib directory will contain the ff:
    - main.dart (entry point of the program)
    - townsquare_app.dart (the root widget of the app)
    - core directory will contain all of the shared components of the app
    - features directory will contain all the features related of the app, (in this case we only have 1 feature, the activities feature)
       - lib/features/activities (activities features)
         - /data - this will hold all implementations of repositories and data sources,
         - /domain - this will hold all feature entities and all feature repositories abstract interfaces (or contracts)
         - presentation - this will hold all pages and widgets as well as the state management for activities feature

### Other notes
- This project uses get_it for the dependency handling
  - to register repositories, datasources, cubits/blocs for statemanagement, see `/lib/core/dependencies/` directory
  - to register a new route
    - update the AppRoutes enum
    - implement BaseRoute
    - and lastly, update the `lib/core/dependencies/router/router.dart`
    ```dart
    // lib/core/dependencies/router/router.dart
    void initializeRouter() {
    GetIt.instance.registerLazySingleton(
        () => AppRouter(
        router: GoRouter(
            initialLocation: AppRoute.activities.path,
            routes: [
            ...ActivitiesRoutes().routes,
            // spread your new BaseRoutes implementation here
            // e.g 
            // ...MyNewRoute().routes,
            ],
        ),
        ),
    );
    }
    ```
- to change app color theme:
  - Implement AppColors abstract class in `lib/core/theme/colors/app_colors.dart`
- to change the app text theme:
  - Implement the AppTextStyles abstract class in `lib/core/theme/text_styles/app_text_styles.dart`