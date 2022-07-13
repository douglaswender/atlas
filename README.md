# design system

A ideia aqui é centralizar tudo o que é referente a determinado componente, estilos, construtores, e a componentização mesmo do widget.

Cada componente é dividido em 3 arquivos:

- começando pelo aquivo com o prefixo _style, é responsável pela definição dos parâmetros que estilizam o componente

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
```

- o arquivo _styles contém os estilos pré-definidos

```
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

```
class AtlasExampleComponent extends StatelessWidget
    with Component<AtlasExampleStyle, AtlasExampleSharedStyle> {
  final Behaviour behaviour;
  final ComponentStyle<AtlasExampleStyle, AtlasExampleSharedStyle> styles;
  const AtlasExampleComponent({
    Key? key,
    required this.behaviour,
    required this.styles,
  }) : super(key: key);

  @override
  Widget whenRegular(AtlasExampleStyle styles, AtlasExampleSharedStyle? otherStyles,
      BuildContext context, Behaviour childBehaviour) {
    return Example();
  }

  @override
  Widget build(BuildContext context) {
    return render(behaviour, context, styles);
  }
}
```
- por fim o arquivo raiz "atlas_example.dart" define os construtores chamando determinados estilos para cada componente.

```
class AtlasExample extends AtlasExampleComponent {
  const AtlasExample({
    super.key,
    required super.behaviour,
    required super.text,
    required super.onPressed,
    required super.styles,
  });

  AtlasExample.standard({
    super.key,
    required super.text,
    required super.behaviour,
    onPressed,
  }) : super(styles: AtlasExampleStyles.standard());
}
```

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