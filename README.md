# background_on_back

[![pub package](https://img.shields.io/pub/v/background_on_back.svg)](https://pub.dartlang.org/packages/background_on_back)

A Flutter plugin for Android that intercepts the system back button to move the application to the background instead of exiting/closing it.

## 🚀 Features

* **Prevent App Exit:** Keeps your app alive in the background when the user presses the back button.
* **Persistent State:** Ideal for apps that need to maintain state (music players, GPS trackers, etc.) without a full restart.
* **Simple API:** Trigger backgrounding with a single line of code.

---

## 📦 Installation

Add `background_on_back` to your `pubspec.yaml` file:

```yaml
dependencies:
  background_on_back: ^latest
```

## 🛠️ Usage
In modern Flutter (3.12+), it is recommended to use the PopScope widget to handle back button events.

Implementation Example
```dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) return;
          BackgroundOnBack.pop();
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Homepage')),
          body: Center(child: Text('Hassle free solution for android BACK press')),
        ),
      );
  }
}
```

## 🤝 Contributing

Contributions are welcome!
If you find a bug or want to suggest a feature, please open an issue or submit a pull request. [[Contribute](CONTRIBUTING.md)].

## 📄 License
Distributed under the MIT License. See [[LICENSE](LICENSE)] for more information.

### Code Contributors
[![Contributors](https://contrib.rocks/image?repo=medha-labs/background_on_back)](https://github.com/medha-labs/background_on_back/graphs/contributors)

