% appendixmodelSmonojetTopBox.mp -- do not edit, generated automatically by doc.tex
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
vright (__o1, __o2, __hisr, __isr);
vpolygonn ("empty", __v, 4);
vconnect ("gluon", __i2, __v4);
vconnect ("gluon", __i1, __v1);
vconnect ("dashes,label={\LARGE $S,,P$}", __v2, __vwimp);
vlabel ("\LARGE ${g}$", __i1);
vlabel ("\LARGE ${g}$", __i2);
vlabel ("\LARGE ${g}$", __isr);
vlabel ("\LARGE $\bar \chi $", __o1);
vlabel ("\LARGE $\chi $", __o2);
vconnect ("fermion", __o2, __vwimp, __o1);
vdot (__v1, __v2, __v3, __v4, __vwimp);
vconnect ("gluon", __v3, __isr);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
