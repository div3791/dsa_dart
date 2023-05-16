import 'package:dsa_dart/tree.dart';
import 'package:test/test.dart';

import '../../bin/tree/height.dart';
import '../../bin/tree/traversal.dart';

void main() {
  late TreeNode? root;

  group(
    'tree traversal',
    () {
      setUp(() {
        root = TreeNode(1);
        TreeNode l1 = TreeNode(2);
        TreeNode r1 = TreeNode(3);
        TreeNode l2 = TreeNode(4);
        TreeNode r2 = TreeNode(5);
        TreeNode l3 = TreeNode(6);
        TreeNode r3 = TreeNode(7);

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
