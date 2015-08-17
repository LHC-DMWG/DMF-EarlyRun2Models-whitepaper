% modelMonoHbaryonicqq.mp -- do not edit, generated automatically by doc.tex
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
vconnect ("fermion", __i2, __v1, __i1);
vlabel ("\Large $q$", __i2);
vlabel ("\Large $\bar {q}$", __i1);
vconnect ("dashes,label={\Large $h,,S$}", __v1, __v2);
vconnect ("dashes,label={\Large $h,,S$},label.side=right", __v2, __v3);
vconnect ("dashes", __v2, __o3);
vlabel ("\Large $h$", __o3);
vvertex ("label={$b,,\theta $},label.a=100,label.distance=3w", __v2);
vvertex ("label={$y_{\chiDM }$},label.a=-45,label.distance=5w", __v3);
vconnect ("fermion", __o2, __v3, __o1);
vlabel ("\Large ${\bar {\chiDM }}$", __o1);
vlabel ("\Large ${\chiDM }$", __o2);
vdot (__v1, __v2, __v3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
