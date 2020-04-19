# Multilanguage


## Installation

Put this line in your pubspec.yaml:

```yaml
multilanguage: ^1.1.0
```

## Import

``` dart
import 'package:multilanguage/multilanguage.dart';
```
## Usage

``` dart
import 'package:multilanguage/multilanguage.dart';

...

Widget build(BuildContext context) {
    ...
    Multilanguage.setLanguage(path: Languages.en, context: context);
    ...
    return ...
    ...
    Text(multilang.get('title'))
    ...
}
```
The class languages and its constants is just a kind of enum for the paths of the jsons.
The jsons should follow the next structure, but with your own keys:
```json
{
    'title':'Title'
}
```
Each language should have it's own file and has to be added to a json folder inside a assets folder in the root of the project:

``` yaml
  assets:
   - assets/json/
```



## Example Set
This example is to show for the basic usage, just import it and use the set method.

```dart
import 'package:multilanguage/multilanguage.dart';


  Widget build(BuildContext context) {
    /// SETS THE LANGUAGE INSIDE THE INITIAL APP LAUNCH
    /// YOU COULD SET IT ANYWHERE TO CHANGE THE CURRENT LANGUAGE
    MultiLanguage.setLanguage(path: Languages.en, context: context);

    return MaterialApp(
      routes: {
        '/Home': (context) => HomeView(),
      },
    );
  }

```

## Example Get
This example is to get for the basic usage, just import it and use the get method. You could also use the txt for quick shortCurt. 

```dart
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// YOU COULD USE TXT SHORTCUT TO SEARCH FOR THE TEXT
        title: Text(txt('title')),
      ),
      body: Container(),
    );
  }
}
```

## COMMON ERROR
If you can't use this current package version may because pub packages error thing. So just import it using git to always have the last update of this. Feel free to download it and change the usages as you want. Feedback and contribution is always received.  


## License
[MIT](https://choosealicense.com/licenses/mit/)