.PHONY: help install lint test build clean

help: ## 사용 가능한 명령 표시
	@grep -E '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

install: ## 의존성 설치
	python -m pip install -r requirements.txt

lint: ## 린트 실행
	python -m flake8 . --exclude=build,.git,.venv

test: ## 테스트 실행
	python -m pytest -v

build: ## 패키징/빌드
	python -m build

clean: ## 빌드 산출물 정리
	rm -rf build dist *.egg-info .pytest_cache