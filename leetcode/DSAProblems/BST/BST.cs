public class TreeNode
{
    public int val;
    public TreeNode left;
    public TreeNode right;
    public TreeNode(int val = 0, TreeNode left = null, TreeNode right = null)
    {
        this.val = val;
        this.left = left;
        this.right = right;
    }

    public TreeNode SearchBST(TreeNode root, int val)
    {
        if (root == null)
        {
            return root;
        }
        else if (val > root.val)
        {
            return SearchBST(root.right, val);
        }
        else if (val < root.val)
        {
            return SearchBST(root.left, val);
        }
        else
        {
            return root;
        }
    }
}
