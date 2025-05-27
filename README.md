# MakeConversation

MakeConversation is a modern chat application developed with Swift and SwiftUI, using VIPER architecture and integrating modern cloud technologies. The app allows users to chat, connect, and share easily with a modern user interface, smooth experience, and high security.

> **Note**: This project is currently under development.

## Technologies

### Architecture

- **VIPER Architecture**: The application is built on VIPER (View, Interactor, Presenter, Entity, Router) architecture which helps clearly separate components, making it easy to extend and maintain.
- **Dependency Injection**: Using a custom DI system to manage dependencies.
- **SwiftUI**: User interface built entirely with SwiftUI.

### Backend & Cloud Services

- **Firebase & Supabase**: The application combines both Firebase and Supabase to leverage the advantages of each platform:
  - **Firebase**: Used for Authentication, Analytics, and Crashlytics
  - **Supabase**: Used for Database, Storage, and Functions (Edge Functions)

> **Reason for combining both**: Previously, Firebase provided many free services, but recently some services have moved to a paid model. Supabase is used as a more cost-effective alternative for certain features.

### Networking

- **Alamofire**: Handling API requests with clear structure and easy management
- **RESTful API**: Communication with backend through RESTful API

### Other Libraries

- **Combine**: Processing reactive data flows and asynchronous events
- **SwiftData**: Local data storage (iOS 17+)

## Project Structure
`
MakeConversation/
├── Sources/
│   ├── App/ # Application entry point
│   ├── Architecture/ # VIPER architecture defining protocols
│   ├── Common/ # Shared components
│   │   └── Networking/ # Network handling, API, Alamofire
│   ├── Constants/ # Constants and configurations
│   ├── Extensions/ # Swift extensions
│   ├── Library/ # Custom libraries
│   ├── Models/ # Data models
│   ├── Modules/ # Functional modules (VIPER)
│   │   ├── Login/ # Login module
│   │   ├── ChatRoom/ # Chat room module
│   │   └── ...
│   ├── Services/ # Application services
│   └── Views/ # Shared views
├── Resources/ # Resources (images, fonts, ...)
└── Configuration/ # Environment configuration
    └── Firebase/ # Firebase configuration
`

## Features

- 🔐 Secure login/registration
- 💬 Real-time messaging
- 👥 Contact management
- 🔔 Notifications
- 🌙 Dark/light mode support
- 🛠️ Personalized settings

## Installation and Running

### Requirements

- Xcode 15.0+
- Swift 5.9+
- iOS 17.0+

### Installation

1. Clone repository:
```bash
git clone https://github.com/yourusername/MakeConversation.git
```

2. Open `MakeConversation.xcodeproj` with Xcode

3. Configure Firebase and Supabase:
   - Add `GoogleService-Info.plist` file to Configuration/Firebase directory
   - Update Supabase URL and Key values in configuration file

4. Run the application on simulator or real device
