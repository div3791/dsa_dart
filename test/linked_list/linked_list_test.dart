import 'package:dsa_dart/linked_list.dart';
import 'package:test/test.dart';

void main() {
  group(
    "Linked List",
    () {
      test(
        "prepend to list",
        () {
          var list = LinkedList();
          list.prepend(10);
          expect(list.head?.value, 10);
        },
      );
      test(
        "append to list",
        () {
          var list = LinkedList();
          list.append(10);
          expect(list.tail?.value, 10);
        },
      );
      test(
        "list is empty",
        () {
          var list = LinkedList();
          expect(list.tail?.value, null);
        },
      );
      test(
        "first node is not null",
        () {
          var list = LinkedList();
          list.prepend(10);
          list.prepend(20);
          expect(list.head?.value, 20);
        },
      );
      test(
        "last node is not null",
        () {
          var list = LinkedList();
          list.prepend(10);
          list.prepend(20);
          expect(list.tail?.value, 10);
        },
      );
      test(
        "size is 0",
        () {
          var list = LinkedList();
          expect(list.size, 0);
        },
      );
      test(
        "size is 2",
        () {
          var list = LinkedList();
          list.append(10);
          list.append(20);
          expect(list.size, 2);
        },
      );
      test(
        "delete first",
        () {
          var list = LinkedList();
          list.append(10);
          list.append(20);
          list.append(30);
          list.deleteFirst();
          list.printList();
          expect(list.size, 2);
        },
      );
      test(
        "delete last",
        () {
          var list = LinkedList();
          list.append(10);
          list.append(20);
          list.deleteLast();
          expect(list.size, 1);
        },
      );
      test(
        "print list",
        () {
          var list = LinkedList();
          list.append(10);
          list.append(20);
          list.append(30);
          list.printList();
          expect(list.size, 3);
        },
      );
      test(
        "delete by value",
        () {
          var list = LinkedList();
          list.append(10);
          list.append(20);
          list.append(30);
          list.append(40);
          list.append(50);
          list.append(60);
          list.deleteByValue(60);
          list.printList();
          expect(list.size, 5);
        },
      );
    },
  );
}
