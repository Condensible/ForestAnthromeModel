% Compute total wood mass, carbon mass, and basal area from input stand DBH
% and Height distributions and wood/carbon densities
function[Wood_Mass,Carb_Mass,Basal_Area] = TreeCarb(Tree_DBH,Tree_Hgt,Wood_Dens,Carb_Dens)
    
    V = pi.*(Tree_DBH.^2).*(Tree_Hgt./3) ; %Cone
    Wood_Mass = V.*Wood_Dens;
    Carb_Mass = Wood_Mass.*Carb_Dens;

    Basal_Area = pi.*(Tree_DBH.^2);