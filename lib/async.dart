import 'dart:async';

main() async{
  getAJoke().then((value) => print(value))
      .catchError((error) {
    print('Error');
  });
  print('Another print statement.');

  try {
    String result = await getslowJoke();
    print(result);
  } catch(e){
    print(e);
  }
  print('Delayed print statement');
}

Future<String> getAJoke() {
  return new Future<String>.delayed(new Duration(milliseconds: 5000),() {

    //Do a long running task. E.g. Network Call.
    //Return the result
    return "This is a delayed joke";
  });
}

Future<String> getslowJoke() {
  return new Future<String>.delayed(new Duration(milliseconds: 2000),() {

    //Do a long running task. E.g. Network Call.
    //Return the result
    return "This is a slow joke";
  });
}