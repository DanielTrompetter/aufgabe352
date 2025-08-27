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