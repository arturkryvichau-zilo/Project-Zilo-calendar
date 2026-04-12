# Switch / Tabs

**Figma:** Design System file `H3k7PPGVqcuJvTjtyV5x3g` (node-id TBD)  
**Storybook:** `https://storybook.zilo.dev/guide/switch/switch.html`  
**Используется:** переключатель между двумя состояниями / вкладками

## Варианты

| Тип | Описание |
|-----|----------|
| Default (off) | Переключатель выключен |
| On | Переключатель включён |
| Null | Нейтральное / неопределённое состояние |
| Disabled | Недоступный |

## Токены

| Токен | Значение |
|-------|----------|
| Track off background | `#DCE0E6` |
| Track on background | `#222693` |
| Track null background | `#979DB0` |
| Track disabled background | `#E9ECF1` |
| Thumb color | `#FFFFFF` |
| Thumb shadow | `0px 2px 4px rgba(0,0,0,.2)` |
| Label color | `#242629` |
| Label disabled | `#979DB0` |

## Размеры (Track)

| Элемент | Значение |
|---------|----------|
| Track width | `40px` |
| Track height | `24px` |
| Track border-radius | `12px` |
| Thumb size | `18px × 18px` |
| Thumb border-radius | `50%` |
| Thumb offset off | `3px` от левого края |
| Thumb offset on | `3px` от правого края |
| Transition | `0.2s ease` |

## CSS классы (в проекте)

```
.dm-switch               — обёртка компонента
.dm-switch__track        — дорожка переключателя
.dm-switch__thumb        — ползунок
.dm-switch__label        — текстовый лейбл

Модификаторы обёртки:
.switch--disabled        — недоступен
.switch__wrapper--on     — включён (трек синий, thumb справа)
.switch__indicator--null — нейтральное состояние (трек серый)
.switch__indicator--on   — включённое состояние
```

## Состояния

| State | Класс | Track bg | Thumb position |
|-------|-------|----------|----------------|
| Off | — | `#DCE0E6` | left: 3px |
| On | `--on` | `#222693` | right: 3px |
| Null | `--null` | `#979DB0` | center |
| Disabled | `--disabled` | `#E9ECF1` | left: 3px |

## HTML структура

```html
<label class="dm-switch">
  <div class="dm-switch__track switch__wrapper--on">
    <div class="dm-switch__thumb switch__indicator--on"></div>
  </div>
  <span class="dm-switch__label">Лейбл</span>
</label>
```

## Поведение

- Клик по компоненту → toggle состояния off/on
- При `switch--disabled` клик игнорируется
- Состояние `null` используется для tri-state (частично выбрано)
- Анимация: CSS transition на `transform` thumb-а

## Типографика

- Label: `Regular 14/22` или `Regular 16/22` (зависит от контекста)
