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
- [Button](design-system/components/button.md) — кнопки (Primary, Secondary, Tertiary, Delite), размеры L/S
- [Input](design-system/components/input.md) — текстовые поля, поиск, floating label (Figma 7665:13616)
- [Select](design-system/components/select.md) — выпадающий список, dropdown
- [Textarea](design-system/components/textarea.md) — многострочный ввод, счётчик символов
- [Switch](design-system/components/switch.md) — переключатель on/off/null

## Токены

- [Design Tokens](design-system/tokens.md) — цвета, типографика, радиусы, тени

## Правила

- Всегда используй токены из `tokens.md`, не хардкоди цвета без причины
- CSS классы пиши по конвенции проекта: `qi-`, `dm-`, `cal-` префиксы
- Шрифт всегда `'Rubik', sans-serif`
- Проект — vanilla HTML/CSS/JS, никаких фреймворков

## Задача

$ARGUMENTS
