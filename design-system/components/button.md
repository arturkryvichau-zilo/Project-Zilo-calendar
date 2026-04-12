# Button

**Figma:** `node-id=7260-914` (Design System file: `H3k7PPGVqcuJvTjtyV5x3g`)

## Варианты (Zilo)

| Type | States |
|------|--------|
| Primary | Default, Hover, Pressed, Disabled, Loader |
| Secondary | Default, Hover, Pressed, Disabled |
| Tertiary | Default, Hover, Pressed, Disabled |
| Tertiary Delite | Default, Hover, Pressed, Disabled |

## Токены

| State/Type | bg | text | border |
|---|---|---|---|
| Primary Default | `#222693` | `#fff` | — |
| Primary Hover | `#1D207C` | `#fff` | — |
| Primary Pressed | `#1D207C` | `#fff` | — |
| Primary Disabled | `#D5D7F8` | `#fff` | — |
| Secondary Default | `transparent` | `#222693` | `1.5px #222693` |
| Secondary Hover | `transparent` | `#1D207C` | `1.5px #1D207C` |
| Secondary Disabled | `transparent` | `#D5D7F8` | `1.5px #D5D7F8` |
| Tertiary Default | `#F3F3FF` | `#222693` | — |
| Tertiary Hover | `#D5D7F8` | `#1D207C` | — |
| Tertiary Disabled | `#F6F6FC` | `#D5D7F8` | — |
| Tertiary Delite Default | `#FEE9E5` | `#EA4335` | — |
| Tertiary Delite Hover | `#FFDED7` | `#EA4335` | — |
| Tertiary Delite Disabled | `#FFF3F3` | `#F9C0BB` | — |

## Размеры

| Size | height | padding | font-size | border-radius |
|------|--------|---------|-----------|---------------|
| L | `46px` | `12px 18px` | `16px` | `8px` |
| S | `36px` | `7px 14px` | `14px` | `8px` |
| XS (chip) | `auto` | `4px 10px` | `14px` | `4px` |

### XS (chip) — Figma `1083:298498`

Используется для inline-действий внутри форм ("Dodaj nowego klienta").

| Токен | Значение |
|-------|----------|
| bg default | `#F3F3FF` |
| bg hover | `#D5D7F8` |
| text | `#222693` |
| border-radius | `4px` |
| padding | `4px 10px` |
| gap (icon + text) | `4px` |
| icon | `20×20px`, `stroke: #222693` |
| font | `14px / 22px Regular` |

## CSS классы (в проекте)

```
.dm-btn                  — базовый класс
.dm-btn--primary         — Primary
.dm-btn--secondary       — Secondary
.dm-btn--tertiary        — Tertiary
.dm-btn--delite          — Tertiary Delite
.dm-btn--sm              — Size S (36px)
.dm-btn--disabled        — Disabled state

Inline / chip variant (Tertiary XS):
.btn-add-client-inline   — tertiary chip (4px 10px, radius 4px, 14px)
```

## Пример XS кнопки

```html
<button class="btn-add-client-inline" type="button">
  <svg viewBox="0 0 20 20">
    <line x1="10" y1="4" x2="10" y2="16"/>
    <line x1="4" y1="10" x2="16" y2="10"/>
  </svg>
  Dodaj nowego klienta
</button>
```

## Типографика

- Font: `Rubik Regular`
- Size L: `16px / 22px`
- Size S: `14px / 22px`
- `white-space: nowrap`
