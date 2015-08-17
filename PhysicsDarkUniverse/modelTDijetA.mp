% modelTDijetA.mp -- do not edit, generated automatically by doc.tex
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
vconnect ("gluon", __i2, __v2);
vconnect ("gluon", __i1, __v1);
vconnect ("scalar", __v4, __v2, __v1, __v3);
vconnect ("phantom,tension=0,label={$\phi _{(1),,(2)}$}", __v2, __v1);
vconnect ("phantom,tension=0,label={$\phi _{(1),,(2)}$}", __v4, __v2);
vconnect ("phantom,tension=0,label={$\phi _{(1),,(2)}$}", __v1, __v3);
vconnect ("fermion", __o3, __v4, __o4);
vconnect ("fermion", __o2, __v3, __o1);
vconnect ("wiggly,tension=0", __v4, __o4);
vconnect ("wiggly,tension=0", __v3, __o2);
vlabel ("\Large ${g}$", __i2);
vlabel ("\Large ${g}$", __i1);
vlabel ("\Large $\chiDM $", __o4);
vlabel ("\Large $\bar {\chiDM }$", __o2);
vlabel ("\Large $\bar {q}$", __o3);
vlabel ("\Large $q$", __o1);
vdot (__v1, __v2, __v3, __v4);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
