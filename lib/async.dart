import 'dart:async';

main(){

  getAJoke("This joke comes when it's done", 2000).then((value) => print(value))
      .catchError((error) {
    print('Error');
  });

  print('Asap print statement.');

  waitforAsync("You'll have to wait for this joke", 2000);

}

Future<String> getAJoke(String message, int duration) {
  return new Future<String>.delayed(new Duration(milliseconds: duration),() {

    //Do a long running task. E.g. Network Call.
    //Return the result
    return message;
  });
}

void waitforAsync(String message, int duration) async{
  try {
    String result = await getAJoke(message, duration);
    print(result);
  } catch(e){
    print(e);
  }
  print('Delayed print statement');
}