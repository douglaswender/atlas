# design system

A ideia aqui é centralizar tudo o que é referente a determinado componente, estilos, construtores, e a componentização mesmo do widget.

Cada componente é dividido em 3 arquivos:

- começando pelo aquivo com o prefixo _style, é responsável pela definição dos parâmetros que estilizam o componente e também pelos estilos pré-definidos na class "Styles".

```
class AtlasExampleStyle {
    final Color? backgroundColor;
    final BoxDecoration boxDecoration;

    AtlasExampleStyle({this.backgroundColor, required this.boxDecoration});

}

class AtlasExampleSharedStyle {
    final Style<AtlasTextStyle, AtlasTextSharedStyle> textStyle;

    AtlasExampleSharedStyle({required this.textStyle});
}

class AtlasExampleStyles {
    static Style<AtlasExampleStyle, AtlasExampleSharedStyle> standard() =>
      Style<AtlasExampleStyle, AtlasExampleSharedStyle>(
        regular: AtlasExampleStyle(
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        loading: AtlasExampleStyle(
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        disabled: AtlasExampleStyle(
          backgroundColor: AtlasTheme.t().color.danger,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        error: AtlasExampleStyle(
          backgroundColor: AtlasTheme.t().color.warning,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        shared: AtlasExampleSharedStyle(
          textStyle: AtlasTextStyles.bodyStyle,
        ),
      );
}
}

```

- o com prefixo '_component' que determina como o componente se comporta de acordo com o estado (behaviour)



## Atoms
- Text (body, heading, caption, link)
- TextField
- Checkbox
- RadioButton
- Toggle
- Tag
- Card
- Icon
- Image

## Molecules

- IconButton

## Organisms

## Tokens
- Colors
- Sizes
- Icons