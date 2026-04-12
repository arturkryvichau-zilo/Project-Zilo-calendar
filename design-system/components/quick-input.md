# Quick Input

**Figma:** `node-id=1061-297559`  
**Используется:** попап в календаре (`qi-pop`), боковая панель (`screen-qi`)

## Структура (слои)

```
Quick Input/Variant3
├── Information box  ← баннер (z-index: 0)
└── Container        ← белая карточка (z-index: 1)
    └── Input/New    ← поле ввода с синей рамкой
    └── button       ← "lub wypełnij ręcznie"
```

## Токены

| Токен | Значение |
|-------|----------|
| Gradient | `linear-gradient(145.404deg, #7B61FF 21.934%, #222693 85.233%)` |
| Border input | `2px solid #222693` |
| Card border | `1px solid #DCE0E6` |
| Toolbar bg | `#F6F6FC` |
| Send button | `#222693` |
| Label color | `#979DB0` |
| Text color | `#000000` |
| Manual link | `#6B707D` |

## Размеры

| Элемент | Значение |
|---------|----------|
| Ширина баннера | `352px` |
| Высота баннера | `60px` |
| Overlap (margin-bottom) | `-24px` |
| Ширина карточки | `360px` |
| Border-radius карточки | `16px` |
| Border-radius поля | `12px` |
| Кнопка send | `30×30px`, `border-radius: 50%` |
| Кнопки тулбара | `30×30px`, `border-radius: 4px` |
| Иконки | `20×20px` |

## Тени карточки

```css
box-shadow: 0px -4px 12px 0px rgba(140,142,170,.3),
            10px 20px 35px 0px rgba(140,142,170,.4);
```

## CSS классы (в проекте)

```
.qi-pop-banner    — градиентный баннер
.qi-pop-card      — белая карточка
.qi-pop-input     — поле ввода (синяя рамка)
.qi-pop-top       — область с label + textarea
.qi-pop-lbl       — "Opisz zlecenie"
.qi-pop-ta        — textarea
.qi-pop-toolbar   — нижняя панель (#f6f6fc)
.qi-pop-meth      — кнопки фото/mic
.qi-pop-sep       — вертикальный разделитель
.qi-pop-send      — круглая кнопка отправки
.qi-pop-manual    — "lub wypełnij ręcznie"
.qi-pop-voice     — статус голосового ввода
```

## Поведение

- **Mic** — Web Speech API, `pl-PL`, continuous + interimResults
- **Photo** — открывает нативный file picker, имя файла → textarea
- **Send / Enter** — парсит текст через `initQuickInput`, заполняет форму
- **"lub wypełnij ręcznie"** — открывает ручную форму (`openPanel('form')`)
- **Escape / клик снаружи** — закрывает попап
