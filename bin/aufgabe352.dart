void main(List<String> arguments) 
{
  // aufgabe 1
  printNumber(4);
  printNumber(7);
  printNumber(99);

  // aufgabe 2
  triplePrint('Das');
  triplePrint('ist');
  triplePrint('langweilig');

  // bonus
  convertMinutesToTime(1337);
}

// aufgabe 1
void printNumber(int x)
{
  print(x);
}

// aufgabe 2
void triplePrint(String bla)
{
  for(int i=0;i<3;i++)
  {
    print(bla);
  }
}

void convertMinutesToTime(int minutes)
{
  int hours = minutes ~/60;
  int remainingMinutes = minutes % 60; // kann man auch ersetzen mit 'int remainingMinutes = minutes - hours *  60;'
  print("$minutes Minuten sind $hours ${hours > 1 ? 'Stunden' : 'Stunde'} und $remainingMinutes Minuten");
}