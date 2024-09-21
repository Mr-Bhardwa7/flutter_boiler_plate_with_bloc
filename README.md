# Flutter App Biolerplate With BLOC

![Static Badge](https://img.shields.io/badge/Build-Passing-brightgreen) ![Static Badge](https://img.shields.io/badge/Version-0.0.2-brightgreen) ![Static Badge](https://img.shields.io/badge/State%20Management-BLOC-yellow) ![Static Badge](https://img.shields.io/badge/Route%20Manager-ROUTEFLY-blue) ![Static Badge](https://img.shields.io/badge/Dark%20Theme-Light%20Theme%20-white) ![Static Badge](https://img.shields.io/badge/Support-Multilingual%20-violet) ![Static Badge](https://img.shields.io/badge/Dart%203-Compatible%20-green)

A project structure is design on flutter with the bloc state management tool

**Project Structure**

```
project
└─── lib
	└─── app
		└─── ...
		  |   app_page.dart
          |   app_widget.dart
    └─── store
        └─── bloc
            └─── theme
            |   theme_bloc.dart
            |   theme.event.dart
            |   theme.state.dart
        └─── cubit
            └─── localization
            |    localization_cubit.dart
            |    localization_state.dart
    └─── l10n
         |   app_ar.arb
         |   app_en.arb
         |   l10n.dart
    │   main.dart
	│   routes.g.dart
    │   theme.dart
│   README.md
│   ...
```

**How to use this biolerplate**

1. Fork the repository **"flutter_boiler_plate_with_bloc"**.
2. Create a new repository
   - Under **"Repository template"** used your fork **"flutter_boiler_plate_with_bloc"** repository as a template
   - Fill the below field and create repository
3. Clone your repository and change package name.
   - Change the package name under the pubspec.yaml and all the pages which import file with package name and under AndroidManifest file.
4. You are ready to start development.

**Implemented Features**

1. Light and Dark theme management
2. Multiliungal
   - English and Arabic lanuage implemented for example
3. LHS and RHS supported
4. Bloc and Cubit state management example
5. Routing machinism like NEXT JS (folder based route generation)

**Routing**
To generate the new routes in the project run this command `dart run routefly`
Check routing document on [routefly pub](https://pub.dev/packages/routefly "routefly pub")

### Showcase

|                                                      Screenshot 1                                                      |                                                       Screenshot 2                                                       |                                                       Screenshot 3                                                       |
| :--------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------: |
| ![Async-bounce](https://github.com/Mr-Bhardwa7/flutter_boiler_plate_with_bloc/blob/master/public/image-2.png?raw=true) | ![Delayed-bounce](https://github.com/Mr-Bhardwa7/flutter_boiler_plate_with_bloc/blob/master/public/image-3.png?raw=true) | ![Delayed-bounce](https://github.com/Mr-Bhardwa7/flutter_boiler_plate_with_bloc/blob/master/public/image-1.png?raw=true) |
