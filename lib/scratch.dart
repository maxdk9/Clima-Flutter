import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String  task2Result=await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String>  task2() async{
  String result;
  Duration threeSeconds=Duration(seconds: 3);
  await Future.delayed(threeSeconds,(){
    result = 'task 2 data maxdk9';
    print('Task 2 is complete');
  });
  return result;
}

void task3(task2Data) {
  String result = 'Task 3 is complete';
  print('Task 3 is complete with $task2Data');
}
