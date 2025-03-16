# Flutter Assignment

A comprehensive Flutter application showcasing various mini-apps and UI implementations.

## Project Overview

This project serves as a collection of Flutter application examples, demonstrating different UI patterns, widgets, and functionalities. It includes several mini-applications accessible from a central home screen.

## Mini Applications

- **I Am Rich App**: Simple UI demonstration app
- **I Am Poor App**: Alternative version of the I Am Rich concept
- **Mi Card App**: Digital business card implementation
- **Dice App**: Interactive dice rolling simulation
- **Magic Ball App**: Fortune telling application
- **Xylophone App**: Musical instrument simulation with audio playback
- **Quizzler App**: Interactive quiz application
- **Destini App**: Interactive storytelling app with branching narratives
- **BMI Calculator**: Body Mass Index calculator with input and result screens
- **Clima App**: Weather application using location data and API integration

## Getting Started

### Prerequisites

- Flutter SDK: ^3.7.0
- Dart SDK: ^3.7.0

### Installation

1. Clone this repository
2. Run `flutter pub get` to install dependencies
3. Connect a device or use an emulator
4. Run `flutter run` to launch the application

## Project Structure

The project follows a feature-based structure with screens organized by functionality:

```
lib/
  ├── components/        # Reusable UI components
  ├── screens/           # Application screens organized by feature
  │   ├── bmi_app/       # BMI Calculator screens
  │   │   ├── input_screen.dart
  │   │   └── result_screen.dart
  │   ├── clima_app/     # Weather application screens
  │   │   ├── loading_screen.dart
  │   │   ├── location_screen.dart
  │   │   └── city_screen.dart
  │   ├── destini_screen.dart
  │   ├── dice_screen.dart
  │   ├── home_screen.dart
  │   ├── i_am_rich_screen.dart
  │   ├── i_am_poor_screen.dart
  │   ├── magic_ball_screen.dart
  │   ├── mi_card_screen.dart
  │   ├── quizzler_screen.dart
  │   └── xylophone_screen.dart
  ├── services/          # Service classes
  │   ├── location.dart
  │   └── weather.dart
  └── main.dart          # Application entry point
```

## Dependencies

- `audioplayers`: ^6.4.0 - For playing audio in the Xylophone app
- `rflutter_alert`: ^2.0.7 - For displaying alerts in various apps
- `font_awesome_flutter`: ^10.8.0 - For enhanced icon support
- `geolocator`: ^13.0.2 - For accessing device location in the Clima app
- `http`: ^1.3.0 - For making API requests in the Clima app
- `cupertino_icons`: ^1.0.8 - For iOS style icons

## Assets

The project includes various assets:
- **Images**: Located in the assets/images/ directory
- **Audio**: Located in the assets/audio/ directory for the Xylophone app
- **Fonts**: Custom fonts for typography enhancement

## Features

- Navigation using named routes
- Interactive UI elements
- Audio playback
- State management demonstrations
- Responsive layouts
- Location services integration
- API integration for weather data
