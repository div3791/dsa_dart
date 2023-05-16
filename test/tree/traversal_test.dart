import 'package:dsa_dart/tree.dart';
import 'package:test/test.dart';

import '../../bin/tree/height.dart';
import '../../bin/tree/traversal.dart';

void main() {
  late TreeNode<int>? root;

  group(
    'tree traversal',
    () {
      setUp(() {
        root = TreeNode<int>(1);
        var l1 = TreeNode<int>(2);
        var r1 = TreeNode<int>(3);
        var l2 = TreeNode<int>(4);
        var r2 = TreeNode<int>(5);
        var l3 = TreeNode<int>(6);
        var r3 = TreeNode<int>(7);

        root?.left = l1;
        root?.right = r1;
        l1.left = l2;
        l1.right = r2;
        r1.left = l3;
        r1.right = r3;
      });

      test(
        'pre order traversal',
        () {
          expect(preOrder(root), [1, 2, 4, 5, 3, 6, 7]);
        },
      );
      test(
        'post order traversal',
        () {
          expect(postOrderTree(root), [4, 5, 2, 6, 7, 3, 1]);
        },
      );

      test(
        'in order traversal',
        () {
          expect(inOrder(root), [2, 4, 5, 1, 3, 6, 7]);
        },
      );

      test(
        'null tree',
        () {
          root = null;
          expect(inOrder(root), []);
        },
      );

      test(
        'tree height',
        () {
          expect(getTreeHeight(root), 3);
        },
      );
    },
  );
}
