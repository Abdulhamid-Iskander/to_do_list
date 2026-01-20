# 📝 Flutter Provider To-Do App

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![State Management](https://img.shields.io/badge/State%20Management-Provider-7957d5?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)

A clean, efficient, and reactive Task Management application built with **Flutter**. This project serves as a practical demonstration of state management using the **Provider** package, adhering to clean architecture principles and separation of concerns.


---

## ✨ Key Features

* **Create:** Add new tasks dynamically using a modal dialog.
* **Read:** View a real-time list of tasks.
* **Update:** Toggle task completion status instantly using Checkboxes.
* **Delete:** Remove tasks with a single tap.
* **Reactive UI:** The interface updates automatically when data changes without rebuilding the entire widget tree.

---

## 🛠️ Tech Stack & Architecture

This project is built using **Flutter** and follows a simplified **Clean Architecture** approach.

### 🏗️ State Management: Provider
We use the **Provider** pattern to manage the app's state efficiently. Here is how the logic flows:

1.  **`ChangeNotifier` (The Source):**
    The `TaskProvider` class holds the list of tasks and business logic (add, remove, toggle). It notifies listeners whenever the data changes.

2.  **`ChangeNotifierProvider` (The Injector):**
    Initialized at the root of the app (`main.dart`) to make the state accessible throughout the widget tree.

3.  **`Consumer` (The Listener):**
    Used in the `HomeScreen` to rebuild *only* the specific widgets that depend on the task data, optimizing performance.

### 📂 Folder Structure

```text
lib/
├── models/           # Data definitions (Blueprints)
│   └── task_model.dart
├── providers/        # State Management & Business Logic
│   └── task_provider.dart
├── screens/          # UI & Widgets
│   ├── home_screen.dart
│   └── add_task_screen.dart (Optional)
└── main.dart         # App Entry Point