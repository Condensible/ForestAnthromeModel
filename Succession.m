% Prescribe Succession in Post-Clearing Forest
% Uses Tau parameter to relax input distribution to the initial old growth
% forest distribution
function[Tree_DBHs,Tree_Hgts] = Succession(Tau_Recov,Tree_N,Tree_DBHs,Tree_Hgts,Tree_DBH_Coefs_0,Tree_Hgt_Coefs_0)

    [Tree_DBHs,Tree_DBHs_i] = sort(Tree_DBHs);
    Tree_Hgts = Tree_Hgts(Tree_DBHs_i);

    [Tree_DBHs_0,Tree_Hgts_0] = TreeStand(Tree_N,Tree_DBH_Coefs_0,Tree_Hgt_Coefs_0);
    [Tree_DBHs_0,Tree_DBHs_0_i] = sort(Tree_DBHs_0);
    Tree_Hgts_0 = Tree_Hgts_0(Tree_DBHs_0_i);

    Tree_DBHs = ((1-Tau_Recov).*Tree_DBHs) + (Tau_Recov.*Tree_DBHs_0);
    Tree_Hgts = ((1-Tau_Recov).*Tree_Hgts) + (Tau_Recov.*Tree_Hgts_0);


