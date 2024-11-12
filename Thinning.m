% Remove trees from the DBH and Height distributons randomly using input
% probability and tree size range to be thinned
function[DBHs2Keep,Hgts2Keep] = Thinning(DBHs2Keep,Hgts2Keep,Thinning_Coefs)

    Trees2Thin_i = find(DBHs2Keep>Thinning_Coefs(2) & DBHs2Keep<Thinning_Coefs(3)); 
    Trees2Thin_f = find(rand(numel(Trees2Thin_i),1)<Thinning_Coefs(1));
    DBHs2Keep(Trees2Thin_i(Trees2Thin_f)) = nan;
    Hgts2Keep(Trees2Thin_i(Trees2Thin_f)) = nan;
