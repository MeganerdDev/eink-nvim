# Color Palette and Highlighting Semantics

## Contents

1. [Palette Variants](#palette-variants)
   * [Dark](#dark)
   * [Light](#light)
1. [Highlights](#highlights)

## Palette Variants

The color scheme contains two major color palettes: `dark` and `light`.

Each color palette is composed of two sub-palettes: `palette1` for background colors, and `palette2` for foreground
colors.

Background colors come in three flavours based on their contrast: `hard`, `medium` (default) and `low`.

The semantics of each color in the context of syntax highlighting is described in [Highlights](#highlights).

### Dark

#### Background Colors (palette1)

<sub>hard</sub>  
![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]  
![#ffffff][ffffff]![#ffffff][ffffff]![#3C4841][3C4841]![#384B55][384B55]![#45443c][45443c]  
<sub>medium</sub>  
![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]  
![#ffffff][ffffff]![#514045][514045]![#425047][425047]![#3A515D][3A515D]![#4D4C43][4D4C43]  
<sub>low</sub>  
![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]  
![#ffffff][ffffff]![#59464C][59464C]![#48584E][48584E]![#3F5865][3F5865]![#55544A][55544A]

#### Foreground Colors (palette2)

<sub>default</sub>  
![#D3C6AA][D3C6AA]  
<sub>accents</sub>  
![#E67E80][E67E80]![#E69875][E69875]![#DBBC7F][DBBC7F]![#A7C080][A7C080]![#83C092][83C092]![#7FBBB3][7FBBB3]![#D699B6][D699B6]  
<sub>greys</sub>  
![#7A8478][7A8478]![#859289][859289]![#9DA9A0][9DA9A0]  
<sub>statusline</sub>  
![#A7C080][A7C080]![#D3C6AA][D3C6AA]![#E67E80][E67E80]

### Light

#### Background Colors (palette1)

<sub>hard</sub>  
![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]  
![#F0F2D4][F0F2D4]![#FFE7DE][FFE7DE]![#F3F5D9][F3F5D9]![#ECF5ED][ECF5ED]![#FEF2D5][FEF2D5]  
<sub>medium</sub>  
![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]  
![#ffffff][ffffff]![#FBE3DA][FBE3DA]![#F0F1D2][F0F1D2]![#E9F0E9][E9F0E9]![#FAEDCD][FAEDCD]  
<sub>low</sub>  
![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]![#ffffff][ffffff]  
![#ffffff][ffffff]![#F4DBD0][F4DBD0]![#E5E6C5][E5E6C5]![#E1E7DD][E1E7DD]![#F1E4C5][F1E4C5]

#### Foreground Colors (palette2)

<sub>default</sub>  
![#5C6A72][5C6A72]  
<sub>accents</sub>  
![#F85552][F85552]![#F57D26][F57D26]![#DFA000][DFA000]![#8DA101][8DA101]![#35A77C][35A77C]![#3A94C5][3A94C5]![#DF69BA][DF69BA]  
<sub>greys</sub>  
![#A6B0A0][A6B0A0]![#939F91][939F91]![#829181][829181]  
<sub>statusline</sub>  
![#93B259][93B259]![#708089][708089]![#E66868][E66868]

## Highlights

The color values in the table below correspond to the **dark** variant of the color scheme with the default **medium**
contrast. The semantics of color identifiers, however, apply uniformly to all [Palette Variants](#palette-variants) and
contrast settings.

|                    | Hex     | Identifier    | Usages                                                                                                                    |
|--------------------|---------|---------------|---------------------------------------------------------------------------------------------------------------------------|
| ![#ffffff][hl_bgd] | #ffffff | `bg_dim`      | Dimmed Background                                                                                                         |
| ![#ffffff][hl_bg0] | #ffffff | `bg0`         | Default Background, Line Numbers Background, Signs Background, Status Line Background (inactive), Tab Line Label (active) |
| ![#ffffff][hl_bg1] | #ffffff | `bg1`         | Cursor Line Background, Color Columns, Closed Folds Background, Status Line Background (active), Tab Line Background      |
| ![#ffffff][hl_bg2] | #ffffff | `bg2`         | Popup Menu Background, Floating Window Background, Window Toolbar Background                                              |
| ![#ffffff][hl_bg3] | #ffffff | `bg3`         | List Chars, Special Keys, Tab Line Label Background (inactive)                                                            |
| ![#ffffff][hl_bg4] | #ffffff | `bg4`         | Window Splits Separators, Whitespaces, Breaks                                                                             |
| ![#ffffff][hl_bg5] | #ffffff | `bg5`         | _Not currently used_                                                                                                      |
| ![#61ed11][hl_bgv] | #61ed11 | `bg_visual`   | Visual Selection                                                                                                          |
| ![#514045][hl_bgr] | #514045 | `bg_red`      | Diff Deleted Line Background, Error Highlights                                                                            |
| ![#425047][hl_bgg] | #425047 | `bg_green`    | Diff Added Line Background, Hint Highlights                                                                               |
| ![#3A515D][hl_bgb] | #3A515D | `bg_blue`     | Diff Changed Line Background, Info Highlights                                                                             |
| ![#4D4C43][hl_bgy] | #4D4C43 | `bg_yellow`   | Warning Highlights                                                                                                        |
| ![#D3C6AA][hl_fg]  | #D3C6AA | `fg`          | Default Foreground, Signs, [_Treesitter_: Constants, Variables, Function Parameters, Properties, Symbol Identifiers]      |
| ![#E67E80][hl_red] | #E67E80 | `red`         | Conditional Keywords, Loop Keywords, Exception Keywords, Inclusion Keywords, Uncategorised Keywords, Diff Deleted Signs, Error Messages, Error Signs |
| ![#E69875][hl_ora] | #E69875 | `orange`      | Operator Keywords, Operators, Labels, Storage Classes, Composite Types, Enumerated Types, Tags, Debugging Statements      |
| ![#DBBC7F][hl_yel] | #DBBC7F | `yellow`      | Types, Special Characters, Warning Messages, Warning Signs, [_Treesitter_: Modules, Namespaces]                           |
| ![#A7C080][hl_gre] | #A7C080 | `green`       | Function Names, Method Names, Strings, Characters, Hint Messages, Hint Signs, Search Highlights, [_Treesitter_: Constructors, Fields, Function Calls, Built-In Functions, Macro Functions, String Escapes, Regex Literals, Tag Delimiters, Non-Structured Text] |
| ![#83C092][hl_aqu] | #83C092 | `aqua`        | Constants, Macros, [_Treesitter_: Strings, Characters]                                                                    |
| ![#7FBBB3][hl_blu] | #7FBBB3 | `blue`        | Identifiers, Uncategorised Special Symbols, Diff Changed Text Background, Info Messages, Info Signs, [_Treesitter_: Built-In Constants, Built-In Variables, Macro-Defined Constants, Special Punctuation, Math Environments] |
| ![#D699B6][hl_pur] | #D699B6 | `purple`      | Booleans, Numbers, Preprocessors, [_Treesitter_: Attributes/Annotations]                                                  |
| ![#7A8478][hl_gr0] | #7A8478 | `grey0`       | Line Numbers, Fold Columns, Concealed Text, Foreground UI Elements                                                        |
| ![#859289][hl_gr1] | #859289 | `grey1`       | Comments, Punctuation Delimiters, Closed Folds, Ignored/Disabled, UI Borders, Status Line Text                            |
| ![#9DA9A0][hl_gr2] | #9DA9A0 | `grey2`       | Cursor Line Number, Tab Line Label (inactive)                                                                             |
| ![#A7C080][hl_st1] | #A7C080 | `statusline1` | Menu Selection Background, Tab Line Label Background (active), Status Line Mode Indicator                                 |
| ![#D3C6AA][hl_st2] | #D3C6AA | `statusline2` | Status Line Mode Indicator                                                                                                |
| ![#E67E80][hl_st3] | #E67E80 | `statusline3` | Status Line Mode Indicator                                                                                                |


<!-- dark hard palette1 -->
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg_dim - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg0 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg1 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg2 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg3 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg4 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg5 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg_visual - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg_reg - #ffffff"
[3C4841]: https://fakeimg.pl/96/3C4841/D3C6AA/?text=%233C4841&font=noto&font_size=12 "bg_green - #3C4841"
[384B55]: https://fakeimg.pl/96/384B55/D3C6AA/?text=%23384B55&font=noto&font_size=12 "bg_blue - #384B55"
[45443c]: https://fakeimg.pl/96/45443c/D3C6AA/?text=%2345443c&font=noto&font_size=12 "bg_yellow - #45443c"

<!-- dark medium palette1 -->
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg_dim - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg0 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg1 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg2 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg3 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg4 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg5 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg_visual - #ffffff"
[514045]: https://fakeimg.pl/96/514045/D3C6AA/?text=%23514045&font=noto&font_size=12 "bg_reg - #514045"
[425047]: https://fakeimg.pl/96/425047/D3C6AA/?text=%23425047&font=noto&font_size=12 "bg_green - #425047"
[3A515D]: https://fakeimg.pl/96/3A515D/D3C6AA/?text=%233A515D&font=noto&font_size=12 "bg_blue - #3A515D"
[4D4C43]: https://fakeimg.pl/96/4D4C43/D3C6AA/?text=%234D4C43&font=noto&font_size=12 "bg_yellow - #4D4C43"

<!-- dark low palette1 -->
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg_dim - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg0 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg1 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg2 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg3 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg4 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg5 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/D3C6AA/?text=%23ffffff&font=noto&font_size=12 "bg_visual - #ffffff"
[59464C]: https://fakeimg.pl/96/59464C/D3C6AA/?text=%2359464C&font=noto&font_size=12 "bg_reg - #59464C"
[48584E]: https://fakeimg.pl/96/48584E/D3C6AA/?text=%2348584E&font=noto&font_size=12 "bg_green - #48584E"
[3F5865]: https://fakeimg.pl/96/3F5865/D3C6AA/?text=%233F5865&font=noto&font_size=12 "bg_blue - #3F5865"
[55544A]: https://fakeimg.pl/96/55544A/D3C6AA/?text=%2355544A&font=noto&font_size=12 "bg_yellow - #55544A"

<!-- light hard palette1 -->
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg_dim/bg2 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg0 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg1 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg3 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg4 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg5 - #ffffff"
[F0F2D4]: https://fakeimg.pl/96/F0F2D4/5C6A72/?text=%23F0F2D4&font=noto&font_size=12 "bg_visual - #F0F2D4"
[FFE7DE]: https://fakeimg.pl/96/FFE7DE/5C6A72/?text=%23FFE7DE&font=noto&font_size=12 "bg_reg - #FFE7DE"
[F3F5D9]: https://fakeimg.pl/96/F3F5D9/5C6A72/?text=%23F3F5D9&font=noto&font_size=12 "bg_green - #F3F5D9"
[ECF5ED]: https://fakeimg.pl/96/ECF5ED/5C6A72/?text=%23ECF5ED&font=noto&font_size=12 "bg_blue - #ECF5ED"
[FEF2D5]: https://fakeimg.pl/96/FEF2D5/5C6A72/?text=%23FEF2D5&font=noto&font_size=12 "bg_yellow - #FEF2D5"

<!-- light medium palette1 -->
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg_dim/bg2 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg0 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg1 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg3 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg4 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg5 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg_visual - #ffffff"
[FBE3DA]: https://fakeimg.pl/96/FBE3DA/5C6A72/?text=%23FBE3DA&font=noto&font_size=12 "bg_reg - #FBE3DA"
[F0F1D2]: https://fakeimg.pl/96/F0F1D2/5C6A72/?text=%23F0F1D2&font=noto&font_size=12 "bg_green - #F0F1D2"
[E9F0E9]: https://fakeimg.pl/96/E9F0E9/5C6A72/?text=%23E9F0E9&font=noto&font_size=12 "bg_blue - #E9F0E9"
[FAEDCD]: https://fakeimg.pl/96/FAEDCD/5C6A72/?text=%23FAEDCD&font=noto&font_size=12 "bg_yellow - #FAEDCD"

<!-- light low palette1 -->
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg_dim/bg2 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg0 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg1 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg3 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg4 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg5 - #ffffff"
[ffffff]: https://fakeimg.pl/96/ffffff/5C6A72/?text=%23ffffff&font=noto&font_size=12 "bg_visual - #ffffff"
[F4DBD0]: https://fakeimg.pl/96/F4DBD0/5C6A72/?text=%23F4DBD0&font=noto&font_size=12 "bg_reg - #F4DBD0"
[E5E6C5]: https://fakeimg.pl/96/E5E6C5/5C6A72/?text=%23E5E6C5&font=noto&font_size=12 "bg_green - #E5E6C5"
[E1E7DD]: https://fakeimg.pl/96/E1E7DD/5C6A72/?text=%23E1E7DD&font=noto&font_size=12 "bg_blue - #E1E7DD"
[F1E4C5]: https://fakeimg.pl/96/F1E4C5/5C6A72/?text=%23F1E4C5&font=noto&font_size=12 "bg_yellow - #F1E4C5"

<!-- dark palette2 -->
[D3C6AA]: https://fakeimg.pl/96/D3C6AA/ffffff/?text=%23D3C6AA&font=noto&font_size=12 "fg/statusline2 - #D3C6AA"
[E67E80]: https://fakeimg.pl/96/E67E80/ffffff/?text=%23E67E80&font=noto&font_size=12 "red/statusline3 - #E67E80"
[E69875]: https://fakeimg.pl/96/E69875/ffffff/?text=%23E69875&font=noto&font_size=12 "orange - #E69875"
[DBBC7F]: https://fakeimg.pl/96/DBBC7F/ffffff/?text=%23DBBC7F&font=noto&font_size=12 "yellow - #DBBC7F"
[A7C080]: https://fakeimg.pl/96/A7C080/ffffff/?text=%23A7C080&font=noto&font_size=12 "green/statusline1 - #A7C080"
[83C092]: https://fakeimg.pl/96/83C092/ffffff/?text=%2383C092&font=noto&font_size=12 "aqua - #83C092"
[7FBBB3]: https://fakeimg.pl/96/7FBBB3/ffffff/?text=%237FBBB3&font=noto&font_size=12 "blue - #7FBBB3"
[D699B6]: https://fakeimg.pl/96/D699B6/ffffff/?text=%23D699B6&font=noto&font_size=12 "purple - #D699B6"
[7A8478]: https://fakeimg.pl/96/7A8478/ffffff/?text=%237A8478&font=noto&font_size=12 "grey0 - #7A8478"
[859289]: https://fakeimg.pl/96/859289/ffffff/?text=%23859289&font=noto&font_size=12 "grey1 - #859289"
[9DA9A0]: https://fakeimg.pl/96/9DA9A0/ffffff/?text=%239DA9A0&font=noto&font_size=12 "grey2 - #9DA9A0"

<!-- light palette2 -->
[5C6A72]: https://fakeimg.pl/96/5C6A72/ffffff/?text=%235C6A72&font=noto&font_size=12 "fg - #5C6A72"
[F85552]: https://fakeimg.pl/96/F85552/ffffff/?text=%23F85552&font=noto&font_size=12 "red - #F85552"
[F57D26]: https://fakeimg.pl/96/F57D26/ffffff/?text=%23F57D26&font=noto&font_size=12 "orange - #F57D26"
[DFA000]: https://fakeimg.pl/96/DFA000/ffffff/?text=%23DFA000&font=noto&font_size=12 "yellow - #DFA000"
[8DA101]: https://fakeimg.pl/96/8DA101/ffffff/?text=%238DA101&font=noto&font_size=12 "green - #8DA101"
[35A77C]: https://fakeimg.pl/96/35A77C/ffffff/?text=%2335A77C&font=noto&font_size=12 "aqua - #35A77C"
[3A94C5]: https://fakeimg.pl/96/3A94C5/ffffff/?text=%233A94C5&font=noto&font_size=12 "blue - #3A94C5"
[DF69BA]: https://fakeimg.pl/96/DF69BA/ffffff/?text=%23DF69BA&font=noto&font_size=12 "purple - #DF69BA"
[A6B0A0]: https://fakeimg.pl/96/A6B0A0/ffffff/?text=%23A6B0A0&font=noto&font_size=12 "grey0 - #A6B0A0"
[939F91]: https://fakeimg.pl/96/939F91/ffffff/?text=%23939F91&font=noto&font_size=12 "grey1 - #939F91"
[829181]: https://fakeimg.pl/96/829181/ffffff/?text=%23829181&font=noto&font_size=12 "grey2 - #829181"
[93B259]: https://fakeimg.pl/96/93B259/ffffff/?text=%2393B259&font=noto&font_size=12 "statusline1 - #93B259"
[708089]: https://fakeimg.pl/96/708089/ffffff/?text=%23708089&font=noto&font_size=12 "statusline2 - #708089"
[E66868]: https://fakeimg.pl/96/E66868/ffffff/?text=%23E66868&font=noto&font_size=12 "statusline3 - #E66868"

<!-- highlights descriptions (dark medium values) -->
[hl_bgd]: https://fakeimg.pl/48/ffffff/ffffff/ "bg_dim - #ffffff"
[hl_bg0]: https://fakeimg.pl/48/ffffff/ffffff/ "bg0 - #ffffff"
[hl_bg1]: https://fakeimg.pl/48/ffffff/ffffff/ "bg1 - #ffffff"
[hl_bg2]: https://fakeimg.pl/48/ffffff/ffffff/ "bg2 - #ffffff"
[hl_bg3]: https://fakeimg.pl/48/ffffff/ffffff/ "bg3 - #ffffff"
[hl_bg4]: https://fakeimg.pl/48/ffffff/ffffff/ "bg4 - #ffffff"
[hl_bg5]: https://fakeimg.pl/48/ffffff/ffffff/ "bg5 - #ffffff"
[hl_bgv]: https://fakeimg.pl/48/ffffff/ffffff/ "bg_visual - #ffffff"
[hl_bgr]: https://fakeimg.pl/48/514045/514045/ "bg_reg - #514045"
[hl_bgg]: https://fakeimg.pl/48/425047/425047/ "bg_green - #425047"
[hl_bgb]: https://fakeimg.pl/48/3A515D/3A515D/ "bg_blue - #3A515D"
[hl_bgy]: https://fakeimg.pl/48/4D4C43/4D4C43/ "bg_yellow - #4D4C43"
[hl_fg]:  https://fakeimg.pl/48/D3C6AA/D3C6AA/ "fg - #D3C6AA"
[hl_red]: https://fakeimg.pl/48/E67E80/E67E80/ "red - #E67E80"
[hl_ora]: https://fakeimg.pl/48/E69875/E69875/ "orange - #E69875"
[hl_yel]: https://fakeimg.pl/48/DBBC7F/DBBC7F/ "yellow - #DBBC7F"
[hl_gre]: https://fakeimg.pl/48/A7C080/A7C080/ "green - #A7C080"
[hl_aqu]: https://fakeimg.pl/48/83C092/83C092/ "aqua - #83C092"
[hl_blu]: https://fakeimg.pl/48/7FBBB3/7FBBB3/ "blue - #7FBBB3"
[hl_pur]: https://fakeimg.pl/48/D699B6/D699B6/ "purple - #D699B6"
[hl_gr0]: https://fakeimg.pl/48/7A8478/7A8478/ "grey0 - #7A8478"
[hl_gr1]: https://fakeimg.pl/48/859289/859289/ "grey1 - #859289"
[hl_gr2]: https://fakeimg.pl/48/9DA9A0/9DA9A0/ "grey2 - #9DA9A0"
[hl_st1]: https://fakeimg.pl/48/A7C080/A7C080/ "statusline1 - #A7C080"
[hl_st2]: https://fakeimg.pl/48/D3C6AA/D3C6AA/ "statusline2 - #D3C6AA"
[hl_st3]: https://fakeimg.pl/48/E67E80/E67E80/ "statusline3 - #E67E80"
