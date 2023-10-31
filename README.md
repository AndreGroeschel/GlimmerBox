# GlimmerBox - An Illustration of Software Engineering Principles

GlimmerBox is a Flutter-based mobile application that serves as an illustration of key software engineering principles. This repository contains the source code for the app and serves as a practical example of how these principles can be applied to build scalable and maintainable software.

[![codecov](https://codecov.io/gh/VonderTech/GlimmerBox/graph/badge.svg?token=XE90BDIFQA)](https://codecov.io/gh/VonderTech/GlimmerBox)
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

## About

### Purpose

GlimmerBox is not intended to be a fully-featured production app. Instead, it serves as a learning tool to demonstrate the practical application of software engineering principles. It showcases the following principles:

- **Scalability:** How to structure the app's architecture to handle growth and maintainability.
- **Clean Code:** Maintaining code quality and readability.
- **Test-Driven Development (TDD):** Writing tests to ensure reliability.
- **Dependency Injection:** Creating flexible and testable code.
- **Null Safety:** Avoiding runtime errors with proper null safety.
- **Functional Reactive Programming (FRP):** Efficient management of complex interactions and data flows.
- **Immutability:** The importance of immutability in functional reactive programming.
- **Error Handling:** Handling errors effectively with a functional approach using Either.

### App Features

GlimmerBox interacts with OpenSea's API to fetch and display NFT collections. It serves as a gallery viewer where users can explore collections and individual NFTs.

### Demo

[![Demo video](https://img.youtube.com/vi/-a-wztFEYk4/hqdefault.jpg)](https://www.youtube.com/embed/-a-wztFEYk4)

## Installation

To run GlimmerBox locally, follow these steps:

1. Clone this repository: `git clone https://github.com/VonderTech/GlimmerBox.git`
2. Navigate to the project directory: `cd glimmerbox`
3. Install dependencies: `flutter pub get`
4. Run the app: `flutter run`

## Technologies Used

- **Flutter & Dart**: Framework for cross platform development
- **get_it** and **injectable**: For dependency injection
- **bloc**: Utilized for state management
- **Dartz**: For Functional Programming in Dart
- **Dio** and **retrofit**: For network calls to interact with OpenSea's API
- **freezed**: To generate code for immutable classes
- **mocktail** and **bloc_test**: For testing
- **very_good_analysis** for linting rules
- **very_good test** for running all tests and generating a coverage report
- **very_good_coverage** to ensure 100% coverage in continuous integration
- **Codecov** for visualizing code coverage

## Contributions

Contributions to this project are welcome. If you have ideas for improvements or new features, please open an issue or create a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Special thanks to the open source community and contributors who have made this project possible.

## Contact

- For inquiries, feedback, or collaboration opportunities, please contact [André](mailto:hello@vondertech.com).

Happy coding!

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
