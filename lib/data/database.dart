import 'package:hive/hive.dart';

class ToDoDatabase{

List toDoList=[];
// reference to box 

final  _mybox=Hive.box("mybox");

// run this method if this 1st time opening this app
void createInitialData(){

toDoList=[
  ['Make tutorial',false],
  ['Do Exercise',false]
];
}
// load data from database
void loadData(){
  toDoList=_mybox.get("TODOLIST");
}

// update database

void updateDatabase(){
  _mybox.put("TODOLIST", toDoList);
}

}