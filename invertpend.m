function [oddt_o,xddt_o]=invert_pend(theta,odt,oddt,xdt,xddt)
l=1;
mt=0;
ms=0;
r=1;
js=1;
jt=1;
g=9.81;
kc=5;
kt=1;
ra=100;
r=10;
vg=12;
ms=1;
n=1;
km=1;


Px=(2*mt+2*jt+ms*r*r)/(r*r);
Po=(js+ms*l*l);


xddt_o=(((2*kt*kc*n*n*xdt)/(ra*r))-(2*kt*vg*n/ra)-(ms*g*l*sin(theta))-(ms*xddt*l*cos(theta)))/(Po);
oddt_o=(((2*kt*vg*n)/(ra*r))-(2*kt*kc*n*n*xdt)/(ra*r*r)-(2*km*xdt/(r*r))-ms*l*cos(theta)*oddt+ms*l*odt*sin(theta)*odt)/Px;

