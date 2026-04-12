# Textarea

**Figma:** Design System file `H3k7PPGVqcuJvTjtyV5x3g` (node-id TBD)  
**Storybook:** `https://storybook.zilo.dev/guide/textarea/textarea.html`  
**Используется:** описание заказа, комментарии, заметки

## Варианты

| Тип | Описание |
|-----|----------|
| Default | Стандартное поле |
| Error | Состояние ошибки |
| Filled | Есть введённый текст |
| Disabled | Недоступное |

## Токены

| Токен | Значение |
|-------|----------|
| Border default | `1px solid #DCE0E6` |
| Border focus | `2px solid #222693` |
| Border error | `1px solid #EA4335` |
| Background | `#FFFFFF` |
| Background disabled | `#F0F1F5` |
| Text color | `#242629` |
| Placeholder color | `#979DB0` |
| Label color | `#6B707D` |
| Error color | `#EA4335` |
| Counter color | `#979DB0` |

## Размеры

| Элемент | Значение |
|---------|----------|
| Min height (rows=2) | `~88px` |
| Padding | `12px 14px` |
| Border-radius | `12px` |
| Font-size | `16px` |
| Line-height | `22px` |
| Font-weight | `400` |
| Max length | `250` символов |
| Default rows | `2` |
| Resize | `none` (нет ресайза) |

## CSS классы (в проекте)

```
.dm-textarea               — обёртка компонента
.dm-textarea__label        — лейбл над полем
.dm-textarea__field        — сам <textarea>
.dm-textarea__footer       — строка с счётчиком и ошибкой
.dm-textarea__counter      — счётчик символов (X/250)
.dm-textarea__error-msg    — текст ошибки

Модификаторы:
.textarea__input--error    — ошибка (красная рамка)
.textarea__input--filled   — есть текст
```

## Состояния

| State | Border | Background | Text |
|-------|--------|------------|------|
| Default | `1px solid #DCE0E6` | `#FFFFFF` | `#242629` |
| Focus | `2px solid #222693` | `#FFFFFF` | `#242629` |
| Filled | `1px solid #DCE0E6` | `#FFFFFF` | `#242629` |
| Error | `1px solid #EA4335` | `#FFFFFF` | `#242629` |
| Disabled | `1px solid #DCE0E6` | `#F0F1F5` | `#979DB0` |

## HTML структура

```html
<div class="dm-textarea">
  <label class="dm-textarea__label">Лейбл</label>
  <textarea
    class="dm-textarea__field"
    rows="2"
    maxlength="250"
    placeholder="Плейсхолдер"
  ></textarea>
  <div class="dm-textarea__footer">
    <span class="dm-textarea__error-msg">Текст ошибки</span>
    <span class="dm-textarea__counter">0/250</span>
  </div>
</div>
```

## Типографика

- Label: `Regular 12/16`
- Textarea text: `Regular 16/22`
- Placeholder: `Regular 16/22`, цвет `#979DB0`
- Counter: `Regular 12/16`, цвет `#979DB0`
- Error text: `Regular 12/16`, цвет `#EA4335`
