% Establish Tree Stand using stem density, and DBH and Height coefficients
function[Tree_DBHs,Tree_Hgts] = TreeStand(Tree_N,Tree_DBH_Coefs,Tree_Hgt_Coefs)

    Tree_DBHs = gamrnd(Tree_DBH_Coefs(1),Tree_DBH_Coefs(2),Tree_N,1); 
    Tree_DBHs(Tree_DBHs<Tree_DBH_Coefs(3)) = Tree_DBH_Coefs(3);
    Tree_DBHs_Big_i = find(Tree_DBHs>Tree_DBH_Coefs(4));
    Tree_DBHs(Tree_DBHs_Big_i) = gamrnd(Tree_DBH_Coefs(1),Tree_DBH_Coefs(2),numel(Tree_DBHs_Big_i),1);
    Tree_DBHs(Tree_DBHs>Tree_DBH_Coefs(4)) = Tree_DBH_Coefs(4);
    Tree_DBHs = sort(Tree_DBHs);
    Tree_Hgts = Tree_Hgt_Coefs(1).*atan(Tree_DBHs.*normrnd(Tree_Hgt_Coefs(2),Tree_Hgt_Coefs(3),Tree_N,1));
    Tree_Hgts(Tree_Hgts>Tree_Hgt_Coefs(4)) = Tree_Hgt_Coefs(4);