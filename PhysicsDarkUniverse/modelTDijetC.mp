% modelTDijetC.mp -- do not edit, generated automatically by doc.tex
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
vconnect ("fermion", __i2, __v4, __v3);
vconnect ("gluon", __v4, __o4);
vconnect ("fermion", __v3, __o3);
vconnect ("wiggly,tension=0", __v3, __o3);
vconnect ("scalar,label={$\phi _{(1),,(2)}$}", __v3, __v2, __v1);
vconnect ("gluon", __i1, __v2);
vconnect ("fermion", __v1, __o2);
vconnect ("fermion", __o1, __v1);
vconnect ("wiggly,tension=0", __o1, __v1);
vlabel ("\Large ${q}$", __i2);
vlabel ("\Large ${g}$", __i1);
vlabel ("\Large $g$", __o4);
vlabel ("\Large $\chiDM $", __o3);
vlabel ("\Large $q$", __o2);
vlabel ("\Large $\bar {\chiDM }$", __o1);
vdot (__v1, __v2, __v3, __v4);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
