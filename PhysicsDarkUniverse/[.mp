% [.mp -- do not edit, generated automatically by doc.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 250*1.72668pt#, 125*1.72668pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.72668pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleft (__i1, __i2);
vright (__o1, __o2);
vtop (__isr);
vbottom (__pisr);
vconnect ("wiggly,tension=0.6,label={\Large $V,,A(\mMed )$}", __v1, __v2);
vconnect ("fermion", __o2, __v2, __o1);
vconnect ("fermion", __i2, __visr, __v1);
vconnect ("plain", __v1, __pvisr, __i1);
vconnect ("fermion,tension=0", __v1, __i1);
vdot (__v1, __v2);
vlabel ("\Large ${g_q}$", __v1);
vlabel ("\Large ${g_{DM}}$", __v2);
vlabel ("\Large ${\bar {q}}$", __i1);
vlabel ("\Large ${q}$", __i2);
vlabel ("\Large ${\bar {\chiDM }(\mDM )}$", __o1);
vlabel ("\Large ${\chiDM (\mDM )}$", __o2);
vconnect ("gluon,tension=0", __visr, __isr);
vconnect ("phantom,tension=0", __pvisr, __pisr);
vlabel ("\Large ${g}$", __isr);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
