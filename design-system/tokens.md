# Design Tokens — Zilo Calendar

## Цвета

### DM (DobrMechanik)
| Название | Hex | Использование |
|----------|-----|---------------|
| DM/Blue Dark | `#1458BC` | Hover primary |
| DM/Blue1 | `#2470E0` | Основной акцент DM |
| DM/Blue3 | `#7BA9EC` | Светло-голубой |
| DM/Blue4 | `#D3E2F9` | Disabled фон |
| DM/Blue5 | `#EAF1FC` | Фон tertiary DM |
| DM/Blue6 | `#F8FAFE` | Очень светлый фон |

### Zilo
| Название | Hex | Использование |
|----------|-----|---------------|
| Zilo/Blue3 | `#0A0B29` | Тёмный фон |
| Zilo/Blue2 | `#1D207C` | Hover/Pressed |
| Zilo/Blue1 | `#222693` | Основной акцент |
| Zilo/Blue | `#8386E2` | Средний акцент |
| Zilo/Blue4 | `#D5D7F8` | Disabled, разделители |
| Zilo/Blue5 | `#F3F3FF` | Фон tertiary |
| Zilo/Blue6 | `#F6F6FC` | Фон тулбаров |
| Gradient | `linear-gradient(145.404deg, #7B61FF 21.934%, #222693 85.233%)` | Баннеры |

### Red
| Название | Hex | Использование |
|----------|-----|---------------|
| Red | `#EA4335` | Ошибки, деструктивные |
| Red1 | `#F9C0BB` | Disabled delite |
| Red2 | `#FFDED7` | Hover delite |
| Red3 | `#FEE9E5` | Фон delite default |
| Red4 | `#FFF3F3` | Disabled fon delite |

### Green
| Название | Hex | Использование |
|----------|-----|---------------|
| Green1 | `#008161` | Успех тёмный |
| Green2 | `#00B286` | Успех |
| Green3 | `#DEF3E7` | Фон успех |

### Grey
| Название | Hex | Использование |
|----------|-----|---------------|
| Grey1 | `#242629` | Основной текст |
| Grey2 | `#6B707D` | Вторичный текст |
| Grey3 | `#979DB0` | Плейсхолдеры, лейблы |
| Grey4 | `#DCE0E6` | Рамки карточек |
| Grey5 | `#E9ECF1` | Hover фон |
| Grey6 | `#F0F1F5` | Светлый фон |
| Grey7 | `#FBFBFB` | Почти белый |

### Нейтральные
| Название | Hex |
|----------|-----|
| Black | `#000000` |
| White | `#FFFFFF` |

### Другие
| Название | Hex | Использование |
|----------|-----|---------------|
| Yellow | `#F6AE2D` | Предупреждения |

---

## Типографика

**Шрифт:** `Rubik` (Google Fonts)  
**Letter-spacing:** `0` для всех стилей

| Токен | Size | Weight | Line-height | CSS |
|-------|------|--------|-------------|-----|
| Medium 36/45 | `36px` | `500` | `45px` | `font-size:36px;font-weight:500;line-height:45px` |
| Medium 26/36 | `26px` | `500` | `36px` | `font-size:26px;font-weight:500;line-height:36px` |
| Medium 24/34 | `24px` | `500` | `34px` | `font-size:24px;font-weight:500;line-height:34px` |
| Medium 22/28 | `22px` | `500` | `28px` | `font-size:22px;font-weight:500;line-height:28px` |
| Medium 20/28 | `20px` | `500` | `28px` | `font-size:20px;font-weight:500;line-height:28px` |
| Medium 18/28 | `18px` | `500` | `28px` | `font-size:18px;font-weight:500;line-height:28px` |
| Regular 18/28 | `18px` | `400` | `28px` | `font-size:18px;font-weight:400;line-height:28px` |
| Medium 16/22 | `16px` | `500` | `22px` | `font-size:16px;font-weight:500;line-height:22px` |
| Regular 16/22 | `16px` | `400` | `22px` | `font-size:16px;font-weight:400;line-height:22px` |
| Medium 16/18 | `16px` | `500` | `18px` | `font-size:16px;font-weight:500;line-height:18px` |
| Regular 16/18 | `16px` | `400` | `18px` | `font-size:16px;font-weight:400;line-height:18px` |
| Medium 14/22 | `14px` | `500` | `22px` | `font-size:14px;font-weight:500;line-height:22px` |
| Regular 14/22 | `14px` | `400` | `22px` | `font-size:14px;font-weight:400;line-height:22px` |
| Regular 12/16 | `12px` | `400` | `16px` | `font-size:12px;font-weight:400;line-height:16px` |

**Часто используемые в проекте:**
- Кнопки L: `Regular 16/22`
- Кнопки S: `Regular 14/22`
- Основной текст: `Regular 16/22`
- Заголовки секций: `Medium 16/22`
- Лейблы полей: `Regular 12/16`
- Плейсхолдеры: `Regular 14/22`

---

## Радиусы

| Название | Значение | Использование |
|----------|----------|---------------|
| radius-card | `16px` | Карточки, модальные окна |
| radius-input | `12px` | Поля ввода |
| radius-btn | `8px` | Кнопки |
| radius-btn-sm | `4px` | Маленькие кнопки, иконки |
| radius-round | `50%` | Круглые кнопки |

---

## Тени

| Название | Значение | Использование |
|----------|----------|---------------|
| shadow-card | `0px -4px 12px 0px rgba(140,142,170,.3), 10px 20px 35px 0px rgba(140,142,170,.4)` | Попапы, карточки |
| shadow-panel | `0px 10px 20px 0px rgba(140,142,170,.25)` | Боковые панели |

---

## Кнопки (размеры)

| Size | Height | Padding | Font-size |
|------|--------|---------|-----------|
| L (default) | `46px` | `12px 18px` | `16px` |
| S | `36px` | `7px 14px` | `14px` |
