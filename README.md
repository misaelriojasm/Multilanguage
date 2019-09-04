# Multilanguage


## Installation

Put this line in your pubspec.yaml:

```yaml
multilanguage: ^1.0.0
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



## Example
This example is wrapped in a utils Bloc defined to reset the current screen, but you can implement your own:

```dart
import 'package:multilanguage/multilanguage.dart';

...

Widget build(BuildContext context) {
    Multilanguage.setLanguage(path: Languages.en, context: context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: StreamBuilder(
              stream: multilangBloc.stream
              initialData: multilang.get('title'),
              builder: (context, snapshot) {
            return Text(multilang.get('title'));
          }),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              multilangBloc.changeLanguage(context, path)
            },
            child: Text('Change Language'),
          ),
        ),
      ),
    );
  }
```


## License
[MIT](https://choosealicense.com/licenses/mit/)