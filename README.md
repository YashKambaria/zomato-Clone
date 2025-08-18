# 🍴 Zomato Clone – Flutter + Spring Boot

A **full-stack food delivery application** inspired by Zomato.  
Built with **Flutter** (frontend) and **Spring Boot + MongoDB** (backend).

## 🚀 Features

### 👤 User Side (Flutter App)
- 🔐 Authentication (Signup/Login with JWT)
- 🏠 Home Page with categories, filters, and restaurant listings
- 🔍 Search restaurants and dishes
- 🛒 Cart & Checkout flow
- 💳 Payment Gateway Integration (Razorpay/Stripe)
- 📍 Order Tracking with live map updates (Google Maps API)
- 🌙 Dark Mode UI

### ⚙️ Backend (Spring Boot)
- ✅ JWT-based Authentication
- 🍔 Restaurant, Food Item, and Order APIs
- 📦 Order Management & Status Updates
- 💾 MongoDB for data persistence
- ⚡ Optimizations with Redis Caching & Kafka Messaging (future-ready)

---

## 🛠️ Tech Stack

### Frontend
- Flutter
- Riverpod (State Management)
- Google Maps API
- Razorpay/Stripe SDK

### Backend
- Spring Boot
- MongoDB
- Redis (Caching)
- Kafka (Messaging)
- Twilio (Notifications – optional)

---

## 📂 Project Structure

```bash
zomato-clone/
│
├── lib/
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── search_screen.dart
│   │   ├── cart_screen.dart
│   │   ├── profile_screen.dart
│   │   ├── order_tracking_screen.dart
│   │   └── payment_screen.dart
│   │
│   ├── widgets/
│   │   ├── top_app_bar.dart
│   │   ├── search_bar.dart
│   │   ├── gold_banner.dart
│   │   ├── category_list.dart
│   │   ├── filter_row.dart
│   │   ├── recommended_list.dart
│   │   └── filter_widget.dart
│   │
│   ├── models/
│   │   ├── restaurant.dart
│   │   ├── category.dart
│   │   ├── user.dart
│   │   └── order.dart
│   │
│   ├── providers/     # State management (Riverpod)
│   ├── services/      # API integration
│   ├── utils/         # Constants, helpers
│   └── main.dart
│
├── pubspec.yaml
└── README.md
```

---

## ⚡ Setup Instructions

### Frontend (Flutter)
```bash
cd frontend
flutter pub get
flutter run
```
### Backend (Spring Boot)
```bash
cd backend
mvn spring-boot:run
```
