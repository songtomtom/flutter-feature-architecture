# Flutter 기능 단위 아키텍처 예제

작은 할 일 앱으로 Flutter 앱을 **기능(feature) 단위로 나누고, 상태를 sealed class 와 Dart 3 switch 표현식으로 다루는** 구조를 보여 줍니다. 서버 없이 앱만으로 동작합니다.

블로그 글

1. [Flutter 폴더 구조, 레이어 대신 기능으로 나누기](https://songtomtom.github.io/blog/flutter-feature-first-structure)
2. [Dart 3 switch 표현식과 sealed class로 상태 관리하기](https://songtomtom.github.io/blog/flutter-sealed-state-switch-expression)
3. [Riverpod, go_router, freezed 코드 생성을 한 프로젝트에서 돌리기](https://songtomtom.github.io/blog/flutter-codegen-stack)
4. [Flutter에서 싱글턴과 addPostFrameCallback을 금지한 이유](https://songtomtom.github.io/blog/flutter-forbidden-patterns)

## 구조

```
app/lib/
├── main.dart, app.dart          진입점과 MaterialApp.router
├── core/
│   ├── router/app_router.dart   go_router_builder 타입 라우트
│   └── theme/app_theme.dart
├── features/
│   ├── todos/                   목록 화면 · Notifier · State · 모델 · 위젯
│   ├── todo_detail/             상세 화면 · Notifier · State
│   └── settings/                설정 화면 · Notifier · State
├── providers/todo_repository.dart   여러 feature 가 공유하는 저장소 (인터페이스 + SharedPreferences 구현)
└── shared/widgets/              feature 간 공유 위젯 (Provider 를 import 하지 않는다)
```

- 상태: `freezed` sealed class, 화면에서는 `switch` 표현식으로 분기
- 상태 관리: `riverpod_generator` (`@riverpod`)
- 라우팅: `go_router_builder` (`@TypedGoRoute`)
- 모델: `freezed` + `json_serializable`

## 실행

```bash
cd app
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run -d macos   # 또는 -d chrome
```

## 테스트

```bash
cd app
flutter analyze --no-fatal-infos
flutter test
```

`test/providers/fake_todo_repository.dart` 가 저장소 인터페이스의 메모리 구현이고, Notifier 테스트와 위젯 테스트가 이를 `ProviderContainer`/`ProviderScope` 오버라이드로 끼웁니다.
