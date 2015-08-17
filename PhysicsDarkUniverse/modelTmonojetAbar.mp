% modelTmonojetAbar.mp -- do not edit, generated automatically by doc.tex
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
vright (__o1, __o2);
vbottom (__isr);
vlabel ("\Large ${\bar {q}}$", __i1);
vlabel ("\Large ${q}$", __i2);
vconnect ("fermion", __i2, __v2);
vconnect ("phantom", __v2, __o2);
vconnect ("phantom,tension=0", __pisr, __isr);
vconnect ("fermion,tension=0", __v1, __o1);
vconnect ("wiggly,tension=0", __v2, __o2);
vconnect ("fermion", __i1, __visr, __v1);
vconnect ("fermion", __v1, __pisr, __o1);
vconnect ("wiggly,tension=0", __v2, __o2);
vconnect ("scalar,label={\Large $\phi _{(1),,(2)}$}", __v1, __v2);
vlabel ("\Large ${\bar {\chiDM }}$", __o1);
vlabel ("\Large ${\chiDM }$", __o2);
vdot (__v1, __v2, __visr);
vconnect ("gluon,tension=0", __visr, __isr);
vlabel ("\Large ${g}$", __isr);
vdot (__v1, __v2, __visr);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
