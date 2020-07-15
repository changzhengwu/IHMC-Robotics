function dfdy = eqdfdy(L0p1,L0p2,L0p3,phi,psi,r0x,r0y,r0z,th)
%EQDFDY
%    DFDY = EQDFDY(L0P1,L0P2,L0P3,PHI,PSI,R0X,R0Y,R0Z,TH)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    04-Jun-2020 12:03:03

t2 = sin(th);
t3 = cos(psi);
t4 = phi.*2.0;
t5 = sin(t4);
t6 = sin(psi);
t7 = cos(t4);
t8 = cos(th);
t9 = 1.0./t8;
t10 = cos(phi);
t11 = t10.^2;
t12 = sin(phi);
t13 = t12.^2;
t14 = t8.^2;
t15 = 1.0./t8.^2;
t16 = th.*2.0;
t17 = sin(t16);
t18 = t6.*t12;
t19 = t2.*t3.*t10;
t20 = t18+t19;
t21 = r0x.*t20;
t22 = t3.*t12;
t38 = t2.*t6.*t10;
t23 = t22-t38;
t24 = r0z.*t8.*t10;
t39 = r0y.*t23;
t25 = t21+t24-t39+1.0./5.0;
t26 = t6.*t10;
t34 = t2.*t3.*t12;
t27 = t26-t34;
t28 = t3.*t10;
t29 = t2.*t6.*t12;
t30 = t28+t29;
t31 = r0y.*t30;
t32 = r0z.*t8.*t12;
t41 = r0x.*t27;
t33 = t31+t32-t41;
t35 = r0x.*t3.*t8;
t36 = r0y.*t6.*t8;
t43 = r0z.*t2;
t37 = t35+t36-t43;
t40 = abs(t25);
t42 = abs(t33);
t44 = abs(t37);
t45 = t40.^2;
t46 = t42.^2;
t47 = t44.^2;
t48 = t45+t46+t47;
t49 = sqrt(t48);
t50 = t49.*2.0e3;
t51 = t50-1.2e3;
t52 = sign(t25);
t53 = t20.*t40.*t52.*2.0;
t54 = sign(t33);
t55 = sign(t37);
t56 = t3.*t8.*t44.*t55.*2.0;
t84 = t27.*t42.*t54.*2.0;
t57 = t53+t56-t84;
t58 = t45+t47;
t59 = pi.*(1.0e2./9.0);
t60 = r0z.*t2.*1i;
t61 = r0x.*t3.*t8.*-1i;
t62 = r0y.*t6.*t8.*-1i;
t63 = t21+t24-t39+t60+t61+t62+1.0./5.0;
t64 = angle(t63);
t86 = t64.*2.0e2;
t65 = t59-t86;
t66 = 1.0./t58;
t67 = t3.*t8;
t68 = imag(t43);
t69 = real(t21);
t70 = real(t39);
t71 = imag(t35);
t72 = real(t24);
t73 = imag(t36);
t74 = -t68+t69-t70+t71+t72+t73+1.0./5.0;
t75 = real(t43);
t76 = imag(t21);
t77 = imag(t39);
t78 = imag(t24);
t79 = real(t35);
t80 = real(t36);
t81 = t75+t76-t77+t78-t79-t80;
t82 = t74.^2;
t83 = 1.0./sqrt(t48);
t85 = 1.0./t48;
t87 = t53+t56;
t88 = 1.0./t58.^2;
t89 = 1.0./t48.^(3.0./2.0);
t90 = imag(t19);
t91 = real(t67);
t92 = imag(t18);
t93 = t90-t91+t92;
t94 = 1.0./t74;
t95 = t93.*t94;
t96 = real(t19);
t97 = imag(t67);
t98 = real(t18);
t99 = t96+t97+t98;
t100 = 1.0./t74.^2;
t218 = t81.*t99.*t100;
t101 = t95-t218;
t102 = t81.^2;
t103 = t82+t102;
t104 = 1.0./t103;
t105 = t30.*t42.*t54.*2.0;
t106 = t6.*t8.*t44.*t55.*2.0;
t108 = t23.*t40.*t52.*2.0;
t107 = t105+t106-t108;
t109 = t6.*t8;
t110 = t106-t108;
t111 = imag(t38);
t112 = imag(t22);
t113 = real(t109);
t114 = -t111+t112+t113;
t115 = t94.*t114;
t116 = real(t38);
t117 = imag(t109);
t118 = real(t22);
t119 = t116+t117-t118;
t120 = t81.*t100.*t119;
t121 = t115+t120;
t122 = t8.*t10.*t40.*t52.*2.0;
t123 = t8.*t12.*t42.*t54.*2.0;
t126 = t2.*t44.*t55.*2.0;
t124 = t122+t123-t126;
t125 = t8.*t10;
t127 = real(t2);
t128 = imag(t125);
t129 = t127+t128;
t130 = t94.*t129;
t131 = imag(t2);
t132 = real(t125);
t133 = t131-t132;
t134 = t81.*t100.*t133;
t135 = t130+t134;
t136 = r0x.*t23;
t137 = r0y.*t20;
t138 = t136+t137;
t139 = r0x.*t6.*t8;
t146 = r0y.*t3.*t8;
t140 = t139-t146;
t141 = t44.*t55.*t140.*2.0;
t142 = r0x.*t30;
t143 = r0y.*t27;
t144 = t142+t143;
t145 = t42.*t54.*t144.*2.0;
t148 = t40.*t52.*t138.*2.0;
t147 = t141+t145-t148;
t149 = imag(t136);
t150 = imag(t137);
t151 = real(t146);
t152 = real(t139);
t153 = t149+t150-t151+t152;
t154 = t94.*t153;
t155 = real(t136);
t156 = real(t137);
t157 = imag(t146);
t158 = imag(t139);
t159 = t155+t156+t157-t158;
t247 = t81.*t100.*t159;
t160 = t154-t247;
t161 = r0z.*t8;
t162 = r0x.*t2.*t3;
t163 = r0y.*t2.*t6;
t164 = t161+t162+t163;
t165 = r0x.*t3.*t8.*t10;
t166 = r0y.*t6.*t8.*t10;
t168 = r0z.*t2.*t10;
t167 = t165+t166-t168;
t169 = t40.*t52.*t167.*2.0;
t170 = r0x.*t3.*t8.*t12;
t171 = r0y.*t6.*t8.*t12;
t176 = r0z.*t2.*t12;
t172 = t170+t171-t176;
t173 = t42.*t54.*t172.*2.0;
t175 = t44.*t55.*t164.*2.0;
t174 = t169+t173-t175;
t177 = t169-t175;
t178 = imag(t165);
t179 = imag(t166);
t180 = imag(t168);
t181 = real(t162);
t182 = real(t163);
t183 = real(t161);
t184 = t178+t179-t180+t181+t182+t183;
t185 = t94.*t184;
t186 = real(t165);
t187 = real(t166);
t188 = imag(t162);
t189 = real(t168);
t190 = imag(t163);
t191 = imag(t161);
t192 = -t186-t187+t188+t189+t190+t191;
t193 = t81.*t100.*t192;
t194 = t185+t193;
t195 = t37.*t51.*t83;
t196 = t25.*t65.*t66;
t197 = t195+t196;
t198 = t25.*t51.*t83;
t200 = t37.*t65.*t66;
t199 = t198-t200;
t201 = t21+t24-t39;
t203 = t33.*t40.*t52.*2.0;
t204 = t42.*t54.*t201.*2.0;
t202 = t203-t204;
t205 = imag(t41);
t206 = imag(t31);
t207 = imag(t32);
t208 = -t205+t206+t207;
t209 = t94.*t208;
t210 = real(t41);
t211 = real(t31);
t212 = real(t32);
t213 = -t210+t211+t212;
t265 = t81.*t100.*t213;
t214 = t209-t265;
t215 = t25.*t57.*t85.*1.0e3;
t216 = t20.*t51.*t83;
t217 = t37.*t65.*t87.*t88;
t219 = t37.*t66.*t82.*t101.*t104.*2.0e2;
t276 = t25.*t51.*t57.*t89.*(1.0./2.0);
t277 = t3.*t8.*t65.*t66;
t220 = t215+t216+t217+t219-t276-t277;
t221 = t37.*t57.*t85.*1.0e3;
t222 = t20.*t65.*t66;
t223 = t3.*t8.*t51.*t83;
t273 = t25.*t65.*t87.*t88;
t274 = t37.*t51.*t57.*t89.*(1.0./2.0);
t275 = t25.*t66.*t82.*t101.*t104.*2.0e2;
t224 = t221+t222+t223-t273-t274-t275;
t225 = t27.*t30.*t51.*t83.*(1.0./4.0);
t226 = t23.*t51.*t83;
t227 = t25.*t51.*t89.*t107.*(1.0./2.0);
t228 = t6.*t8.*t65.*t66;
t229 = t37.*t66.*t82.*t104.*t121.*2.0e2;
t280 = t25.*t85.*t107.*1.0e3;
t281 = t37.*t65.*t88.*t110;
t230 = t226+t227+t228+t229-t280-t281;
t231 = t23.*t65.*t66;
t232 = t37.*t51.*t89.*t107.*(1.0./2.0);
t233 = t25.*t65.*t88.*t110;
t234 = t2.*t65.*t66;
t235 = t25.*t85.*t124.*1.0e3;
t236 = t37.*t65.*t88.*(t122-t126);
t237 = t8.*t10.*t51.*t83;
t238 = t37.*t66.*t82.*t104.*t135.*2.0e2;
t284 = t25.*t51.*t89.*t124.*(1.0./2.0);
t239 = t234+t235+t236+t237+t238-t284;
t240 = t2.*t51.*t83;
t241 = t25.*t65.*t88.*(t122-t126);
t242 = t37.*t51.*t89.*t124.*(1.0./2.0);
t243 = t25.*t66.*t82.*t104.*t135.*2.0e2;
t282 = t37.*t85.*t124.*1.0e3;
t283 = t8.*t10.*t65.*t66;
t244 = t240+t241+t242+t243-t282-t283;
t245 = t51.*t83.*t138;
t246 = t141-t148;
t248 = t37.*t66.*t82.*t104.*t160.*2.0e2;
t249 = t51.*t83.*t140;
t250 = t37.*t85.*t147.*1.0e3;
t251 = t25.*t66.*t82.*t104.*t160.*2.0e2;
t252 = t65.*t66.*t164;
t253 = t25.*t85.*t174.*1.0e3;
t254 = t51.*t83.*t167;
t255 = t37.*t65.*t88.*t177;
t256 = t37.*t66.*t82.*t104.*t194.*2.0e2;
t290 = t25.*t51.*t89.*t174.*(1.0./2.0);
t257 = t252+t253+t254+t255+t256-t290;
t258 = t51.*t83.*t164;
t259 = t25.*t65.*t88.*t177;
t260 = t37.*t51.*t89.*t174.*(1.0./2.0);
t261 = t25.*t66.*t82.*t104.*t194.*2.0e2;
t288 = t37.*t85.*t174.*1.0e3;
t289 = t65.*t66.*t167;
t262 = t258+t259+t260+t261-t288-t289;
t263 = t25.*t85.*t202.*1.0e3;
t264 = t33.*t51.*t83;
t266 = t37.*t66.*t82.*t104.*t214.*2.0e2;
t267 = t33.*t37.*t40.*t52.*t65.*t88.*2.0;
t293 = t25.*t51.*t89.*t202.*(1.0./2.0);
t268 = t263+t264+t266+t267-t293;
t269 = t37.*t51.*t89.*t202.*(1.0./2.0);
t270 = t25.*t66.*t82.*t104.*t214.*2.0e2;
t271 = t25.*t33.*t40.*t52.*t65.*t88.*2.0;
t291 = t37.*t85.*t202.*1.0e3;
t292 = t33.*t65.*t66;
t272 = t269+t270+t271-t291-t292;
t278 = t8.*t12.*t27.*t51.*t83.*(1.0./4.0);
t295 = t37.*t85.*t107.*1.0e3;
t296 = t6.*t8.*t51.*t83;
t297 = t25.*t66.*t82.*t104.*t121.*2.0e2;
t279 = t231+t232+t233-t295-t296-t297;
t285 = t65.*t66.*(t139-t146);
t286 = t25.*t51.*t89.*(t141+t145-t148).*(1.0./2.0);
t300 = t25.*t85.*t147.*1.0e3;
t301 = t37.*t65.*t88.*t246;
t287 = t245+t248+t285+t286-t300-t301;
t294 = t30.^2;
t298 = t8.*t12.*t30.*t51.*t83;
t302 = t65.*t66.*t138;
t319 = t25.*t65.*t88.*t246;
t320 = t37.*t51.*t89.*t147.*(1.0./2.0);
t299 = t249+t250+t251-t302-t319-t320;
t303 = t27.^2;
t304 = t2.*t224;
t305 = t8.*t12.*t27.*t51.*t83;
t306 = t8.*t12.*t33.*t51.*t57.*t89.*(1.0./2.0);
t307 = t304+t305+t306-t8.*t10.*t220-t8.*t12.*t33.*t57.*t85.*1.0e3;
t308 = t8.*t12.*t33.*t51.*t83;
t309 = t27.*t30.*t51.*t83;
t310 = t2.*t279;
t311 = t8.*t12.*t33.*t85.*t107.*1.0e3;
t312 = t298+t310+t311-t8.*t10.*t230-t8.*t12.*t33.*t51.*t89.*t107.*(1.0./2.0);
t313 = t2.*t244;
t314 = t8.*t10.*t239;
t315 = t13.*t14.*t51.*t83;
t316 = t8.*t12.*t33.*t85.*t124.*1.0e3;
t317 = t313+t314+t315+t316-t8.*t12.*t33.*t51.*t89.*t124.*(1.0./2.0);
t318 = t27.*t33.*t51.*t83;
t321 = t2.*t299;
t322 = t8.*t10.*t287;
t323 = t8.*t12.*t33.*t51.*t89.*t147.*(1.0./2.0);
t324 = t8.*t197;
t325 = t2.*t10.*t199;
t326 = t2.*t12.*t33.*t51.*t83;
t327 = t8.*t12.*t33.*t51.*t89.*t174.*(1.0./2.0);
t328 = t2.*t272;
t329 = t8.*t12.*t199;
t330 = t8.*t10.*t268;
t331 = t8.*t12.*t33.*t85.*t202.*1.0e3;
t332 = t23.*t199;
t333 = t20.*t220;
t334 = t51.*t83.*t303;
t335 = t3.*t8.*t224;
t336 = t27.*t33.*t51.*t57.*t89.*(1.0./2.0);
t337 = t333+t334+t335+t336-t27.*t33.*t57.*t85.*1.0e3;
t338 = t23.*t220;
t339 = t30.*t33.*t51.*t57.*t89.*(1.0./2.0);
t340 = t309+t338+t339-t6.*t8.*t224-t30.*t33.*t57.*t85.*1.0e3;
t341 = t23.*t230;
t342 = t51.*t83.*t294;
t343 = t30.*t33.*t85.*t107.*1.0e3;
t344 = t341+t342+t343-t6.*t8.*t279-t30.*t33.*t51.*t89.*t107.*(1.0./2.0);
t345 = t20.*t230;
t346 = t27.*t33.*t85.*t107.*1.0e3;
t347 = t3.*t8.*t197;
t348 = t3.*t8.*t244;
t349 = t27.*t33.*t85.*t124.*1.0e3;
t350 = t305+t348+t349-t20.*t239-t27.*t33.*t51.*t89.*t124.*(1.0./2.0);
t351 = t23.*t239;
t352 = t6.*t8.*t244;
t353 = t30.*t33.*t51.*t89.*t124.*(1.0./2.0);
t354 = -t298+t351+t352+t353-t30.*t33.*t85.*t124.*1.0e3;
t355 = t23.*t287;
t360 = t37.*t51.*t89.*(t141+t145-t148).*(1.0./2.0);
t361 = t25.*t65.*t88.*(t141-t148);
t366 = t249+t250+t251-t302-t360-t361;
t356 = t6.*t8.*t366;
t357 = t30.*t51.*t83.*t144;
t358 = t30.*t33.*t85.*(t141+t145-t148).*1.0e3;
t359 = t20.*t287;
t362 = t6.*t8.*t197;
t363 = t30.*t33.*t51.*t83;
t364 = t27.*t51.*t83.*t144;
t365 = t27.*t33.*t85.*t147.*1.0e3;
t367 = t20.*t257;
t368 = t3.*t8.*t10.*t199;
t369 = t27.*t33.*t51.*t89.*t174.*(1.0./2.0);
t370 = t3.*t8.*t12.*t33.*t51.*t83;
t371 = t367+t368+t369+t370-t2.*t3.*t197-t3.*t8.*t262-t27.*t33.*t85.*t174.*1.0e3-t27.*t51.*t83.*t172;
t372 = t23.*t257;
t373 = t6.*t8.*t262;
t374 = t2.*t6.*t197;
t375 = t30.*t33.*t51.*t89.*t174.*(1.0./2.0);
t376 = t372+t373+t374+t375-t6.*t8.*t10.*t199-t30.*t33.*t85.*t174.*1.0e3-t30.*t51.*t83.*t172-t6.*t8.*t12.*t33.*t51.*t83;
t377 = t27.*t199;
t378 = t3.*t8.*t272;
t379 = t20.*t33.*t51.*t83;
t380 = t27.*t33.*t85.*t202.*1.0e3;
t381 = t377+t378+t379+t380-t20.*t268-t27.*t51.*t83.*t201-t27.*t33.*t51.*t89.*t202.*(1.0./2.0);
t382 = t23.*t268;
t383 = t6.*t8.*t272;
t384 = t30.*t51.*t83.*t201;
t385 = t30.*t33.*t51.*t89.*t202.*(1.0./2.0);
t386 = t382+t383+t384+t385-t30.*t199-t23.*t33.*t51.*t83-t30.*t33.*t85.*t202.*1.0e3;
dfdy = reshape([0.0,0.0,0.0,0.0,0.0,0.0,t20.*t220.*(-1.0./4.0)-t3.*t8.*t224.*(1.0./4.0)-t51.*t83.*t303.*(1.0./4.0)+t27.*t33.*t57.*t85.*2.5e2-t27.*t33.*t51.*t57.*t89.*(1.0./8.0),t225+t23.*t220.*(1.0./4.0)-t6.*t8.*t224.*(1.0./4.0)-t30.*t33.*t57.*t85.*2.5e2+t30.*t33.*t51.*t57.*t89.*(1.0./8.0),t278+t2.*t224.*(1.0./4.0)-t8.*t10.*t220.*(1.0./4.0)-t8.*t12.*t33.*t57.*t85.*2.5e2+t8.*t12.*t33.*t51.*t57.*t89.*(1.0./8.0),-r0y.*t307+r0z.*t340,-t308+r0x.*t307+r0z.*t337+t2.*t197-t8.*t10.*t199,-t332+t362+t363-r0x.*t340-r0y.*t337,0.0,0.0,0.0,0.0,0.0,0.0,t225+t20.*t230.*(1.0./4.0)+t3.*t8.*t279.*(1.0./4.0)+t27.*t33.*t85.*t107.*2.5e2-t27.*t33.*t51.*t89.*t107.*(1.0./8.0),t23.*t230.*(-1.0./4.0)+t6.*t8.*t279.*(1.0./4.0)-t51.*t83.*t294.*(1.0./4.0)-t30.*t33.*t85.*t107.*2.5e2+t30.*t33.*t51.*t89.*t107.*(1.0./8.0),t2.*t279.*(-1.0./4.0)+t8.*t10.*t230.*(1.0./4.0)-t8.*t12.*t30.*t51.*t83.*(1.0./4.0)-t8.*t12.*t33.*t85.*t107.*2.5e2+t8.*t12.*t33.*t51.*t89.*t107.*(1.0./8.0),t308+r0y.*t312-r0z.*t344-t2.*t197+t8.*t10.*(t198-t200),-r0x.*t312-r0z.*(t309+t345+t346+t3.*t8.*t279-t27.*t33.*t51.*t89.*t107.*(1.0./2.0)),t318-t347+r0x.*t344-t20.*t199+r0y.*(t309+t345+t346+t3.*t8.*(t231+t232+t233-t295-t296-t297)-t27.*t33.*t51.*t89.*t107.*(1.0./2.0)),0.0,0.0,0.0,0.0,0.0,0.0,t278-t20.*t239.*(1.0./4.0)+t3.*t8.*t244.*(1.0./4.0)+t27.*t33.*t85.*t124.*2.5e2-t27.*t33.*t51.*t89.*t124.*(1.0./8.0),t23.*t239.*(1.0./4.0)+t6.*t8.*t244.*(1.0./4.0)-t30.*t33.*t85.*t124.*2.5e2-t8.*t12.*t30.*t51.*t83.*(1.0./4.0)+t30.*t33.*t51.*t89.*t124.*(1.0./8.0),t2.*t244.*(-1.0./4.0)-t8.*t10.*t239.*(1.0./4.0)-t13.*t14.*t51.*t83.*(1.0./4.0)-t8.*t12.*t33.*t85.*t124.*2.5e2+t8.*t12.*t33.*t51.*t89.*t124.*(1.0./8.0),r0y.*t317+r0z.*t354+t23.*(t198-t200)-t6.*t8.*t197-t30.*t33.*t51.*t83,-t318+t347-r0x.*t317-r0z.*t350+t20.*(t198-t200),-r0x.*t354+r0y.*t350,0.0,0.0,0.0,t9.*(L0p2.*t2.*t3.*2.5e1-L0p1.*t2.*t6.*2.5e1+L0p1.*t3.*t5.*5.0+L0p2.*t5.*t6.*5.0+L0p2.*t2.*t3.*t7.*5.0-L0p1.*t2.*t6.*t7.*5.0).*(1.0./3.0),L0p1.*t3.*-1.0e1-L0p2.*t6.*1.0e1+L0p1.*t3.*t11.*(1.0e1./3.0)+L0p2.*t6.*t11.*(1.0e1./3.0)-L0p2.*t2.*t3.*t10.*t12.*(1.0e1./3.0)+L0p1.*t2.*t6.*t10.*t12.*(1.0e1./3.0),t9.*(L0p2.*t3.*2.0e1-L0p1.*t6.*2.0e1+L0p2.*t3.*t11.*1.0e1-L0p1.*t6.*t11.*1.0e1-L0p2.*t3.*t14.*5.0+L0p1.*t6.*t14.*5.0-L0p2.*t3.*t11.*t14.*1.0e1+L0p1.*t6.*t11.*t14.*1.0e1+L0p1.*t2.*t3.*t10.*t12.*1.0e1+L0p2.*t2.*t6.*t10.*t12.*1.0e1).*(1.0./3.0),t20.*(t245+t248-t25.*t85.*t147.*1.0e3+t65.*t66.*t140+t25.*t51.*t89.*t147.*(1.0./2.0)-t37.*t65.*t88.*(t141-t40.*t52.*t138.*2.0)).*(-1.0./4.0)-t23.*t199.*(1.0./4.0)+t6.*t8.*t197.*(1.0./4.0)+t3.*t8.*(t249+t250+t251-t65.*t66.*t138-t25.*t65.*t88.*t246-t37.*t51.*t89.*(t141+t145-t148).*(1.0./2.0)).*(1.0./4.0)+t30.*t33.*t51.*t83.*(1.0./4.0)-t27.*t33.*t85.*t147.*2.5e2-t27.*t51.*t83.*t144.*(1.0./4.0)+t27.*t33.*t51.*t89.*(t141+t145-t148).*(1.0./8.0),t20.*t199.*(-1.0./4.0)+t23.*t287.*(1.0./4.0)-t3.*t8.*t197.*(1.0./4.0)+t6.*t8.*(t249+t250+t251-t65.*t66.*t138-t25.*t65.*t88.*(t141-t148)-t37.*t51.*t89.*(t141+t145-t148).*(1.0./2.0)).*(1.0./4.0)+t27.*t33.*t51.*t83.*(1.0./4.0)+t30.*t51.*t83.*t144.*(1.0./4.0)+t30.*t33.*t85.*(t141+t145-t148).*2.5e2-t30.*t33.*t51.*t89.*t147.*(1.0./8.0),t2.*t299.*(-1.0./4.0)-t8.*t10.*t287.*(1.0./4.0)+t8.*t12.*t33.*t85.*(t141+t145-t148).*2.5e2+t8.*t12.*t51.*t83.*t144.*(1.0./4.0)-t8.*t12.*t33.*t51.*t89.*t147.*(1.0./8.0),r0z.*(t318+t355+t356+t357+t358-t20.*t199-t3.*t8.*t197-t30.*t33.*t51.*t89.*t147.*(1.0./2.0))+r0y.*(t321+t322+t323-t8.*t12.*t33.*t85.*(t141+t145-t148).*1.0e3-t8.*t12.*t51.*t83.*t144),r0z.*(t332+t359+t364+t365-t3.*t8.*(t249+t250+t251-t302-t25.*t65.*t88.*(t141-t148)-t37.*t51.*t89.*(t141+t145-t148).*(1.0./2.0))-t6.*t8.*t197-t30.*t33.*t51.*t83-t27.*t33.*t51.*t89.*(t141+t145-t148).*(1.0./2.0))-r0x.*(t321+t322+t323-t8.*t12.*t33.*t85.*t147.*1.0e3-t8.*t12.*t51.*t83.*t144),-r0y.*(t332+t359-t362-t363+t364+t365-t3.*t8.*t366-t27.*t33.*t51.*t89.*t147.*(1.0./2.0))-r0x.*(t318-t347+t355+t356+t357+t358-t20.*t199-t30.*t33.*t51.*t89.*t147.*(1.0./2.0)),0.0,0.0,0.0,t9.*(L0p3.*t2.*-2.5e1+L0p1.*t3.*t8.*2.5e1-L0p3.*t2.*t7.*5.0+L0p2.*t6.*t8.*2.5e1+L0p1.*t3.*t7.*t8.*5.0+L0p2.*t6.*t7.*t8.*5.0).*(1.0./3.0)+t2.*t15.*(L0p3.*t8.*2.5e1+L0p1.*t2.*t3.*2.5e1+L0p2.*t2.*t6.*2.5e1-L0p2.*t3.*t5.*5.0+L0p1.*t5.*t6.*5.0+L0p3.*t7.*t8.*5.0+L0p1.*t2.*t3.*t7.*5.0+L0p2.*t2.*t6.*t7.*5.0).*(1.0./3.0),L0p3.*t2.*t10.*t12.*(1.0e1./3.0)-L0p1.*t3.*t8.*t10.*t12.*(1.0e1./3.0)-L0p2.*t6.*t8.*t10.*t12.*(1.0e1./3.0),t9.*(L0p3.*cos(t16).*5.0+L0p3.*t11.*t14.*1.0e1-L0p3.*t2.^2.*t11.*1.0e1+L0p1.*t2.*t3.*t8.*1.0e1+L0p2.*t2.*t6.*t8.*1.0e1+L0p1.*t2.*t3.*t8.*t11.*2.0e1+L0p2.*t2.*t6.*t8.*t11.*2.0e1-L0p2.*t3.*t8.*t10.*t12.*1.0e1+L0p1.*t6.*t8.*t10.*t12.*1.0e1).*(1.0./3.0)+t2.*t15.*(L0p1.*t3.*2.0e1+L0p2.*t6.*2.0e1+L0p3.*t17.*(5.0./2.0)+L0p1.*t3.*t11.*1.0e1-L0p1.*t3.*t14.*5.0+L0p2.*t6.*t11.*1.0e1-L0p2.*t6.*t14.*5.0+L0p3.*t2.*t8.*t11.*1.0e1-L0p1.*t3.*t11.*t14.*1.0e1-L0p2.*t6.*t11.*t14.*1.0e1-L0p2.*t2.*t3.*t10.*t12.*1.0e1+L0p1.*t2.*t6.*t10.*t12.*1.0e1).*(1.0./3.0),t20.*t257.*(-1.0./4.0)+t2.*t3.*t197.*(1.0./4.0)+t3.*t8.*t262.*(1.0./4.0)-t3.*t8.*t10.*t199.*(1.0./4.0)+t27.*t33.*t85.*t174.*2.5e2+t27.*t51.*t83.*t172.*(1.0./4.0)-t27.*t33.*t51.*t89.*t174.*(1.0./8.0)-t3.*t8.*t12.*t33.*t51.*t83.*(1.0./4.0),t23.*t257.*(1.0./4.0)+t2.*t6.*t197.*(1.0./4.0)+t6.*t8.*t262.*(1.0./4.0)-t6.*t8.*t10.*t199.*(1.0./4.0)-t30.*t33.*t85.*t174.*2.5e2-t30.*t51.*t83.*t172.*(1.0./4.0)+t30.*t33.*t51.*t89.*t174.*(1.0./8.0)-t6.*t8.*t12.*t33.*t51.*t83.*(1.0./4.0),t8.*t197.*(1.0./4.0)-t2.*t262.*(1.0./4.0)-t8.*t10.*t257.*(1.0./4.0)+t2.*t10.*(t198-t200).*(1.0./4.0)+t2.*t12.*t33.*t51.*t83.*(1.0./4.0)-t8.*t12.*t33.*t85.*t174.*2.5e2-t8.*t12.*t51.*t83.*t172.*(1.0./4.0)+t8.*t12.*t33.*t51.*t89.*t174.*(1.0./8.0),r0z.*t376-r0y.*(t324+t325+t326+t327-t2.*t262-t8.*t10.*t257-t8.*t12.*t33.*t85.*t174.*1.0e3-t8.*t12.*t51.*t83.*t172),r0z.*t371+r0x.*(t324+t325+t326+t327-t2.*t262-t8.*t10.*t257-t8.*t12.*t33.*t85.*t174.*1.0e3-t8.*t12.*t51.*t83.*t172),-r0x.*t376-r0y.*t371,0.0,0.0,0.0,t9.*(L0p2.*t3.*t7.*1.0e1-L0p1.*t6.*t7.*1.0e1+L0p3.*t5.*t8.*1.0e1+L0p1.*t2.*t3.*t5.*1.0e1+L0p2.*t2.*t5.*t6.*1.0e1).*(-1.0./3.0),L0p3.*t8.*t11.*(-1.0e1./3.0)+L0p3.*t8.*t13.*(1.0e1./3.0)-L0p1.*t2.*t3.*t11.*(1.0e1./3.0)+L0p1.*t2.*t3.*t13.*(1.0e1./3.0)-L0p2.*t2.*t6.*t11.*(1.0e1./3.0)+L0p2.*t2.*t6.*t13.*(1.0e1./3.0)+L0p2.*t3.*t10.*t12.*(2.0e1./3.0)-L0p1.*t6.*t10.*t12.*(2.0e1./3.0),t9.*(L0p2.*t2.*t3.*t11.*1.0e1-L0p1.*t2.*t6.*t11.*1.0e1-L0p2.*t2.*t3.*t13.*1.0e1+L0p1.*t2.*t6.*t13.*1.0e1+L0p1.*t3.*t10.*t12.*2.0e1+L0p2.*t6.*t10.*t12.*2.0e1+L0p3.*t2.*t8.*t10.*t12.*2.0e1-L0p1.*t3.*t10.*t12.*t14.*2.0e1-L0p2.*t6.*t10.*t12.*t14.*2.0e1).*(-1.0./3.0),t27.*t199.*(-1.0./4.0)+t20.*t268.*(1.0./4.0)-t3.*t8.*t272.*(1.0./4.0)-t20.*t33.*t51.*t83.*(1.0./4.0)-t27.*t33.*t85.*t202.*2.5e2+t27.*t51.*t83.*t201.*(1.0./4.0)+t27.*t33.*t51.*t89.*t202.*(1.0./8.0),t23.*t268.*(-1.0./4.0)+t30.*(t198-t200).*(1.0./4.0)-t6.*t8.*t272.*(1.0./4.0)+t23.*t33.*t51.*t83.*(1.0./4.0)+t30.*t33.*t85.*t202.*2.5e2-t30.*t51.*t83.*t201.*(1.0./4.0)-t30.*t33.*t51.*t89.*t202.*(1.0./8.0),t2.*t272.*(1.0./4.0)+t8.*t10.*t268.*(1.0./4.0)+t8.*t12.*(t198-t200).*(1.0./4.0)-t8.*t10.*t33.*t51.*t83.*(1.0./4.0)+t8.*t12.*t33.*t85.*t202.*2.5e2-t8.*t12.*t51.*t83.*t201.*(1.0./4.0)-t8.*t12.*t33.*t51.*t89.*t202.*(1.0./8.0),-r0z.*t386-r0y.*(t328+t329+t330+t331-t8.*t10.*t33.*t51.*t83-t8.*t12.*t51.*t83.*t201-t8.*t12.*t33.*t51.*t89.*t202.*(1.0./2.0)),r0z.*t381+r0x.*(t328+t329+t330+t331-t8.*t10.*t33.*t51.*t83-t8.*t12.*t51.*t83.*t201-t8.*t12.*t33.*t51.*t89.*t202.*(1.0./2.0)),r0x.*t386-r0y.*t381,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t9.*(t2.*t3.*2.5e1+t5.*t6.*5.0+t2.*t3.*t7.*5.0).*(1.0./3.0),t6.*-1.0e1+t6.*t11.*(1.0e1./3.0)-t2.*t3.*t10.*t12.*(1.0e1./3.0),t9.*(t3.*2.0e1+t3.*t11.*1.0e1-t3.*t14.*5.0-t3.*t11.*t14.*1.0e1+t2.*t6.*t10.*t12.*1.0e1).*(1.0./3.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t9.*(t2.*t6.*2.5e1-t3.*t5.*5.0+t2.*t6.*t7.*5.0).*(1.0./3.0),t3.*1.0e1-t3.*t11.*(1.0e1./3.0)-t2.*t6.*t10.*t12.*(1.0e1./3.0),t9.*(t6.*-2.0e1-t6.*t11.*1.0e1+t6.*t14.*5.0+t6.*t11.*t14.*1.0e1+t2.*t3.*t10.*t12.*1.0e1).*(-1.0./3.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t9.*(t8.*2.5e1+t7.*t8.*5.0).*(1.0./3.0),t8.*t10.*t12.*(-1.0e1./3.0),t9.*(t17.*(5.0./2.0)+t2.*t8.*t11.*1.0e1).*(1.0./3.0),0.0,0.0,0.0,0.0,0.0,0.0],[12, 12]);