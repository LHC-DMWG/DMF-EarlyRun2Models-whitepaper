% appendixmodelSmonojetTopTriangle.mp -- do not edit, generated automatically by doc.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.72668pt#, 70*1.72668pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.72668pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__i1, __i2);
vright (__o1, __o2);
vtop (__isr);
vbottom (__pisr);
vpolygonn ("empty", __v, 3);
vconnect ("fermion", __i2, __v6);
vconnect ("phantom", __i1, __pv1, __v1);
vconnect ("gluon,tension=0", __i1, __v1);
vconnect ("gluon", __v6, __v3);
vconnect ("dashes,label={\LARGE $S,,P$}", __v2, __v5);
vconnect ("fermion,tension=1.2", __o2, __v5, __o1);
vdot (__v1, __v6, __v2, __v3, __v5);
vfreeze;
vconnect ("phantom", __pv1, __pisr);
vconnect ("fermion", __v6, __isr);
vlabel ("\LARGE ${g}$", __i1);
vlabel ("\LARGE ${q}$", __i2);
vlabel ("\LARGE ${q}$", __isr);
vlabel ("\LARGE $\bar \chi $", __o1);
vlabel ("\LARGE $\chi $", __o2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
