class LinkedListNode<E> {
  final E? value;
  LinkedListNode<E>? next;

  LinkedListNode({this.value});
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

class LinkedList<E> {
  LinkedListNode<E>? head;
  LinkedListNode<E>? tail;
  int _size = 0;

  LinkedListNode<E>? prepend(E value) {
    var node = LinkedListNode<E>(value: value);
    if (head == null) {
      tail = node;
    } else {
      node.next = head;
    }
    head = node;
    _size += 1;
    return head;
  }

  LinkedListNode<E>? append(E value) {
    var node = LinkedListNode<E>(value: value);
    if (head == null) {
      prepend(value);
    } else {
      tail?.next = node;
      tail = node;
      _size += 1;
    }
    return tail;
  }

  LinkedListNode<E>? deleteFirst() {
    if (head == null) return null;
    var item = head;
    head = head?.next;
    _size -= 1;
    return item;
  }

  LinkedListNode<E>? deleteLast() {
    if (tail == null) return null;
    var item = tail;
    LinkedListNode<E>? current = head;
    while (current?.next != tail) {
      current = current?.next;
    }
    current?.next = null;
    tail = current;
    _size -= 1;
    return item;
  }

  LinkedListNode<E>? deleteByValue(E value) {
    if (tail == null) return null;
    LinkedListNode<E>? current = head;
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
    LinkedListNode<E>? currentNode;
    currentNode = head!;
    while (currentNode != null) {
      print('${currentNode.value}');
      currentNode = currentNode.next;
    }
  }

  int get size => _size;
}
