// Alle Aufgaben in einem File markiert mit Kommentar jeweils!
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

  // aufgabe 3
  reverseInitials('Johnny', 'Depp');
  reverseInitials('Tom', 'Cruise');

  // bonus 1
  convertMinutesToTime(1337);

  // bonus 2
  analyzeGrades([3,2,1,5,6]);

  // bonus 3
  analyzeNumbers([-13,2,31,31,-67]);
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

void reverseInitials(String name, String surname)
{
  print('Umgedrehte Initialen von $name $surname: ${name[name.length-1].toUpperCase()}.${surname[surname.length-1].toUpperCase()}.');
}

// bonus 1
void convertMinutesToTime(int minutes)
{
  int hours = minutes ~/60;
  int remainingMinutes = minutes % 60; // kann man auch ersetzen mit 'int remainingMinutes = minutes - hours *  60;'
  print("$minutes Minuten sind $hours ${hours > 1 ? 'Stunden' : 'Stunde'} und $remainingMinutes Minuten");
}

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

// bonus 2
void analyzeGrades(List<int> grades) {
  // Ruft beide Funktionen nacheinander auf
  printGrades(grades);
  calculateAndPrintAverage(grades);
}

// bonus 3
void findAndPrintExtreme(List<int> numbers) {
  // Findet und gibt kleinste und größte Zahl aus
  // Zeigt auch deren Position in der Liste
  int smallest = numbers.first;
  int smallPos = 0;
  int biggest = numbers.last;
  int bigPos = 0;
  for(int i = 0;i<numbers.length;i++)
  {
    int num = numbers[i];
    if(smallest>num)
    {
      smallest = num;
      smallPos = i+1;
    }
    if(biggest<num)
    {
      biggest = num;
      bigPos = i+1;
    }
  }
  print("Grösste Zahl ist $biggest an Positon $bigPos und kleinste Zahl ist $smallest an Position $smallPos");
}

void printNumberTypes(List<int> numbers) {
  // Zählt und gibt aus:
  // - Wie viele gerade/ungerade Zahlen
  // - Wie viele positive/negative Zahlen
  int ungerade = 0;
  int gerade = 0;
  int positiv = 0;
  int negativ = 0;
  for(int num in numbers)
  {
    ((num % 2) == 0)?gerade++:ungerade++;
    (num >= 0)?positiv++:negativ++;
  }
  print("Das Feld hat $gerade gerade Zahlen und $ungerade ungerade Zahlen");
  print("Das Feld hat $positiv positive Zahlen und $negativ negative Zahlen");
}

void printDistribution(List<int> numbers) {
  // Gibt eine einfache Häufigkeitsverteilung aus
  // z.B. wie oft kommt jede Zahl vor
  Map<int, int> zaehlung = {};
  for (var number in numbers) 
  {
    zaehlung[number] = (zaehlung[number] ?? 0) + 1;
  }
  for(int key in zaehlung.keys)
  {
    print("Die $key kommt ${zaehlung[key]}x vor.");
  }
}

void analyzeNumbers(List<int> numbers) {
  // Ruft alle Funktionen der Reihe nach auf
  // Gibt eine übersichtliche Gesamtanalyse
  print("Analysiere $numbers");
  findAndPrintExtreme(numbers);
  printNumberTypes(numbers);
  printDistribution(numbers);
}
