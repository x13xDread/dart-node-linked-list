import 'NodeLinkedList.dart';
void main() {
  NodeLinkedList list = NodeLinkedList();

  //push itmes to the list
  list.push(1);
  list.push(2);
  list.push(3);
  list.push(4);
  list.push(5);
  //test pop
  print(list.pop());
  //test clear
  list.clear();
  //push more items to the list
  list.push(1);
  list.push(2);
  list.push(3);
  list.push(4);
  list.push(5);
  
  //test toString
  print(list.toString());
}