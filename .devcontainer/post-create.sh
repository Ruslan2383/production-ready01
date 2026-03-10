#!/usr/bin/env bash
set -e

cd /workspace

# Пример: установка зависимостей для всех сервисов
if [ -d "services/api" ]; then
  cd services/api
  # python -m venv .venv && source .venv/bin/activate
  pip3 install -r requirements.txt || true
  cd - >/dev/null
fi

if [ -d "services/web" ]; then
  cd services/web
  npm install || true
  cd - >/dev/null
fi

# Миграции / сиды, если нужно
# docker compose run --rm api alembic upgrade head
