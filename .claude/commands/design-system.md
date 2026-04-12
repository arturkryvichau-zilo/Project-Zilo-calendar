# Design System — Zilo Calendar

Ты работаешь с дизайн системой проекта Zilo Calendar.

## Как использовать

При реализации или изменении компонента:

1. Прочитай спек компонента из `design-system/components/<name>.md`
2. Прочитай токены из `design-system/tokens.md`
3. Используй точные значения из спеков — цвета, размеры, отступы, тени
4. Сверяйся с Figma через MCP если нужны детали: node-id есть в каждом спеке

## Компоненты

- [Quick Input](design-system/components/quick-input.md) — попап быстрого ввода (`qi-pop`, `screen-qi`)

## Токены

- [Design Tokens](design-system/tokens.md) — цвета, типографика, радиусы, тени

## Правила

- Всегда используй токены из `tokens.md`, не хардкоди цвета без причины
- CSS классы пиши по конвенции проекта: `qi-`, `dm-`, `cal-` префиксы
- Шрифт всегда `'Rubik', sans-serif`
- Проект — vanilla HTML/CSS/JS, никаких фреймворков

## Задача

$ARGUMENTS
