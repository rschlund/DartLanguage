void main (){

  //if-else, while, do while
  if(true){
    print('boring');
  } else {
    print('shit happens');
  }

  while(false){
    print('Sorry');
  }

  do{
    print('forever');
    break;
  } while(true);

  //for
  for (int ctr = 0; ctr<=5; ctr++){
    print(ctr);
  }

  // for/forEach für Mengen und Listen
  var cities = ['München', 'Stuttgart', 'Ulm'];

  for (var city in cities){
    print(city);
  }
  cities.forEach(
    (city){
      print(city);
    }
  );

  // switch
  switch("0") {
    case "0":
    case "A":
      print("Sehr");
      break;//break kann nicht weggelassen werden!
    case "B":
      print("Gut");
      break;
    default: print("Invalid choice");
      break;
  }

}