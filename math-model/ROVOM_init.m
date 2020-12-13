function [mag_v,mag_D]=ROVOM_init(m,g,C,P,A,v,w)
    %[mag_v,mag_D]=ROVOM_init(m,g,C,P,A,v)
    %   mag_v,v->desired velocity magnitude
    %   mag_D->magnitude of drag
    %   m->mass of vehicle
    %   g->gravitational constant
    %   C->drag coefficient
    %   P->density of medium tavelled in
    %   A->cross-sectional area of vehicle
    %   w->angular velocity
    mag_D=(C*P*A*(v.^2))/2;
    mag_v=v;
end