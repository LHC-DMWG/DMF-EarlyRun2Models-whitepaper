% modelTTbarMET.mp -- do not edit, generated automatically by doc.tex
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
vright (__o1, __o4, __o5, __o3);
vconnect ("gluon", __i1, __v1);
vconnect ("gluon", __i2, __v2);
vconnect ("fermion", __o1, __v1, __v3, __v2, __o3);
vconnect ("scalar", __v3, __v4);
vconnect ("fermion", __o5, __v4, __o4);
vconnect ("phantom,tension=0,label={$\phi /a$}", __v3, __v4);
vlabel ("\Large $g$", __i1);
vlabel ("\Large $g$", __i2);
vlabel ("\Large $t (b)$", __o1);
vlabel ("\Large $\bar t (\bar b)$", __o3);
vlabel ("\Large $\chi $", __o4);
vlabel ("\Large $\bar \chi $", __o5);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
