% modelTDijetD.mp -- do not edit, generated automatically by doc.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.48453pt#, 70*1.48453pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.48453pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__i1, __i2);
vright (__o1, __o2, __o3, __o4);
vconnect ("fermion", __i1, __v1, __v2);
vconnect ("fermion", __v3, __v4, __i2);
vconnect ("gluon", __v4, __o4);
vconnect ("gluon", __v1, __o1);
vconnect ("scalar,label={$\phi _{(1),,(2)}$}", __v2, __v3);
vconnect ("fermion", __o3, __v3);
vconnect ("wiggly,tension=0", __o3, __v3);
vconnect ("fermion", __v2, __o2);
vconnect ("wiggly,tension=0", __v2, __o2);
vlabel ("\Large ${\bar {q}}$", __i2);
vlabel ("\Large $q$", __i1);
vlabel ("\Large ${g}$", __o4);
vlabel ("\Large ${g}$", __o1);
vlabel ("\Large $\chiDM $", __o2);
vlabel ("\Large $\bar {\chiDM }$", __o3);
vdot (__v1, __v2, __v3, __v4);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
