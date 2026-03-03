# Pulse

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![GitHub stars][stars_badge]][repository_link]



## Contents
1. [Overview](#overview)
2. [Features](#features)
3. [Platform Availability](#platform-availability)
4. [Preview](#preview)
5. [Technologies](#technologies)
6. [Architecture](#architecture)
7. [Getting Started](#getting-started)
8. [License](#license)

## Overview
This project serves as a production-ready blueprint for a modular Flutter application. While the UI focuses on fitness tracking essentials, the core objective was to engineer a highly decoupled, multi-package architecture capable of scaling to dozens of features without increasing technical debt.

It demonstrates professional-grade standards including:

- Strict Domain Separation: Zero-dependency feature modules.

- Design System Integration: A centralized, token-based appearance package.

- Resilient State Management: Predictable flows using BLoC with centralized dependency orchestration.

- Enterprise Tooling: 100% adherence to very_good_analysis and automated CI-ready structure.

## Features
### Home
- **Daily Challenges**: Gamified tasks to keep users motivated.
- **Workout Schedule**: Easy-to-view timeline of planned activities.
- **Social Feed**: Connect with friends and share progress.

### Session
- **Workout Library**: Browse available workout sessions.
- **Active Tracking**: Real-time monitoring of current exercises.

### Profile
- **Activity Metrics**: Visual breakdown of workout history and stats.
- **User Management**: Personal details and preferences.

## Platform Availability
| Platform | Readiness | Version |
| :--- | :--- | :--- |
| **Android** | **[ RELEASED ]** | v0.0.1 |
| **iOS** | **[ PLANNED ]** | -- |
| **Web** | **[ DEMO LIVE ]** | [**Open Demo**](https://dinmukhamednurkaliyev.github.io/pulse/) |
| **Windows** | **[ PLANNED ]** | -- |
| **Linux** | **[ PLANNED ]** | -- |

## Preview

Experience the application directly in your browser or on a physical device.

**[Launch Web Interactive Demo](https://dinmukhamednurkaliyev.github.io/pulse/)**

> **Note**: The web demo uses `device_preview` to simulate a mobile environment. For the best experience, use a desktop browser.z

---

### Scan to Open
<img src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=https://dinmukhamednurkaliyev.github.io/pulse/&color=4338ca&qzone=2" width="150" alt="Pulse QR Code" />

## Technologies
| Category | Tools |
| :--- | :--- |
| **Language** | `dart` |
| **Framework** | `flutter` |
| **Workflow Automation** | `melos` |
| **State Management** | `bloc`, `flutter_bloc` |
| **Navigation** | `go_router` |
| **Local Persistence** | `hive`, `hive_flutter` |
| **Vector Animations** | `rive` |
| **Static Analysis** | `very_good_analysis` |
| **Demo Tooling** | `device_preview` |

## Architecture

```mermaid
graph TD
    classDef app fill:#eef2ff,stroke:#4338ca,stroke-width:1px,color:#4338ca;
    classDef feature fill:#ffffff,stroke:#94a3b8,stroke-width:1px,color:#475569,stroke-dasharray: 5 5;
    classDef pkg fill:#f8fafc,stroke:#1e293b,stroke-width:1px,color:#1e293b;
    classDef tech fill:#f1f5f9,stroke:#64748b,stroke-width:1px,color:#64748b;

    EntryPoint[Pulse Application]:::app

    subgraph Features [Feature Modules]
        direction LR
        F1[package:home]:::feature --- F2[package:session]:::feature --- F3[package:profile]:::feature
    end

    subgraph Shared [Shared Layer]
        direction LR
        S1[package:infrastructure]:::package --- S2[package:appearance]:::package --- S3[package:localization]:::package
    end

    EntryPoint --> Features
    Features --> Shared

    linkStyle default stroke:#cbd5e1,stroke-width:1px;
    linkStyle 0 stroke:#6366f1,stroke-width:2px;
    linkStyle 2 stroke:#cbd5e1,stroke-width:1px,stroke-dasharray: 5 5;
```


### Key Technical Decisions
| Decision | Rationale |
| :--- | :--- |

### Engineering Challenges
| Challenge | Solution |
| :--- | :--- |


## Getting Started

### Prerequisites
Ensure you have the following installed:
- **Flutter SDK**: `^3.41.2`
- **Dart SDK**: `^3.11.0`
- **Melos**: FLutter/Dart package manager for monorepos.
  ```bash
  dart pub global activate melos
  ```

### Installation
1. **Clone the repository**
   ```bash
   git clone https://github.com/dinmukhamednurkaliyev/pulse.git
   cd pulse
   ```

2. **Bootstrap the project**
   Initialize the workspace and link packages:
   ```bash
   melos bootstrap
   ```

3. **Run the App**
   The entry point is in the root `lib` folder (often linking to `packages` implicitly via `main.dart`).
   ```bash
   flutter run
   ```

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

[coverage_badge]: coverage_badge.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[repository_link]: https://github.com/dinmukhamednurkaliyev/pulse
[stars_badge]: https://img.shields.io/github/stars/dinmukhamednurkaliyev/pulse?style=social
