# Test_Proj

템플릿 저장소 구성 및 표준 브랜치 전략을 적용한 예제 프로젝트입니다.

## 구조

```
├── .github/
│   ├── workflows/          # 빌드/테스트/린트 공통 CI
│   └── CODEOWNERS          # 기본 코드 리뷰어 지정
├── .gitignore              # 언어 및 툴체인 맞춤형 무시 파일
├── .editorconfig           # IDE 간 들여쓰기/인코딩 통일
├── Makefile                # 빌드, 테스트, 린트 표준 단축 명령
├── README.md               # 프로젝트 개요 및 환경 구축 가이드 템플릿
└── docs/                   # 아키텍처 및 상세 가이드
```

## 브랜치 전략

- **`main`**: 상시 배포 및 릴리즈 전용 브랜치 (직접 push 차단, PR 필수)
- **`develop`**: 다음 배포 버전 통합 개발 브랜치
- **`feature/*`**: 개별 기능 단위 작업 브랜치 (완료 후 `develop`으로 PR)
- **`hotfix/*`**: 릴리즈 후 발생한 긴급 버그 수정 브랜치

## 환경 구축 가이드

1. 레포지토리 클론: `git clone <repo-url>`
2. 의존성 설치: `make install`
3. 테스트 실행: `make test`
4. 린트 실행: `make lint`

## 개발 워크플로

```bash
git checkout -b feature/새기능 develop
# 작업...
git add .
git commit -m "feat: 새 기능 추가"
git push origin feature/새기능
# develop -> feature/새기능 PR 생성 -> 리뷰 -> merge
```