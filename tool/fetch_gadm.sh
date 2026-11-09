#!/usr/bin/env bash
# 시군구 경계(GADM 4.1, 대한민국 level 2)를 내려받아 assets/ 에 둡니다.
# GADM 자료는 재배포가 허용되지 않아 저장소에 넣지 않고, 실행 전에 직접 받습니다.
# 이용 조건: https://gadm.org/license.html (학술·비상업 용도)
set -euo pipefail
cd "$(dirname "$0")/.."
URL="https://geodata.ucdavis.edu/gadm/gadm4.1/json/gadm41_KOR_2.json.zip"
TMP="$(mktemp -d)"
curl -fL "$URL" -o "$TMP/gadm.zip"
unzip -o -q "$TMP/gadm.zip" -d "$TMP"
mv "$TMP/gadm41_KOR_2.json" assets/gadm41_KOR_2.json
rm -rf "$TMP"
echo "완료: assets/gadm41_KOR_2.json"
