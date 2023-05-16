import 'package:dsa_dart/tree.dart';

int getTreeHeight(TreeNode? node) {
  if (node == null) return 0;
  int left = getTreeHeight(node.left);
  int right = getTreeHeight(node.right);

  return left > right ? left + 1 : right + 1;
}
