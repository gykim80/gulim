# Font Sommelier

**AI 폰트 추천 스킬 for Claude Code**

분위기 키워드만 입력하면 한글/영문 폰트를 추천하고, CSS 설치 코드 + 타이포그래피 가이드 + 색상 팔레트까지 한 번에 제공합니다.

- API 키 불필요
- 완전 무료
- 167개 무드 키워드 지원 (한/영)
- 즉시 사용 가능한 CSS snippet 포함

---

## Quick Start

### 원클릭 설치

```bash
curl -sL https://raw.githubusercontent.com/gykim80/gulim/main/install.sh | bash
```

### 수동 설치

```bash
mkdir -p ~/.claude/commands
curl -sL https://raw.githubusercontent.com/gykim80/gulim/main/font.md \
  -o ~/.claude/commands/font.md
```

설치 후 Claude Code에서 `/font` 명령어로 바로 사용 가능합니다.

---

## Usage Examples

다양한 시나리오에서 활용할 수 있습니다:

**브랜딩 & 마케팅**
```
/font 따뜻한 카페 분위기의 브랜딩용 폰트
/font 럭셔리 프리미엄 뷰티 브랜드
/font clean minimal cosmetics packaging
```

**웹 & 앱**
```
/font modern minimal tech startup
/font 깔끔한 기업 홈페이지용 한글 폰트
/font playful mobile app for kids
```

**인쇄물 & 문서**
```
/font 포멀 비즈니스 보고서용 한글 폰트
/font elegant wedding invitation typeface
/font 레트로 빈티지 포스터 감성
```

**크리에이티브**
```
/font 귀여운 플레이풀 어린이용 서체
/font bold futuristic sci-fi game title
/font 손글씨 느낌의 감성 블로그
```

---

## Sample Output

`/font 따뜻한 카페 분위기` 실행 시 다음과 같은 형태로 출력됩니다:

```
## Font Sommelier 추천

### 분위기 분석
Warm + Cozy mood
- 매칭 키워드: 따뜻한
- 미매칭: 카페 (일반 키워드로 처리됨)

### 추천 한글 폰트
| # | 폰트              | 카테고리 | 무드           | 유사도 |
|---|-------------------|----------|----------------|--------|
| 1 | 프리텐다드         | gothic   | 모던, 깔끔     | 95%    |
| 2 | 나눔스퀘어라운드   | gothic   | 부드러운, 따뜻 | 91%    |

### 추천 영문 폰트
| # | 폰트          | 카테고리   | 무드           | 유사도 |
|---|---------------|------------|----------------|--------|
| 1 | Nunito        | sans-serif | warm, soft     | 93%    |
| 2 | Quicksand     | sans-serif | friendly, clean| 89%    |

### 베스트 페어링
프리텐다드 + Nunito
> 두 폰트 모두 둥근 곡선과 균형 잡힌 자간을 공유하여 ...

### 설치 코드
  @import url('https://cdn.jsdelivr.net/...');
  body { font-family: 'Pretendard', 'Nunito', sans-serif; }

### 타이포그래피 가이드 / 색상 팔레트 / 적용 팁
(행간, 자간, 색상 HEX, 플랫폼별 적용 팁 포함)
```

> 실제 출력은 API 응답 데이터에 따라 달라집니다.

---

## Supported Keywords

총 167개의 무드 키워드를 지원합니다. 한국어/영어 모두 사용 가능합니다.

| 무드 그룹 | 한국어 | English |
|-----------|--------|---------|
| 따뜻한/포근한 | 따뜻한, 포근한, 부드러운, 편안한 | warm, soft |
| 캐주얼/일상 | 캐주얼, 일상적 | casual |
| 클래식/전통 | 고전적, 전통적, 클래식 | classic |
| 우아한/세련 | 세련된, 우아한 | elegant |
| 럭셔리/고급 | 고급스러운, 럭셔리, 프리미엄, 고급 | luxury, premium |
| 포멀/비즈니스 | 포멀, 공식적, 전문적, 비즈니스 | formal, professional, business |
| 모던/트렌디 | 모던, 현대적, 트렌디 | modern |
| 미니멀/깔끔 | 미니멀, 심플, 깔끔, 깔끔한, 클린 | minimal, simple, clean |
| 쿨/차가운 | 시원한, 차가운, 냉정한, 이성적 | cool |
| 강렬한/역동 | 역동적, 강렬한, 강한, 임팩트, 파워풀 | dynamic, bold, powerful, impact |
| 플레이풀/귀여운 | 재미있는, 플레이풀, 귀여운 | fun, playful, cute |
| 레트로/빈티지 | 레트로, 복고, 빈티지, 올드스쿨 | retro, vintage |
| 미래적/테크 | 미래적, 사이버, 테크 | futuristic, tech |
| 손글씨 | 손글씨, 핸드라이팅 | handwriting |

> 목록에 없는 키워드도 전달 가능하며, 유사한 분위기로 매칭을 시도합니다.

---

## Supported Environments

| 환경 | 설치 방식 | 사용법 |
|------|-----------|--------|
| **Claude Code** (CLI) | `~/.claude/commands/font.md` | `/font 키워드` |
| **Cursor** | `.cursor/commands/font.md` | `/font 키워드` |
| **Windsurf** | `.windsurf/commands/font.md` | `/font 키워드` |
| **Cline** | `.cline/commands/font.md` | `/font 키워드` |

> 모든 환경에서 동일한 `font.md` 파일을 사용합니다. 해당 IDE의 commands 디렉토리에 복사하면 됩니다.

---

## API Reference

Base URL: `https://gulim.xyz`

스킬 없이 직접 API를 호출할 수도 있습니다. 인증 불필요.

### 1. 폰트 추천 — `GET /api/v1/fonts/recommend`

분위기 키워드 기반 폰트 추천. 디자인 가이드 포함.

| Parameter | Required | Default | Description |
|-----------|----------|---------|-------------|
| `keywords` | Yes | — | 쉼표 구분 키워드 (한/영 모두 가능) |
| `language` | No | `both` | `ko`, `en`, `both` |
| `usage` | No | `both` | `heading`, `body`, `both` |
| `limit` | No | `6` | 결과 수 (1~10) |
| `include_guide` | No | `true` | 디자인 가이드 포함 여부 |

```bash
curl -s "https://gulim.xyz/api/v1/fonts/recommend?keywords=warm,minimal&language=both&limit=4"
```

### 2. 폰트 브라우즈 — `GET /api/v1/fonts/browse`

카테고리/무드별 폰트 목록 조회.

| Parameter | Required | Default | Description |
|-----------|----------|---------|-------------|
| `category` | No | — | `gothic`, `myeongjo`, `sans-serif`, `serif` 등 |
| `mood_tag` | No | — | 무드 태그 필터 |
| `language` | No | — | `ko`, `en` |
| `search` | No | — | 폰트명 검색 |
| `sort` | No | `popular` | `popular`, `newest`, `name` |
| `limit` | No | `20` | 페이지당 개수 |
| `page` | No | `1` | 페이지 번호 |

```bash
curl -s "https://gulim.xyz/api/v1/fonts/browse?category=gothic&mood_tag=modern&limit=5"
```

### 3. 폰트 상세 — `GET /api/v1/fonts/:id`

특정 폰트의 상세 정보, 유사 폰트, CSS snippet 조회.

```bash
curl -s "https://gulim.xyz/api/v1/fonts/{font_id}"
```

---

## License

MIT License. See [LICENSE](./LICENSE) for details.

---

> More fonts at [gulim.xyz](https://gulim.xyz)
> Powered by Font Sommelier API
