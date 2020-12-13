function [Fh,Fv,Fz]=ROVOM_propeller_force_3D(pfi,tether,w,w_pfi,mag_v,mag_D,m,g)
    a=w_pfi*v.*[cos(tether)*cos(pfi) sin(tether) cos(tether)*sin(pfi)];
    
end