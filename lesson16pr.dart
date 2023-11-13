import 'dart:io';
import 'dart:math';

void main() {
  // print(fib(4)); 
  // task1();
  // task2();
  // task3();
  // String n = '12345';
  // print(task4(n));
}


String task4(String n) {
  print(n);
  if (n.length <= 1) {
    return n;
  } else {
    int firstDigit = int.parse(n[0]);
    return (firstDigit + int.parse(task4(n.substring(1)))).toString();
  }
}

void task1() {
  int a = Random().nextInt(10);
  int b = Random().nextInt(10);
  int correct = a + b;

  print('Решите пример: $a + $b = ');
  print('Ваш ответ:');

  int myInput = int.parse(stdin.readLineSync()!);

  if (myInput == correct) {
    print('Правильно');
  } else {
    print('Неправильно. Попробуйте ещё раз.');
    task1();
  }
}

void task2() {
  int min = 1;
  int max = 6;
  int dots = Random().nextInt(max - min) + min;

  print('У вас выпало $dots точек(ки)(а)');

  print('1 - бросить еще раз');
  print('2 - закончить');

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    task2();
  } else if (choice == 2) {
    print('wasted');
  } else {
    print('Введите только 1 или 2');
    task2();
  }
}

void task3() {
  print('Введите число:');
  int number = int.parse(stdin.readLineSync()!);
  print('Введите степень:');
  int degree = int.parse(stdin.readLineSync()!);
  print('Ответ:${pow(number, degree)}');
}

int fib(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fib(n - 1) + fib(n - 2);
  }
}