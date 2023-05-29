import 'package:dsa_dart/tree.dart';
import 'package:test/test.dart';

import '../../bin/tree/height.dart';

void main() {
  late TreeNode<int?>? root;
  test('height should be 3', () {
    root = TreeNode<int?>(3);
    var l1 = TreeNode<int?>(9);
    var r1 = TreeNode<int?>(20);
    var l3 = TreeNode<int?>(15);
    var r3 = TreeNode<int?>(7);

    root?.left = l1;
    root?.right = r1;
    r1.left = l3;
    r1.right = r3;

    expect(getTreeHeight(root), 3);
  });
}
