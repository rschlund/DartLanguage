import 'dart:async';

main(){

  getAJoke("This joke comes when it's done").then((value) => print(value))
      .catchError((error) {
    print('Error');
  });

  print('Asap print statement.');

  waitforAsync();

}

Future<String> getAJoke(String message) {
  return new Future<String>.delayed(new Duration(milliseconds: 10000),() {

    //Do a long running task. E.g. Network Call.
    //Return the result
    return message;
  });
}

void waitforAsync() async{
  try {
    String result = await getAJoke("You'll have to wait for this joke");
    print(result);
  } catch(e){
    print(e);
  }
  print('Delayed print statement');
}