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
zomato-clone/
│── frontend/ (Flutter app)
│ ├── lib/
│ │ ├── screens/ # Home, Cart, Profile, Payment, etc.
│ │ ├── widgets/ # Reusable UI widgets
│ │ ├── state/ # Riverpod providers
│ │ └── main.dart
│
│── backend/ (Spring Boot)
│ ├── src/main/java/com/zomato/...
│ │ ├── controllers/
│ │ ├── services/
│ │ ├── models/
│ │ ├── repositories/
│ │ └── config/
│ └── pom.xml


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
