% modelMonoHbaryonicggS.mp -- do not edit, generated automatically by doc.tex
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
vright (__o1, __o2, __o3);
vconnect ("gluon", __i1, __vt1);
vconnect ("gluon", __i2, __vt2);
vlabel ("\Large $g$", __i2);
vlabel ("\Large $g$", __i1);
vconnect ("fermion,label={\Large $t$}", __vt1, __vt2);
vconnect ("fermion", __vt2, __v2, __v1, __vt1);
vconnect ("dashes", __v2, __o3);
vlabel ("\Large $h$", __o3);
vconnect ("dashes,label={\Large $h,,S$},label.side=right,label.d=5", __v1, __v3);
vvertex ("label={$y_{\chiDM }$},label.a=-45,label.distance=5w", __v3);
vconnect ("fermion", __o2, __v3, __o1);
vlabel ("\Large ${\bar {\chiDM }}$", __o1);
vlabel ("\Large ${\chiDM }$", __o2);
vdot (__v1, __v2, __v3, __vt1, __vt2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
