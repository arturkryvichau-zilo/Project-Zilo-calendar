# Input

**Figma:** Design System `H3k7PPGVqcuJvTjtyV5x3g`, node-id `7665:13616`  
**Storybook:** `https://storybook.zilo.dev/guide/input/input.html`  
**Используется:** поля ввода текста, поиска, дат, номера телефона

## Варианты

| Name | Описание |
|------|----------|
| Plate | Стандартное текстовое поле (таблица, гос.номер) |
| Search | Поле поиска с иконкой |
| Phone number | Поле телефона (с флагом/кодом страны) |
| Location | Поле адреса с иконкой |

| Caption | Описание |
|---------|----------|
| `caption=false` | Только placeholder, центрирован |
| `caption=true` | Floating label: при заполнении label уходит вверх (12px), value снизу |

## Состояния

| State | Описание |
|-------|----------|
| Default | Пустое поле |
| Hover | Наведение мыши |
| Select | Фокус (активный ввод) |
| After write | Заполненное |
| Error | Ошибка валидации |
| Disabled | Недоступный |

## Токены

| Токен | Значение |
|-------|----------|
| Border Default | `1px solid #979DB0` (Grey3) |
| Border Hover | `1px solid #000000` (Black) |
| Border Select (focus) | `2px solid #222693` (Zilo/Blue1) |
| Border After write | `1px solid #979DB0` (Grey3) |
| Border Error | `1px solid #EA4335` (Red) |
| Border Disabled | `1px solid #E9ECF1` (Grey5) |
| Background | `#FFFFFF` |
| Background Disabled | `#FFFFFF` (border disabled визуально обозначает) |
| Text color | `#000000` |
| Placeholder color | `#979DB0` (Grey3) |
| Label (caption) color | `#979DB0` (Grey3) |
| Icon color | `#979DB0` (Grey3) |

## Размеры

| Элемент | Значение |
|---------|----------|
| Height | `56px` |
| Border-radius | `10px` |
| Padding (no caption) | content centered: `top: 19px, left: 12px` |
| Padding (caption, filled) | `top: 8px, left: 12px` |
| Label font-size (caption) | `12px / 16px` |
| Value font-size | `16px / 16px` |
| Icon size | `20×20px` |
| Icon position | `left: 12px, top: 17px` |
| Content with icon | `left: 42px` (12px + 20px icon + 10px gap) |
| Caption gap (label→value) | `2px` |

## CSS классы (в проекте)

```
.dm-input               — обёртка поля
.dm-input__wrap         — внутренний контейнер с рамкой (position: relative)
.dm-input__label        — floating label (12px, сверху при заполнении)
.dm-input__value        — отображаемый placeholder или введённый текст
.dm-input__field        — сам <input> (прозрачный поверх, для ввода)
.dm-input__icon         — иконка слева (20×20)
.dm-input__clear        — кнопка очистки (20×20, right: 12px)
.dm-input__error-msg    — текст ошибки под полем (12px, #EA4335)

Модификаторы:
.input--icon            — с иконкой слева
.input--caption         — floating label режим
.input--error           — ошибка
.input--filled          — есть значение (caption поднят)
.input--disabled        — недоступен
```

## Состояния CSS

| State | Класс/псевдо | Border | Notes |
|-------|-------------|--------|-------|
| Default | — | `1px solid #979DB0` | |
| Hover | `:hover` | `1px solid #000000` | |
| Focus | `:focus-within` | `2px solid #222693` | |
| Filled | `.input--filled` | `1px solid #979DB0` | caption поднят |
| Error | `.input--error` | `1px solid #EA4335` | |
| Disabled | `.input--disabled` | `1px solid #E9ECF1` | pointer-events: none |

## HTML структура

### Без caption (простой placeholder)

```html
<div class="dm-input input--icon">
  <div class="dm-input__wrap">
    <svg class="dm-input__icon"><!-- 20×20 --></svg>
    <input class="dm-input__field" type="text" placeholder="Wyszukaj...">
  </div>
</div>
```

### С floating label (caption=true)

```html
<div class="dm-input input--caption input--filled">
  <div class="dm-input__wrap">
    <span class="dm-input__label">Tablica rejestracyjna</span>
    <input class="dm-input__field" type="text" value="ABC 1234">
  </div>
</div>

<!-- Error state -->
<div class="dm-input input--caption input--error">
  <div class="dm-input__wrap">
    <span class="dm-input__label">Tablica rejestracyjna</span>
    <input class="dm-input__field" type="text">
  </div>
  <span class="dm-input__error-msg">Pole wymagane</span>
</div>
```

## Типографика

- Label (caption, floating): `Regular 12/16` → `font-size:12px; font-weight:400; line-height:16px; color:#979DB0`
- Input / Placeholder: `Regular 16/16` → `font-size:16px; font-weight:400; line-height:16px`
- Error text: `Regular 12/16`, цвет `#EA4335`
- Font: `'Rubik', sans-serif`
