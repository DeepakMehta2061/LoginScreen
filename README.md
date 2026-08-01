# LoginScreen

A Flutter login flow built with Material Design. The app opens on a clean sign-in screen, validates the email or phone and password fields, shows a loading indicator during login, and navigates to a home screen after a successful sign-in.

## Features

- Material app with the debug banner disabled
- Login screen with a blue `Login Page` app bar
- Centered login card with rounded corners and a light blue background
- Email or phone number text field
- Password text field with show/hide visibility control
- Login button with validation and loading state
- Empty email or phone validation
- Empty password and minimum 6-character password validation
- Forgot password prompt
- Successful login navigation to the home screen
- Home screen greeting using the entered email or phone value
- Widget test coverage for the main login UI
- Flutter project structure for Android, iOS, web, Linux, macOS, and Windows

## Project Structure

```text
lib/
  main.dart          # App entry point and login screen UI
  home_page.dart     # Home screen shown after successful login
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

The app opens directly to the login page. Users can enter an email or phone number, type a password, toggle password visibility with the eye icon, and press the login button.

When the form is invalid, inline messages show what needs to be fixed. When the form is valid, the login button displays a spinner for a short simulated delay before replacing the login screen with the home screen.

## Home Screen

After a successful login, the app navigates to `HomePage` and displays a greeting with the entered email or phone value:

```text
Hello user@example.com!
```

## Built With

- Flutter
- Dart
