Solution {
    Library
}

maxDepth (root:TreeNode)->(v:i32) {
    ? root == null { <- (0) }

    L := 1 + maxDepth(root.left)
    R := 1 + maxDepth(root.right)

    ? L > R { 
        <- (L)
    } _ { 
        <- (R) 
    }
}