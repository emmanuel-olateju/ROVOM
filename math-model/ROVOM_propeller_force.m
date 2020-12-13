function [Fh,Fv]=ROVOM_propeller_force(tether,w,mag_v,mag_D,m,g)
    %[mag_v,mag_D]=ROVOM_init(m,g,C,P,A,v)
    %   Fh->horizontal propeller force
    %   Fv->vertical propeller force
    %   tether->desired angle of vehicle inclination
    %   w->angular velocity
    %   mag_v->velocity magnitude
    %   mag_D->drag magnitude
    %   m->cross-mass of vehicle
    %   g->gravitational constant
    a=w*mag_v*(cos(tether)+(j*sin(tether)));
    R=m*g*(cos(tether)+sin(tether));
    Fh=(m*abs(a))+(mag_D*ones(1,length(tether)))+R;
    Fv=R;
end