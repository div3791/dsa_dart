class LinkedListNode {
  final dynamic value;
  LinkedListNode? next;

  LinkedListNode({this.value}) {
    next = null;
  }
}
/*
  ----------------------------------
  Operation       | Time Complexity
  ----------------------------------
  prepend         | O(1)
  ----------------------------------
  append          | O(1)
  ----------------------------------
  delete first    | O(1)
  ----------------------------------
  delete last     | O(n)
  ----------------------------------
  delete by value | O(n)
  ----------------------------------
  print list      | O(n)
  ----------------------------------
  search          | O(n)
  ----------------------------------
*/

class LinkedList {
  LinkedListNode? head;
  LinkedListNode? tail;
  int _size = 0;

  LinkedListNode? prepend(value) {
    var node = LinkedListNode(value: value);
    if (head == null) {
      tail = node;
    } else {
      node.next = head;
    }
    head = node;
    _size += 1;
    return head;
  }

  LinkedListNode? append(value) {
    var node = LinkedListNode(value: value);
    if (head == null) {
      prepend(value);
    } else {
      tail?.next = node;
      tail = node;
      _size += 1;
    }
    return tail;
  }

  LinkedListNode? deleteFirst() {
    if (head == null) return null;
    var item = head;
    head = head?.next;
    _size -= 1;
    return item;
  }

  LinkedListNode? deleteLast() {
    if (tail == null) return null;
    var item = tail;
    LinkedListNode? current = head;
    while (current?.next != tail) {
      current = current?.next;
    }
    current?.next = null;
    tail = current;
    _size -= 1;
    return item;
  }

  LinkedListNode? deleteByValue(value) {
    if (tail == null) return null;
    LinkedListNode? current = head;
    while (current != null) {
      if (current.next?.value == value) break;
      current = current.next;
    }
    var item = current?.next;
    current?.next = item?.next;
    _size -= 1;
    return current?.next;
  }

  printList() {
    if (head == null) return;
    LinkedListNode? currentNode;
    currentNode = head!;
    while (currentNode != null) {
      print('${currentNode.value}');
      currentNode = currentNode.next;
    }
  }

  int get size => _size;
}
