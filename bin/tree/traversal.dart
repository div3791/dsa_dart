import 'package:dsa_dart/tree.dart';

List<int>? postOrderTree(TreeNode? root, [List<int>? result]) {
  result ??= [];
  if (root == null) return result;

  postOrderTree(root.left, result);

  postOrderTree(root.right, result);

  result.add(root.value);

  return result;
}

List<int>? preOrder(TreeNode? root, [List<int>? result]) {
  result ??= [];
  if (root == null) return result;

  result.add(root.value);

  preOrder(root.left, result);
  preOrder(root.right, result);

  return result;
}

List<int>? inOrder(TreeNode? root, [List<int>? result]) {
  result ??= [];
  if (root == null) return result;

  preOrder(root.left, result);
  result.add(root.value);
  preOrder(root.right, result);

  return result;
}
