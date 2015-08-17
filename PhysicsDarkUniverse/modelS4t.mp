% modelS4t.mp -- do not edit, generated automatically by doc.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.58455pt#, 70*1.58455pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.58455pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__i1, __i2);
vright (__o1, __o2);
vconnect ("fermion", __i2, __vup);
vlabel ("\LARGE $u$", __i2);
vconnect ("gluon", __i1, __vdown);
vlabel ("\LARGE $g$", __i1);
vconnect ("fermion, label={\LARGE $t$}", __vup, __vdown);
vconnect ("fermion", __vdown, __o1);
vlabel ("\Large $t$", __o1);
vconnect ("wiggly", __vup, __o2);
vlabel ("\Large $V$", __o2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
