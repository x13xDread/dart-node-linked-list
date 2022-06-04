import 'Node.dart';
class NodeLinkedList
{
  int size = 0;
  Node? head;

  //Empty NodeLinkedList
  NodeLinkedList(){
    this.head = null;
    this.size = 0;
  }

  /**
   * Returns whether or not the list is empty
   * @returns {boolean} true if the list is empty, false otherwise
   */
  bool isEmpty(){
    return this.size == 0;
  }

  /**
   * Adds a node to the end of the list
   * @param {Object} data the data to add to the list
   */
  void push(Object data){
    Node newNode = new Node(data);
    if(this.head == null){
      this.head = newNode;
    }
    else{
      Node? current = this.head;
      while(current?.next != null){
        current = current?.next;
      }
      current?.next = newNode;
    }
    this.size=this.size+1;
  }

  /**
   * Removes the last node from the list
   * @returns {Object} the data of the removed node
   */
  Object? pop()
  {
    if(this.head == null)
    {
      throw new Exception("ListNodeList is empty");
    }
    else
    {
      Node? current = this.head;
      while(current?.next?.next != null)
      {
        current = current?.next;
      }
      Object? data = current?.next?.data;
      current?.next = null;
      this.size=this.size-1;
      return data;
    }
  }

  /**
   * Clears the NodeLinkedList of all data and sets size to 0
   */
  void clear()
  {
    this.head = null;
    this.size = 0;
  }  
  
  /**
   * Returns the data of the node at the given index
   * @returns {String} the string representation of the NodeLinkedList
   */
  String toString()
  {
    String str = "[";
    Node? current = this.head;
    while(current != null)
    {
      if(current.next != null)
      {
        str += current.data.toString() + ", ";
      }
      else
      {
        str += current.data.toString();
      }
      current = current.next;
    }
    str += "]";
    return str;
  }
}