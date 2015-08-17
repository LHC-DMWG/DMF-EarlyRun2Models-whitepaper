% modelMonoHEFT.mp -- do not edit, generated automatically by doc.tex
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
vright (__o1, __o2, __ohidden, __o3);
vconnect ("fermion", __i2, __v1, __i1);
vlabel ("\Large $q,g$", __i2);
vlabel ("\Large $\bar {q},g$", __i1);
vconnect ("dashes", __v1, __v2);
vvertex ("decor.shape=circle,decor.filled=shaded, decor.size=30,label={\Large $\text {EFT}(\lambda ,,\Lambda )$},label.a=30,label.d=15", __v2);
vconnect ("dashes", __v2, __o3);
vlabel ("\Large $h$", __o3);
vconnect ("fermion", __o2, __v2, __o1);
vlabel ("\Large ${\bar {\chiDM }}$", __o1);
vlabel ("\Large ${\chiDM }$", __o2);
vdot (__v1);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
