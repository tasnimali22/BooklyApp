# 📚 bookly_app (Flutter Project)

تطبيق Flutter مبني باستخدام أفضل ممارسات الهندسة المعمارية (Clean Architecture / Feature-First Pattern) وإدارة الحالات باستخدام **Bloc / Cubit**.

---

## 📁 هيكلية المشروع (Project Structure)

```text
lib/
├── constants/         # الثوابت والألوان والخطوط العامة
├── core/              # الخدمات المشتركة، الثوابت العالمية، والـ Utils
├── features/          # المميزات الأساسية للتطبيق
│   ├── data/          # طبقة البيانات
│   │   ├── book_model/   # Data Models
│   │   ├── cubit/        # إدارة الحالة (State Management)
│   │   └── repo/         # Repositories (Data Sources & API Integrations)
│   ├── presentation/  # واجهات المستخدم (UI Screens & Widgets)
│   └── splash/        # شاشة البداية (Splash Screen)
└── main.dart          # مدخل التطبيق الرئيسي

التقنيات المستخدمة (Tech Stack)
Framework: Flutter
Language: Dart
State Management: Flutter Bloc / Cubit
Rest API
Architecture: Clean Architecture / Feature-First Architecture
