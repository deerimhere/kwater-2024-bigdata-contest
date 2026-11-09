<p align="center">
  <img src="docs/banner.svg" alt="물 절약 챌린지 — Water Saving Challenge" width="100%">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.22-02569B?logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-3.4-0175C2?logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/Firebase-Auth%20%7C%20Firestore-FFCA28?logo=firebase&logoColor=black" alt="Firebase">
  <img src="https://img.shields.io/badge/K--water-2024%20빅데이터%20공모전-1E7FCB" alt="K-water 2024">
</p>

# 💧 물 절약 챌린지

**K-water 2024 빅데이터 공모전** 출품작입니다.
매일의 작은 물 절약 습관을 **미션·퀴즈·기록**으로 쌓고, 모은 포인트로 **나만의 나무**를 키우는 Flutter 앱입니다.
지도에서는 내가 사는 시군구의 **월별 물 스트레스 지수**를 확인할 수 있습니다.

<p align="center">
  <img src="docs/tree-levels.png" alt="나무 성장 7단계" width="720"><br>
  <sub>새싹에서 사과나무까지, 7단계로 자라는 가상 정원</sub>
</p>

## ✨ 주요 기능

| | 기능 | 설명 |
|:-:|---|---|
| 📋 | **오늘의 미션** | 짧은 샤워하기, 양치질 시 물컵 사용하기, 빨래 모아서 하기 등 하루 단위 절약 미션 |
| ❓ | **물 절약 퀴즈** | 물 상식 OX 퀴즈를 풀고 포인트 받기 |
| 🚰 | **물 사용량 기록** | 가정 인원 수와 오늘 쓴 물의 양을 입력하면 1인당 사용량을 계산해 포인트 지급 |
| 🌱 | **가상 정원** | 물·비료·영양제 아이템으로 경험치를 쌓아 나무를 진화시키고 사과 수확 |
| 🛒 | **상점** | 모은 포인트로 나무 키우기 아이템 구매 |
| 🏆 | **리더보드** | 사용자 점수 순위 (Firestore) |
| 🗺️ | **물 스트레스 지도** | 전국 229개 시군구의 월별 물 스트레스 지수(WRI Aqueduct)를 지도에서 확인 |

## 🛠 기술 스택

- **앱**: Flutter · Dart, Provider(상태 관리), Lottie(애니메이션)
- **백엔드**: Firebase Authentication, Cloud Firestore, SharedPreferences
- **지도**: flutter_map + OpenStreetMap 타일, GADM 시군구 경계
- **데이터**: WRI Aqueduct 4.0 월별 물 스트레스 지표(`assets/level2.csv`)

## 📁 프로젝트 구조

```
lib/
├── main.dart                 # 앱 진입점, 라우팅
├── data.dart                 # 상점 아이템
├── score_manager.dart        # 포인트·리더보드
├── data/quiz_data.dart       # 물 상식 퀴즈 문항
├── models/tree_model.dart    # 나무 레벨·경험치
└── pages/                    # 홈, 미션, 퀴즈, 물 사용량, 정원, 상점, 리더보드, 지도, 프로필, 로그인
assets/
├── images/level1~7.png       # 나무 성장 단계
├── level2.csv                # 시군구별 월별 물 스트레스 지수
└── fonts/                    # 배달의민족 한나체 Air, 도현체
tool/fetch_gadm.sh            # 시군구 경계 자료 내려받기
```

## 🚀 실행 방법

```bash
# 1. 패키지 설치
flutter pub get

# 2. Firebase 연결 (본인 Firebase 프로젝트 필요)
dart pub global activate flutterfire_cli
flutterfire configure            # lib/firebase_options.dart 생성
#   └ 또는 lib/firebase_options.example.dart 를 복사해 값을 채우기

# 3. 시군구 경계 자료 내려받기 (GADM, 재배포 불가라 저장소에 미포함)
./tool/fetch_gadm.sh

# 4. 실행
flutter run
```

> Firebase 키(`firebase_options.dart`, `google-services.json`)는 저장소에 올리지 않습니다.

## 📚 데이터·리소스 출처

- **물 스트레스 지표**: [WRI Aqueduct 4.0](https://www.wri.org/aqueduct) (CC BY 4.0)
- **행정구역 경계**: [GADM 4.1](https://gadm.org) — 학술·비상업 용도, 재배포 불가
- **지도 타일**: © [OpenStreetMap](https://www.openstreetmap.org/copyright) contributors
- **글꼴**: [배달의민족 한나체 Air · 도현체](https://www.woowahan.com/fonts)

## 👥 팀

<a href="https://github.com/deerimhere">@deerimhere</a> · <a href="https://github.com/parkbjgit">@parkbjgit</a>

<sub>2024년 7–8월 공모전 기간에 개발했습니다.</sub>
