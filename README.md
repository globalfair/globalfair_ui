# GlobalFair UI

GlobalFair UI is an UI library for developing cross-platform apps using Flutter.

## Directory Structure
```
lib/
|- apis - contains clients to call required APIs
|- configs - contains app wide configuration, for ex. routes, theme, dependency providers etc.
|- managers - state management logic code for each screen
|- notifiers - contains data and models which will notify UI if any change occurs
|- repositories - contains classes to communicate with storage layer on the device
|- screens - contains different widgets visible on the app as a whole screen
|- services - contains logical code to hide the apis, repositories layer from the manager, notifier layer
|- widgets - contains custom widget for reuse purpose
|- models - contains all the DTOs be it api request, response or other models 
main.dart - entry point of the application
```

## How to begin

Clone the repository and open it via Android Studio.
Go to project root and execute the following command in console to perform setup:

```
// set flutter version specifically v3.3.5
// use FVM https://fvm.app/docs/guides/global_version

//To get all the dependencies
flutter pub get 

//To build generated files *.g.dart files
flutter packages pub run build_runner build
```
