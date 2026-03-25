# Font Sommelier

**AI Font Recommendation Skill for Claude Code**

Enter mood keywords and get Korean/English font recommendations with CSS install code + typography guide + color palette — all in one go.

- No API key required
- Completely free
- 167 mood keywords supported (Korean & English)
- Ready-to-use CSS snippets included

---

## Quick Start

### One-click Install

```bash
curl -sL https://raw.githubusercontent.com/gykim80/gulim/main/install.sh | bash
```

### Manual Install

```bash
mkdir -p ~/.claude/commands
curl -sL https://raw.githubusercontent.com/gykim80/gulim/main/font.md \
  -o ~/.claude/commands/font.md
```

After installation, use the `/font` command in Claude Code.

---

## Usage Examples

Works for a wide range of scenarios:

**Branding & Marketing**
```
/font warm cafe branding
/font luxury premium beauty brand
/font clean minimal cosmetics packaging
```

**Web & App**
```
/font modern minimal tech startup
/font clean corporate homepage Korean font
/font playful mobile app for kids
```

**Print & Documents**
```
/font formal business report Korean font
/font elegant wedding invitation typeface
/font retro vintage poster aesthetic
```

**Creative**
```
/font cute playful children's font
/font bold futuristic sci-fi game title
/font handwritten emotional blog feel
```

---

## Sample Output

Running `/font warm cafe vibe` produces output like this:

```
## Font Sommelier Recommendation

### Mood Analysis
Warm + Cozy mood
- Matched keywords: warm
- Unmatched: cafe (processed as general keyword)

### Recommended Korean Fonts
| # | Font                | Category | Mood              | Similarity |
|---|---------------------|----------|-------------------|------------|
| 1 | Pretendard          | gothic   | Modern, Clean     | 95%        |
| 2 | NanumSquare Round   | gothic   | Soft, Warm        | 91%        |

### Recommended English Fonts
| # | Font          | Category   | Mood              | Similarity |
|---|---------------|------------|-------------------|------------|
| 1 | Nunito        | sans-serif | warm, soft        | 93%        |
| 2 | Quicksand     | sans-serif | friendly, clean   | 89%        |

### Best Pairing
Pretendard + Nunito
> Both fonts share rounded curves and balanced spacing ...

### Install Code
  @import url('https://cdn.jsdelivr.net/...');
  body { font-family: 'Pretendard', 'Nunito', sans-serif; }

### Typography Guide / Color Palette / Usage Tips
(line-height, letter-spacing, color HEX, platform-specific tips included)
```

> Actual output varies based on API response data.

---

## Supported Keywords

167 mood keywords are supported. Both Korean and English work.

| Mood Group | Korean | English |
|------------|--------|---------|
| Warm/Cozy | 따뜻한, 포근한, 부드러운, 편안한 | warm, soft |
| Casual | 캐주얼, 일상적 | casual |
| Classic/Traditional | 고전적, 전통적, 클래식 | classic |
| Elegant/Refined | 세련된, 우아한 | elegant |
| Luxury/Premium | 고급스러운, 럭셔리, 프리미엄, 고급 | luxury, premium |
| Formal/Business | 포멀, 공식적, 전문적, 비즈니스 | formal, professional, business |
| Modern/Trendy | 모던, 현대적, 트렌디 | modern |
| Minimal/Clean | 미니멀, 심플, 깔끔, 깔끔한, 클린 | minimal, simple, clean |
| Cool | 시원한, 차가운, 냉정한, 이성적 | cool |
| Bold/Dynamic | 역동적, 강렬한, 강한, 임팩트, 파워풀 | dynamic, bold, powerful, impact |
| Playful/Cute | 재미있는, 플레이풀, 귀여운 | fun, playful, cute |
| Retro/Vintage | 레트로, 복고, 빈티지, 올드스쿨 | retro, vintage |
| Futuristic/Tech | 미래적, 사이버, 테크 | futuristic, tech |
| Handwriting | 손글씨, 핸드라이팅 | handwriting |

> Keywords not on the list can still be sent — the API will attempt fuzzy matching.

---

## Supported Environments

| Environment | Install Path | Usage |
|-------------|-------------|-------|
| **Claude Code** (CLI) | `~/.claude/commands/font.md` | `/font keywords` |
| **Cursor** | `.cursor/commands/font.md` | `/font keywords` |
| **Windsurf** | `.windsurf/commands/font.md` | `/font keywords` |
| **Cline** | `.cline/commands/font.md` | `/font keywords` |

> All environments use the same `font.md` file. Just copy it to your IDE's commands directory.

---

## API Reference

Base URL: `https://gulim.xyz`

You can also call the API directly without the skill. No authentication required.

### 1. Font Recommendation — `GET /api/v1/fonts/recommend`

Mood keyword-based font recommendation with design guide.

| Parameter | Required | Default | Description |
|-----------|----------|---------|-------------|
| `keywords` | Yes | — | Comma-separated keywords (Korean & English) |
| `language` | No | `both` | `ko`, `en`, `both` |
| `usage` | No | `both` | `heading`, `body`, `both` |
| `limit` | No | `6` | Number of results (1–10) |
| `include_guide` | No | `true` | Include design guide |

```bash
curl -s "https://gulim.xyz/api/v1/fonts/recommend?keywords=warm,minimal&language=both&limit=4"
```

### 2. Font Browse — `GET /api/v1/fonts/browse`

Browse fonts by category/mood.

| Parameter | Required | Default | Description |
|-----------|----------|---------|-------------|
| `category` | No | — | `gothic`, `myeongjo`, `sans-serif`, `serif`, etc. |
| `mood_tag` | No | — | Mood tag filter |
| `language` | No | — | `ko`, `en` |
| `search` | No | — | Font name search |
| `sort` | No | `popular` | `popular`, `newest`, `name` |
| `limit` | No | `20` | Items per page |
| `page` | No | `1` | Page number |

```bash
curl -s "https://gulim.xyz/api/v1/fonts/browse?category=gothic&mood_tag=modern&limit=5"
```

### 3. Font Detail — `GET /api/v1/fonts/:id`

Detailed info for a specific font, including similar fonts and CSS snippet.

```bash
curl -s "https://gulim.xyz/api/v1/fonts/{font_id}"
```

---

## License

MIT License. See [LICENSE](./LICENSE) for details.

---

> More fonts at [gulim.xyz](https://gulim.xyz)
> Powered by Font Sommelier API
