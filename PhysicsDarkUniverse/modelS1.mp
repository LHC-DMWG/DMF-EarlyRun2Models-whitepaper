% modelS1.mp -- do not edit, generated automatically by doc.tex
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
vconnect ("dashes,label={\Large $\varphi $}", __v1, __v2);
vconnect ("fermion", __i2, __v1, __i1);
vconnect ("fermion", __v2, __o1);
vconnect ("plain,tension=0", __v2, __o2);
vconnect ("wiggly", __v2, __o2);
vdot (__v1, __v2);
vlabel ("\Large ${\bar {s}}$", __i1);
vlabel ("\Large ${d}$", __i2);
vlabel ("\Large ${t}$", __o1);
vlabel ("\Large ${\chiDM }$", __o2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
