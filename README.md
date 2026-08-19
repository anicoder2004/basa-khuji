<div align="center">

# 🏠 Basa Khuji

**Rental Property Discovery & Management Platform for Bangladesh**

Find your next home. Move your belongings. Live better.

</div>

---

## 📖 What Is This?

**Basa Khuji** (বাসা খুঁজি — "Finding a Home") is a full-stack rental property platform built specifically for the Bangladeshi market. It connects tenants with verified rental listings, streamlines the search experience with map-based discovery, and adds a unique **logistics integration** so tenants can arrange moving services ("Truck Lagbe") right from the platform.

The system is split into two major components:

- **Backend** — A secure, high-performance REST API built with **Spring Boot (Kotlin)**.
- **Frontend** — A cross-platform mobile app built with **Flutter**.

---

## 🎯 Purpose

Renting a home in Bangladesh is traditionally done through word-of-mouth, local brokers, and Facebook groups — fragmented, unverified, and time-consuming. Basa Khuji aims to fix that by providing:

- **Verified listings** — Only authenticated, real landlords can post properties.
- **Fast discovery** — Location-based filtering down to thana (police station) level, backed by geospatial queries.
- **Secure contact** — Landlord contact details are protected and only revealed through a fair token-based unlock system.
- **Everything in one place** — Search → view → contact → arrange moving, all inside a single app.

---

## ✨ Key Features

### Location-Aware Search
- Browse the full administrative hierarchy of Bangladesh: **8 divisions → 64 districts → 625 thanas**.
- Find homes near where you live, study, or work.

### Modern Tech Behind the Scenes
- **Zero-trust authentication** — JWTs issued by Supabase Auth are validated server-side against the public JWKS keys on every protected request.
- **Offloaded media** — Images and videos never pass through the API server. The backend signs **Cloudflare R2 presigned URLs** so files stream directly to storage at full speed.
- **Geospatial queries** — PostgreSQL + PostGIS powers fast spatial proximity searches (targeting <50ms responses).
- **Hardened security** — JWT validation + database Row-Level Security + per-IP rate limiting + full audit logging for sensitive operations.
- **Payments** — SSLCommerz integration (bKash / Nagad / cards) powers the token wallet used to unlock landlord contacts.
- **Real-time chat & notifications** — Firebase Cloud Messaging for push notifications and Firestore for tenant–landlord chat.

---

## 🛠️ Tech Stack

### Backend
| Layer | Technology |
|-------|------------|
| Framework | Spring Boot 3.x |
| Language | Kotlin + Java 21 |
| Database | Supabase PostgreSQL + PostGIS |
| Migrations | Flyway |
| Auth | Supabase Auth (phone OTP) + JWKS validation |
| Storage | Cloudflare R2 (S3-compatible) |
| Push / Chat | Firebase Admin SDK (FCM + Firestore) |
| Payments | SSLCommerz |
| Rate Limiting | Bucket4j |
| Audit | Spring AOP |
| Build | Gradle |

### Frontend
| Layer | Technology |
|-------|------------|
| Framework | Flutter |
| State Management | Riverpod |
| Networking | Dio / Retrofit |
| Routing | GoRouter |
| Maps | Mapbox |
| Secure Storage | flutter_secure_storage |
| Notifications | firebase_messaging + local_notifications |

---

## 🏗️ Architecture

```
Flutter App
   │
   ├── Supabase Auth ─────── (direct, client-side OTP login)
   ├── Cloudflare R2 ─────── (direct media upload via presigned URLs)
   └── Firebase FCM ──────── (push notification receive)
        │
        ▼
   Spring Boot API (backend)
        │
        ├── Supabase PostgreSQL + PostGIS
        ├── Firebase Admin SDK (Firestore chat)
        ├── SSLCommerz (payments)
        └── Truck Lagbe (logistics proxy)
```

The backend follows a **package-by-feature** structure — each domain (location, authentication, property, storage, payment, logistics) is a self-contained vertical slice with its own entities, DTOs, repositories, and controllers. Cross-cutting concerns (security, audit, rate limiting) live in shared modules.

---

<div align="center">

Built for Bangladesh. **বাসা খুঁজি — ঘর খোঁজা এখন স্মার্ট।**

</div>
