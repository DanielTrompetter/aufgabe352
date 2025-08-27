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

  // bonus 1
  convertMinutesToTime(1337);

  // bonus 2
  analyzeGrades([3,2,1,5,6]);
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

// bonus 1
void convertMinutesToTime(int minutes)
{
  int hours = minutes ~/60;
  int remainingMinutes = minutes % 60; // kann man auch ersetzen mit 'int remainingMinutes = minutes - hours *  60;'
  print("$minutes Minuten sind $hours ${hours > 1 ? 'Stunden' : 'Stunde'} und $remainingMinutes Minuten");
}

// bonus 2
void printGrades(List<int> grades) {
  // Gibt alle Noten nacheinander aus
  // z.B.: Note 1: 2, Note 2: 1, Note 3: 3
  for(int counter = 0; counter <grades.length;counter++)  
  {
    print("Note ${counter+1}: ${grades[counter]}");
  }
}

void calculateAndPrintAverage(List<int> grades) {
  // Berechnet den Durchschnitt und gibt aus:
  // "Der Durchschnitt ist: 2.0"
  double average = 0.0;
  for(int grade in grades)
  {
    average += grade;
  }
  average /= grades.length;
  print("Der Durchschnitt ist: ${average.toStringAsFixed(2)}");
}

// Hauptfunktion:
void analyzeGrades(List<int> grades) {
  // Ruft beide Funktionen nacheinander auf
  printGrades(grades);
  calculateAndPrintAverage(grades);
}
