# LoginScreen

A Flutter login screen app built with Material Design. The project focuses on a clean sign-in interface with email or phone input, password entry, basic validation, and a password visibility toggle.

## Features

- Material app with the debug banner disabled
- App bar titled `Login Page`
- Centered login card with rounded corners and a light background
- Email or phone number text field
- Password text field with show/hide visibility control
- Login button with basic validation
- Empty email validation
- Empty password and minimum 6-character password validation
- Forgot password prompt
- Widget test coverage for the main login UI
- Flutter project structure for Android, iOS, web, Linux, macOS, and Windows

## Project Structure

```text
lib/
  main.dart          # Main app and login screen UI
test/
  widget_test.dart   # Widget test for login screen content and interaction
android/             # Android platform files
ios/                 # iOS platform files
web/                 # Web platform files
linux/               # Linux platform files
macos/               # macOS platform files
windows/             # Windows platform files
```

## Requirements

- Flutter SDK
- Dart SDK included with Flutter

Check your local Flutter setup:

```bash
flutter doctor
```

## Getting Started

Install dependencies:

```bash
flutter pub get
```

Run the app:

```bash
flutter run
```

Run tests:

```bash
flutter test
```

## Main Screen

The app opens directly to the login page. Users can enter an email or phone number, type a password, toggle password visibility with the eye icon, and press the login button to trigger validation messages when required fields are missing or the password is too short.

## Built With

- Flutter
- Dart
