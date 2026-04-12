# Select / Dropdown

**Figma:** Design System file `H3k7PPGVqcuJvTjtyV5x3g` (node-id TBD)  
**Storybook:** `https://storybook.zilo.dev/guide/select/select.html`  
**Используется:** выбор из списка, дата, тип услуги, клиент

## Варианты

| Тип | Описание |
|-----|----------|
| Default | Стандартный селект |
| Expanded | Открытый дропдаун |
| Selected | Выбранное значение |
| Error | Состояние ошибки |
| Disabled | Недоступный |

## Токены

| Токен | Значение |
|-------|----------|
| Border default | `1px solid #DCE0E6` |
| Border focus / expanded | `2px solid #222693` |
| Border error | `1px solid #EA4335` |
| Border disabled | `1px solid #DCE0E6` |
| Background | `#FFFFFF` |
| Background disabled | `#F0F1F5` |
| Background dropdown | `#FFFFFF` |
| Background option hover | `#F3F3FF` |
| Background option selected | `#EAF1FC` → `#F3F3FF` |
| Text color | `#242629` |
| Placeholder color | `#979DB0` |
| Arrow icon color | `#6B707D` |
| Arrow icon active | `#222693` |
| Dropdown shadow | `0px 10px 20px 0px rgba(140,142,170,.25)` |
| Option selected checkmark | `#222693` |

## Размеры

| Элемент | Значение |
|---------|----------|
| Height | `46px` |
| Padding | `12px 14px` |
| Border-radius input | `12px` |
| Border-radius dropdown | `12px` |
| Font-size | `16px` |
| Line-height | `22px` |
| Font-weight | `400` |
| Option height | `44px` |
| Option padding | `11px 14px` |
| Max dropdown height | `220px` (scroll) |

## CSS классы (в проекте)

```
.dm-select               — обёртка компонента
.dm-select__label        — лейбл над полем
.dm-select__input        — кликабельная область (имитирует input)
.dm-select__value        — отображаемое значение / placeholder
.dm-select__arrow        — иконка стрелки
.dm-select__dropdown     — список опций
.dm-select__option       — элемент списка
.dm-select__error-msg    — текст ошибки

Модификаторы:
.select__input--expanded  — открыт (стрелка вверх, рамка синяя)
.select__input--selected  — выбрано значение
.select__input--error     — ошибка
.select__input--disabled  — недоступен
.select__option--active   — выбранная опция
```

## Состояния

| State | Класс | Border | Background |
|-------|-------|--------|------------|
| Default | — | `1px solid #DCE0E6` | `#FFFFFF` |
| Expanded | `--expanded` | `2px solid #222693` | `#FFFFFF` |
| Selected | `--selected` | `1px solid #DCE0E6` | `#FFFFFF` |
| Error | `--error` | `1px solid #EA4335` | `#FFFFFF` |
| Disabled | `--disabled` | `1px solid #DCE0E6` | `#F0F1F5` |

## HTML структура

```html
<div class="dm-select">
  <label class="dm-select__label">Лейбл</label>
  <div class="dm-select__input select__input--selected" role="combobox">
    <span class="dm-select__value">Выбранное значение</span>
    <svg class="dm-select__arrow">...</svg>
  </div>
  <div class="dm-select__dropdown" hidden>
    <div class="dm-select__option select__option--active">Опция 1</div>
    <div class="dm-select__option">Опция 2</div>
  </div>
  <span class="dm-select__error-msg">Текст ошибки</span>
</div>
```

## Типографика

- Label: `Regular 12/16`
- Value / Placeholder: `Regular 16/22`
- Option text: `Regular 16/22`
- Error text: `Regular 12/16`, цвет `#EA4335`
