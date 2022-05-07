export memory memory(initial: 2, max: 0);

global g_a:int = 71072;

table T_a:funcref(min: 5, max: 5);

data d_a(offset: 1024) = 
  "Success\00Illegal byte sequence\00Domain error\00Result not representa"
  "ble\00Not a tty\00Permission denied\00Operation not permitted\00No suc"
  "h file or directory\00No such process\00File exists\00Value too large "
  "for data type\00No space left on device\00Out of memory\00Resource bus"
  "y\00Interrupted system call\00Resource temporarily unavailable\00Inval"
  "id seek\00Cross-device link\00Read-only file system\00Directory not em"
  "pty\00Connection reset by peer\00Operation timed out\00Connection refu"
  "sed\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00"
  "No such device or address\00No such device\00Not a directory\00Is a di"
  "rectory\00Text file busy\00Exec format error\00Invalid argument\00Argu"
  "ment list too long\00Symbolic link loop\00Filename too long\00Too many"
  " open files in system\00No file descriptors available\00Bad file descr"
  "iptor\00No child process\00Bad address\00File too large\00Too many lin"
  "ks\00No locks available\00Resource deadlock would occur\00State not re"
  "coverable\00Previous owner died\00Operation canceled\00Function not im"
  "plemented\00No message of desired type\00Identifier removed\00Link has"
  " been severed\00Protocol error\00Bad message\00Not a socket\00Destinat"
  "ion address required\00Message too large\00Protocol wrong type for soc"
  "ket\00Protocol not available\00Protocol not supported\00Not supported\00"
  "Address family not supported by protocol\00Address not available\00Net"
  "work is down\00Network unreachable\00Connection reset by network\00Con"
  "nection aborted\00No buffer space available\00Socket is connected\00So"
  "cket not connected\00Operation already in progress\00Operation in prog"
  "ress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capab"
  "ilities insufficient\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed"
  "\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12"
  "\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-"
  "\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03"
  "\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03"\04\ab\04D\00\fb\01\ae\00"
  "\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01"
  "\f6\05-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00inf\00NAN\00INF\00.\00(nu"
  "ll)\00Support for formatting long double values is currently disabled."
  "\0aTo enable it, add -lc-printscan-long-double to the link command.\0a"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00"
  "\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00"
  "\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06"
  "\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e"
  "\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00"
  "\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00"
  "\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00"
  "\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00"
  "\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00"
  "\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09"
  "\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15"
  "\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123"
  "456789ABCDEF";
data d_b(offset: 3408) = 
  "\86\8a}\87\93\8bM\81\80\8aC\7fII\86q\7fbSi(\9d\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00.\09\17\12\13G\1e\08\12\15G\01\0b\06\00G"
  "\06\14G\06\09G\06\15\00\12\0a\02\09\13Img\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\9f\a9\b3\b4\e6\a0\aa\a7\a1\e6\af\b5\fc\e6\e3\b5\cc\c6\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00*\06\07\0e\1b\08\1d\1c\05\08\1d"
  "\00\06\07\1a\17ci\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \1c\01\01\0a"
  "S\07\01\0aS\12\14\12\1a\1d]ys\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\064=2><4q%>q\1d\1d\07\1cq&>#=5\7f\7f\7f[Q\00\00\00\00\00\00\05\00\00\00"
  "\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\02\00\00\00\03\00\00\00h\11\00\00\00\04\00\00\00\00\00\00"
  "\00\00\00\00\01\00\00\00\00\00\00\00\0a\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00p\0e\00\00\00\00\00\00\05\00\00\00"
  "\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\04\00\00\00\03\00\00\00\94\15\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\e8\0e\00\00";

import function imported_wasi_snapshot_preview1_args_get(a:int, b:int):int;

import function imported_wasi_snapshot_preview1_args_sizes_get(a:int, b:int):int;

import function imported_wasi_snapshot_preview1_fd_close(a:int):int;

import function imported_wasi_snapshot_preview1_fd_fdstat_get(a:int, b:int):int;

import function imported_wasi_snapshot_preview1_fd_seek(a:int, b:long, c:int, d:int):int;

import function imported_wasi_snapshot_preview1_fd_write(a:int, b:int, c:int, d:int):int;

import function imported_wasi_snapshot_preview1_proc_exit(a:int);

function wasm_call_ctors() {
  datadiv_decode424238335()
}

function start() {
  var a:int = original_main();
  if (eqz(a)) goto B_a;
  exit(a);
  unreachable;
  label B_a:
}

function main(a:int, b:int):int {
  var c:int = g_a;
  var d:int = 64;
  var e:int = c - d;
  var f:int = e;
  g_a = e;
  var g:int = f[6]:int;
  var h:int = f[5]:int;
  var i:int = 10;
  var j:int = h;
  var k:int = i;
  var l:int = j < k;
  var m:int = 1;
  var n:int = g + m;
  var o:int = n * g;
  var p:int = 1;
  var q:int = o & p;
  var r:int = 0;
  var s:int = q;
  var t:int = r;
  var u:int = s == t;
  var v:int = l | u;
  var w:int = 1;
  var x:int = v & w;
  if (eqz(x)) goto B_b;
  var y:int = 0;
  goto B_a;
  label B_b:
  y = 1;
  label B_a:
  loop L_e {
    br_table[B_h, B_g, ..B_g](y)
    label B_h:
    var z:int = e;
    var aa:int = -16;
    var ba:int = z + aa;
    e = ba;
    g_a = e;
    f[7]:int = ba;
    var ca:int = e;
    var da:int = ca + aa;
    e = da;
    g_a = e;
    f[8]:int = da;
    var ea:int = e;
    var fa:int = ea + aa;
    e = fa;
    g_a = e;
    f[9]:int = fa;
    var ga:int = e;
    var ha:int = -112;
    var ia:int = ga + ha;
    e = ia;
    g_a = e;
    f[10]:int = ia;
    var ja:int = e;
    var ka:int = ja + aa;
    e = ka;
    g_a = e;
    f[11]:int = ka;
    var la:int_ptr = f[7]:int;
    var ma:int = 0;
    la[0] = ma;
    var na:int = e;
    var oa:int_ptr = na + aa;
    e = oa;
    g_a = e;
    var pa:int = e;
    var qa:int_ptr = pa + aa;
    e = qa;
    g_a = e;
    var ra:int = oa[0];
    var sa:int = qa[0];
    var ta:int = 10;
    var ua:int = sa;
    var va:int = ta;
    var wa:int = ua < va;
    var xa:int = 1;
    var ya:int = ra + xa;
    var za:int = ya * ra;
    var ab:int = 1;
    var bb:int = za & ab;
    var cb:int = 0;
    var db:int = bb;
    var eb:int = cb;
    var fb:int = db == eb;
    var gb:int = wa | fb;
    var hb:int = 1;
    var ib:int = gb & hb;
    if (eqz(ib)) goto B_f;
    var jb:int = e;
    var kb:int = -16;
    var lb:int_ptr = jb + kb;
    e = lb;
    g_a = e;
    var mb:int = e;
    var nb:int_ptr = mb + kb;
    e = nb;
    g_a = e;
    var ob:int = lb[0];
    var pb:int = nb[0];
    var qb:int = 10;
    var rb:int = pb;
    var sb:int = qb;
    var tb:int = rb < sb;
    var ub:int = 1;
    var vb:int = ob + ub;
    var wb:int = vb * ob;
    var xb:int = 1;
    var yb:int = wb & xb;
    var zb:int = 0;
    var ac:int = yb;
    var bc:int = zb;
    var cc:int = ac == bc;
    var dc:int = tb | cc;
    var ec:int = 1;
    var fc:int = dc & ec;
    if (eqz(fc)) goto B_d;
    var gc:int = 0;
    goto B_c;
    label B_g:
    var hc:int = e;
    var ic:int = -16;
    var jc:int = hc + ic;
    e = jc;
    g_a = e;
    f[7]:int = jc;
    var kc:int = e;
    var lc:int = kc + ic;
    e = lc;
    g_a = e;
    f[8]:int = lc;
    var mc:int = e;
    var nc:int = mc + ic;
    e = nc;
    g_a = e;
    f[9]:int = nc;
    var oc:int = e;
    var pc:int = -112;
    var qc:int = oc + pc;
    e = qc;
    g_a = e;
    f[10]:int = qc;
    var rc:int = e;
    var sc:int = rc + ic;
    e = sc;
    g_a = e;
    f[11]:int = sc;
    var tc:int_ptr = f[7]:int;
    var uc:int = 0;
    tc[0] = uc;
    y = 0;
    continue L_e;
    label B_f:
    y = 1;
    continue L_e;
  }
  label B_d:
  gc = 1;
  label B_c:
  loop L_o {
    br_table[B_r, B_q, ..B_q](gc)
    label B_r:
    var vc:int_ptr = f[8]:int;
    vc[0] = a;
    var wc:int_ptr = f[9]:int;
    wc[0] = b;
    var xc:int = 3664;
    var yc:int = 0;
    printf(xc, yc);
    var zc:int_ptr = f[8]:int;
    var ad:int = zc[0];
    var bd:int = 2;
    var cd:int = ad < bd;
    f[51]:byte = cd;
    var dd:int = e;
    var ed:int = -16;
    var fd:int_ptr = dd + ed;
    e = fd;
    g_a = e;
    var gd:int = e;
    var hd:int_ptr = gd + ed;
    e = hd;
    g_a = e;
    var id:int = fd[0];
    var jd:int = hd[0];
    var kd:int = 10;
    var ld:int = jd;
    var md:int = kd;
    var nd:int = ld < md;
    var od:int = 1;
    var pd:int = id + od;
    var qd:int = pd * id;
    var rd:int = 1;
    var sd:int = qd & rd;
    var td:int = 0;
    var ud:int = sd;
    var vd:int = td;
    var wd:int = ud == vd;
    var xd:int = nd | wd;
    var yd:int = 1;
    var zd:int = xd & yd;
    if (eqz(zd)) goto B_p;
    var ae:int = f[51]:ubyte;
    var be:int = 1;
    var ce:int = ae & be;
    if (eqz(ce)) goto B_s;
    var de:int = e;
    var ee:int = -16;
    var fe:int_ptr = de + ee;
    e = fe;
    g_a = e;
    var ge:int = e;
    var he:int_ptr = ge + ee;
    e = he;
    g_a = e;
    var ie:int = fe[0];
    var je:int = he[0];
    var ke:int = 10;
    var le:int = je;
    var me:int = ke;
    var ne:int = le < me;
    var oe:int = 1;
    var pe:int = ie + oe;
    var qe:int = pe * ie;
    var re:int = 1;
    var se:int = qe & re;
    var te:int = 0;
    var ue:int = se;
    var ve:int = te;
    var we:int = ue == ve;
    var xe:int = ne | we;
    var ye:int = 1;
    var ze:int = xe & ye;
    if (eqz(ze)) goto B_n;
    var af:int = 0;
    goto B_k;
    label B_s:
    var bf:int = e;
    var cf:int = -16;
    var df:int_ptr = bf + cf;
    e = df;
    g_a = e;
    var ef:int = e;
    var ff:int_ptr = ef + cf;
    e = ff;
    g_a = e;
    var gf:int = df[0];
    var hf:int = ff[0];
    var if:int = 10;
    var jf:int = hf;
    var kf:int = if;
    var lf:int = jf < kf;
    var mf:int = 1;
    var nf:int = gf + mf;
    var of:int = nf * gf;
    var pf:int = 1;
    var qf:int = of & pf;
    var rf:int = 0;
    var sf:int = qf;
    var tf:int = rf;
    var uf:int = sf == tf;
    var vf:int = lf | uf;
    var wf:int = 1;
    var xf:int = vf & wf;
    if (eqz(xf)) goto B_m;
    var yf:int = 0;
    goto B_l;
    label B_q:
    var zf:int_ptr = f[8]:int;
    zf[0] = a;
    var ag:int_ptr = f[9]:int;
    ag[0] = b;
    var bg:int = 3664;
    var cg:int = 0;
    printf(bg, cg);
    var dg:int_ptr = f[8]:int;
    var eg:int = dg[0];
    var fg:int = 1;
    var gg:int = eg;
    var hg:int = fg;
    var ig:int = gg <= hg;
    var jg:int = 1;
    var kg:int = ig & jg;
    f[51]:byte = kg;
    gc = 0;
    continue L_o;
    label B_p:
    gc = 1;
    continue L_o;
  }
  label B_n:
  af = 1;
  goto B_k;
  label B_m:
  yf = 1;
  label B_l:
  loop L_v {
    br_table[B_y, B_x, ..B_x](yf)
    label B_y:
    var lg:int_ptr = f[9]:int;
    var mg:int_ptr = lg[0];
    var ng:int = mg[1];
    var og:int_ptr = 0;
    og[984] = ng;
    var pg:int = og[984];
    f[4]:int = pg;
    var qg:int = 3568;
    var rg:int = 16;
    var sg:int = f + rg;
    printf(qg, sg);
    var tg:int = f[10]:int;
    var ug:int = 100;
    memset(tg, og, ug);
    var vg:int = e;
    var wg:int = -16;
    var xg:int_ptr = vg + wg;
    e = xg;
    g_a = e;
    var yg:int = e;
    var zg:int_ptr = yg + wg;
    e = zg;
    g_a = e;
    var ah:int = xg[0];
    var bh:int = zg[0];
    var ch:int = 10;
    var dh:int = bh;
    var eh:int = ch;
    var fh:int = dh < eh;
    var gh:int = 1;
    var hh:int = ah + gh;
    var ih:int = hh * ah;
    var jh:int = 1;
    var kh:int = ih & jh;
    var lh:int = 0;
    var mh:int = kh;
    var nh:int = lh;
    var oh:int = mh == nh;
    var ph:int = fh | oh;
    var qh:int = 1;
    var rh:int = ph & qh;
    if (eqz(rh)) goto B_w;
    var sh:int = e;
    var th:int = -16;
    var uh:int_ptr = sh + th;
    e = uh;
    g_a = e;
    var vh:int = e;
    var wh:int_ptr = vh + th;
    e = wh;
    g_a = e;
    var xh:int = uh[0];
    var yh:int = wh[0];
    var zh:int = 10;
    var ai:int = yh;
    var bi:int = zh;
    var ci:int = ai < bi;
    var di:int = 1;
    var ei:int = xh + di;
    var fi:int = ei * xh;
    var gi:int = 1;
    var hi:int = fi & gi;
    var ii:int = 0;
    var ji:int = hi;
    var ki:int = ii;
    var li:int = ji == ki;
    var mi:int = ci | li;
    var ni:int = 1;
    var oi:int = mi & ni;
    if (eqz(oi)) goto B_u;
    var pi:int = 0;
    goto B_t;
    label B_x:
    var qi:int_ptr = f[9]:int;
    var ri:int_ptr = qi[0];
    var si:int = ri[1];
    var ti:int_ptr = 0;
    ti[984] = si;
    var ui:int_ptr = 0;
    var vi:int = ui[984];
    f[0]:int = vi;
    var wi:int = 3568;
    printf(wi, f);
    var xi:int = f[10]:int;
    var yi:int = 100;
    var zi:int = 0;
    memset(xi, zi, yi);
    yf = 0;
    continue L_v;
    label B_w:
    yf = 1;
    continue L_v;
  }
  label B_u:
  pi = 1;
  label B_t:
  loop L_ba {
    br_table[B_ea, B_da, ..B_da](pi)
    label B_ea:
    var aj:int = f[10]:int;
    var bj:int_ptr = 0;
    var cj:int = bj[984];
    encrypt(aj, cj);
    var dj:int = bj[984];
    var ej:int = strlen(dj);
    var fj:int = 22;
    var gj:int = ej == fj;
    f[52]:byte = gj;
    var hj:int = e;
    var ij:int = -16;
    var jj:int_ptr = hj + ij;
    e = jj;
    g_a = e;
    var kj:int = e;
    var lj:int_ptr = kj + ij;
    e = lj;
    g_a = e;
    var mj:int = jj[0];
    var nj:int = lj[0];
    var oj:int = 10;
    var pj:int = nj;
    var qj:int = oj;
    var rj:int = pj < qj;
    var sj:int = 1;
    var tj:int = mj + sj;
    var uj:int = tj * mj;
    var vj:int = 1;
    var wj:int = uj & vj;
    var xj:int = 0;
    var yj:int = wj;
    var zj:int = xj;
    var ak:int = yj == zj;
    var bk:int = rj | ak;
    var ck:int = 1;
    var dk:int = bk & ck;
    if (eqz(dk)) goto B_ca;
    var ek:int = f[52]:ubyte;
    var fk:int = 0;
    var gk:int = 1;
    var hk:int = ek & gk;
    var ik:int = fk;
    if (eqz(hk)) goto B_j;
    var jk:int = e;
    var kk:int = -16;
    var lk:int_ptr = jk + kk;
    e = lk;
    g_a = e;
    var mk:int = e;
    var nk:int_ptr = mk + kk;
    e = nk;
    g_a = e;
    var ok:int = lk[0];
    var pk:int = nk[0];
    var qk:int = 10;
    var rk:int = pk;
    var sk:int = qk;
    var tk:int = rk < sk;
    var uk:int = 1;
    var vk:int = ok + uk;
    var wk:int = vk * ok;
    var xk:int = 1;
    var yk:int = wk & xk;
    var zk:int = 0;
    var al:int = yk;
    var bl:int = zk;
    var cl:int = al == bl;
    var dl:int = tk | cl;
    var el:int = 1;
    var fl:int = dl & el;
    if (eqz(fl)) goto B_aa;
    var gl:int = 0;
    goto B_z;
    label B_da:
    var hl:int = f[10]:int;
    var il:int_ptr = 0;
    var jl:int = il[984];
    encrypt(hl, jl);
    var kl:int_ptr = 0;
    var ll:int = kl[984];
    var ml:int = strlen(ll);
    var nl:int = 22;
    var ol:int = ml;
    var pl:int = nl;
    var ql:int = ol == pl;
    var rl:int = 1;
    var sl:int = ql & rl;
    f[52]:byte = sl;
    pi = 0;
    continue L_ba;
    label B_ca:
    pi = 1;
    continue L_ba;
  }
  label B_aa:
  gl = 1;
  label B_z:
  loop L_ha {
    br_table[B_ka, B_ja, ..B_ja](gl)
    label B_ka:
    var tl:int = f[10]:int;
    var ul:int = 3408;
    var vl:int = 22;
    var wl:int = memcmp(tl, ul, vl);
    var xl:int = 0;
    var yl:int = wl != xl;
    f[53]:byte = yl;
    var zl:int = e;
    var am:int = -16;
    var bm:int_ptr = zl + am;
    e = bm;
    g_a = e;
    var cm:int = e;
    var dm:int_ptr = cm + am;
    e = dm;
    g_a = e;
    var em:int = bm[0];
    var fm:int = dm[0];
    var gm:int = 10;
    var hm:int = fm;
    var im:int = gm;
    var jm:int = hm < im;
    var km:int = 1;
    var lm:int = em + km;
    var mm:int = lm * em;
    var nm:int = 1;
    var om:int = mm & nm;
    var pm:int = 0;
    var qm:int = om;
    var rm:int = pm;
    var sm:int = qm == rm;
    var tm:int = jm | sm;
    var um:int = 1;
    var vm:int = tm & um;
    if (eqz(vm)) goto B_ia;
    var wm:int = e;
    var xm:int = -16;
    var ym:int_ptr = wm + xm;
    e = ym;
    g_a = e;
    var zm:int = e;
    var an:int_ptr = zm + xm;
    e = an;
    g_a = e;
    var bn:int = ym[0];
    var cn:int = an[0];
    var dn:int = 10;
    var en:int = cn;
    var fn:int = dn;
    var gn:int = en < fn;
    var hn:int = 1;
    var in:int = bn + hn;
    var jn:int = in * bn;
    var kn:int = 1;
    var ln:int = jn & kn;
    var mn:int = 0;
    var nn:int = ln;
    var on:int = mn;
    var pn:int = nn == on;
    var qn:int = gn | pn;
    var rn:int = 1;
    var sn:int = qn & rn;
    if (eqz(sn)) goto B_ga;
    var tn:int = 0;
    goto B_fa;
    label B_ja:
    var un:int = f[10]:int;
    var vn:int = 3408;
    var wn:int = 22;
    var xn:int = memcmp(un, vn, wn);
    var yn:int = 0;
    var zn:int = xn;
    var ao:int = yn;
    var bo:int = zn != ao;
    var co:int = 1;
    var do:int = bo & co;
    f[53]:byte = do;
    gl = 0;
    continue L_ha;
    label B_ia:
    gl = 1;
    continue L_ha;
  }
  label B_ga:
  tn = 1;
  label B_fa:
  loop L_la {
    br_table[B_oa, B_na, ..B_na](tn)
    label B_oa:
    var eo:int = f[53]:ubyte;
    var fo:int = -1;
    var go:int = eo ^ fo;
    var ho:int = 1;
    var io:int = go & ho;
    f[54]:byte = io;
    var jo:int = e;
    var ko:int = -16;
    var lo:int_ptr = jo + ko;
    e = lo;
    g_a = e;
    var mo:int = e;
    var no:int_ptr = mo + ko;
    e = no;
    g_a = e;
    var oo:int = lo[0];
    var po:int = no[0];
    var qo:int = 10;
    var ro:int = po;
    var so:int = qo;
    var to:int = ro < so;
    var uo:int = 1;
    var vo:int = oo + uo;
    var wo:int = vo * oo;
    var xo:int = 1;
    var yo:int = wo & xo;
    var zo:int = 0;
    var ap:int = yo;
    var bp:int = zo;
    var cp:int = ap == bp;
    var dp:int = to | cp;
    var ep:int = 1;
    var fp:int = dp & ep;
    if (eqz(fp)) goto B_ma;
    var gp:int = f[54]:ubyte;
    ik = gp;
    goto B_j;
    label B_na:
    var hp:int = f[53]:ubyte;
    var ip:int = -1;
    var jp:int = hp ^ ip;
    var kp:int = 1;
    var lp:int = jp & kp;
    f[54]:byte = lp;
    tn = 0;
    continue L_la;
    label B_ma:
    tn = 1;
    continue L_la;
  }
  label B_k:
  loop L_ra {
    br_table[B_ua, B_ta, ..B_ta](af)
    label B_ua:
    var mp:int = 3520;
    var np:int = 0;
    printf(mp, np);
    var op:int_ptr = f[7]:int;
    op[0] = np;
    var pp:int = e;
    var qp:int = -16;
    var rp:int_ptr = pp + qp;
    e = rp;
    g_a = e;
    var sp:int = e;
    var tp:int_ptr = sp + qp;
    e = tp;
    g_a = e;
    var up:int = rp[0];
    var vp:int = tp[0];
    var wp:int = 10;
    var xp:int = vp;
    var yp:int = wp;
    var zp:int = xp < yp;
    var aq:int = 1;
    var bq:int = up + aq;
    var cq:int = bq * up;
    var dq:int = 1;
    var eq:int = cq & dq;
    var fq:int = 0;
    var gq:int = eq;
    var hq:int = fq;
    var iq:int = gq == hq;
    var jq:int = zp | iq;
    var kq:int = 1;
    var lq:int = jq & kq;
    if (eqz(lq)) goto B_sa;
    var mq:int = e;
    var nq:int = -16;
    var oq:int_ptr = mq + nq;
    e = oq;
    g_a = e;
    var pq:int = e;
    var qq:int_ptr = pq + nq;
    e = qq;
    g_a = e;
    var rq:int = oq[0];
    var sq:int = qq[0];
    var tq:int = 10;
    var uq:int = sq;
    var vq:int = tq;
    var wq:int = uq < vq;
    var xq:int = 1;
    var yq:int = rq + xq;
    var zq:int = yq * rq;
    var ar:int = 1;
    var br:int = zq & ar;
    var cr:int = 0;
    var dr:int = br;
    var er:int = cr;
    var fr:int = dr == er;
    var gr:int = wq | fr;
    var hr:int = 1;
    var ir:int = gr & hr;
    if (eqz(ir)) goto B_qa;
    var jr:int = 0;
    goto B_pa;
    label B_ta:
    var kr:int = 3520;
    var lr:int = 0;
    printf(kr, lr);
    var mr:int_ptr = f[7]:int;
    var nr:int = 0;
    mr[0] = nr;
    af = 0;
    continue L_ra;
    label B_sa:
    af = 1;
    continue L_ra;
  }
  label B_qa:
  jr = 1;
  label B_pa:
  loop L_va {
    br_table[B_ya, B_xa, ..B_xa](jr)
    label B_ya:
    var or:int = e;
    var pr:int = -16;
    var qr:int_ptr = or + pr;
    e = qr;
    g_a = e;
    var rr:int = e;
    var sr:int_ptr = rr + pr;
    e = sr;
    g_a = e;
    var tr:int = qr[0];
    var ur:int = sr[0];
    var vr:int = 10;
    var wr:int = ur;
    var xr:int = vr;
    var yr:int = wr < xr;
    var zr:int = 1;
    var as:int = tr + zr;
    var bs:int = as * tr;
    var cs:int = 1;
    var ds:int = bs & cs;
    var es:int = 0;
    var fs:int = ds;
    var gs:int = es;
    var hs:int = fs == gs;
    var is:int = yr | hs;
    var js:int = 1;
    var ks:int = is & js;
    if (eqz(ks)) goto B_wa;
    goto B_i;
    label B_xa:
    jr = 0;
    continue L_va;
    label B_wa:
    jr = 1;
    continue L_va;
  }
  label B_j:
  var ls:int = ik;
  var ms:int = e;
  var ns:int = -16;
  var os:int_ptr = ms + ns;
  e = os;
  g_a = e;
  var ps:int = e;
  var qs:int_ptr = ps + ns;
  e = qs;
  g_a = e;
  var rs:int = os[0];
  var ss:int = qs[0];
  var ts:int = 10;
  var us:int = ss;
  var vs:int = ts;
  var ws:int = us < vs;
  var xs:int = 1;
  var ys:int = rs + xs;
  var zs:int = ys * rs;
  var at:int = 1;
  var bt:int = zs & at;
  var ct:int = 0;
  var dt:int = bt;
  var et:int = ct;
  var ft:int = dt == et;
  var gt:int = ws | ft;
  var ht:int = 1;
  var it:int = gt & ht;
  if (eqz(it)) goto B_ab;
  var jt:int = 0;
  goto B_za;
  label B_ab:
  jt = 1;
  label B_za:
  loop L_fb {
    br_table[B_ib, B_hb, ..B_hb](jt)
    label B_ib:
    var kt:int = 1;
    var lt:int = ls & kt;
    var mt:byte_ptr = f[11]:int;
    mt[0] = lt;
    var nt:ubyte_ptr = f[11]:int;
    var ot:int = nt[0];
    var pt:int = ot & kt;
    f[55]:byte = pt;
    var qt:int = e;
    var rt:int = -16;
    var st:int_ptr = qt + rt;
    e = st;
    g_a = e;
    var tt:int = e;
    var ut:int_ptr = tt + rt;
    e = ut;
    g_a = e;
    var vt:int = st[0];
    var wt:int = ut[0];
    var xt:int = 10;
    var yt:int = wt;
    var zt:int = xt;
    var au:int = yt < zt;
    var bu:int = 1;
    var cu:int = vt + bu;
    var du:int = cu * vt;
    var eu:int = 1;
    var fu:int = du & eu;
    var gu:int = 0;
    var hu:int = fu;
    var iu:int = gu;
    var ju:int = hu == iu;
    var ku:int = au | ju;
    var lu:int = 1;
    var mu:int = ku & lu;
    if (eqz(mu)) goto B_gb;
    var nu:int = f[55]:ubyte;
    var ou:int = 1;
    var pu:int = nu & ou;
    if (eqz(pu)) goto B_jb;
    var qu:int = e;
    var ru:int = -16;
    var su:int_ptr = qu + ru;
    e = su;
    g_a = e;
    var tu:int = e;
    var uu:int_ptr = tu + ru;
    e = uu;
    g_a = e;
    var vu:int = su[0];
    var wu:int = uu[0];
    var xu:int = 10;
    var yu:int = wu;
    var zu:int = xu;
    var av:int = yu < zu;
    var bv:int = 1;
    var cv:int = vu + bv;
    var dv:int = cv * vu;
    var ev:int = 1;
    var fv:int = dv & ev;
    var gv:int = 0;
    var hv:int = fv;
    var iv:int = gv;
    var jv:int = hv == iv;
    var kv:int = av | jv;
    var lv:int = 1;
    var mv:int = kv & lv;
    if (eqz(mv)) goto B_eb;
    var nv:int = 0;
    goto B_bb;
    label B_jb:
    var ov:int = e;
    var pv:int = -16;
    var qv:int_ptr = ov + pv;
    e = qv;
    g_a = e;
    var rv:int = e;
    var sv:int_ptr = rv + pv;
    e = sv;
    g_a = e;
    var tv:int = qv[0];
    var uv:int = sv[0];
    var vv:int = 10;
    var wv:int = uv;
    var xv:int = vv;
    var yv:int = wv < xv;
    var zv:int = 1;
    var aw:int = tv + zv;
    var bw:int = aw * tv;
    var cw:int = 1;
    var dw:int = bw & cw;
    var ew:int = 0;
    var fw:int = dw;
    var gw:int = ew;
    var hw:int = fw == gw;
    var iw:int = yv | hw;
    var jw:int = 1;
    var kw:int = iw & jw;
    if (eqz(kw)) goto B_db;
    var lw:int = 0;
    goto B_cb;
    label B_hb:
    var mw:int = 1;
    var nw:int = ls & mw;
    var ow:byte_ptr = f[11]:int;
    ow[0] = nw;
    var pw:ubyte_ptr = f[11]:int;
    var qw:int = pw[0];
    var rw:int = 1;
    var sw:int = qw & rw;
    f[55]:byte = sw;
    jt = 0;
    continue L_fb;
    label B_gb:
    jt = 1;
    continue L_fb;
  }
  label B_eb:
  nv = 1;
  goto B_bb;
  label B_db:
  lw = 1;
  label B_cb:
  loop L_mb {
    br_table[B_pb, B_ob, ..B_ob](lw)
    label B_pb:
    var tw:int = 3632;
    var uw:int = 0;
    printf(tw, uw);
    var vw:int = e;
    var ww:int = -16;
    var xw:int_ptr = vw + ww;
    e = xw;
    g_a = e;
    var yw:int = e;
    var zw:int_ptr = yw + ww;
    e = zw;
    g_a = e;
    var ax:int = xw[0];
    var bx:int = zw[0];
    var cx:int = 10;
    var dx:int = bx;
    var ex:int = cx;
    var fx:int = dx < ex;
    var gx:int = 1;
    var hx:int = ax + gx;
    var ix:int = hx * ax;
    var jx:int = 1;
    var kx:int = ix & jx;
    var lx:int = 0;
    var mx:int = kx;
    var nx:int = lx;
    var ox:int = mx == nx;
    var px:int = fx | ox;
    var qx:int = 1;
    var rx:int = px & qx;
    if (eqz(rx)) goto B_nb;
    var sx:int = e;
    var tx:int = -16;
    var ux:int_ptr = sx + tx;
    e = ux;
    g_a = e;
    var vx:int = e;
    var wx:int_ptr = vx + tx;
    e = wx;
    g_a = e;
    var xx:int = ux[0];
    var yx:int = wx[0];
    var zx:int = 10;
    var ay:int = yx;
    var by:int = zx;
    var cy:int = ay < by;
    var dy:int = 1;
    var ey:int = xx + dy;
    var fy:int = ey * xx;
    var gy:int = 1;
    var hy:int = fy & gy;
    var iy:int = 0;
    var jy:int = hy;
    var ky:int = iy;
    var ly:int = jy == ky;
    var my:int = cy | ly;
    var ny:int = 1;
    var oy:int = my & ny;
    if (eqz(oy)) goto B_lb;
    var py:int = 0;
    goto B_kb;
    label B_ob:
    var qy:int = 3632;
    var ry:int = 0;
    printf(qy, ry);
    lw = 0;
    continue L_mb;
    label B_nb:
    lw = 1;
    continue L_mb;
  }
  label B_lb:
  py = 1;
  label B_kb:
  loop L_qb {
    br_table[B_tb, B_sb, ..B_sb](py)
    label B_tb:
    var sy:int = e;
    var ty:int = -16;
    var uy:int_ptr = sy + ty;
    e = uy;
    g_a = e;
    var vy:int = e;
    var wy:int_ptr = vy + ty;
    e = wy;
    g_a = e;
    var xy:int = uy[0];
    var yy:int = wy[0];
    var zy:int = 10;
    var az:int = yy;
    var bz:int = zy;
    var cz:int = az < bz;
    var dz:int = 1;
    var ez:int = xy + dz;
    var fz:int = ez * xy;
    var gz:int = 1;
    var hz:int = fz & gz;
    var iz:int = 0;
    var jz:int = hz;
    var kz:int = iz;
    var lz:int = jz == kz;
    var mz:int = cz | lz;
    var nz:int = 1;
    var oz:int = mz & nz;
    if (eqz(oz)) goto B_rb;
    goto B_i;
    label B_sb:
    py = 0;
    continue L_qb;
    label B_rb:
    py = 1;
    continue L_qb;
  }
  label B_bb:
  loop L_wb {
    br_table[B_zb, B_yb, ..B_yb](nv)
    label B_zb:
    var pz:int = 3600;
    var qz:int = 0;
    printf(pz, qz);
    var rz:int = e;
    var sz:int = -16;
    var tz:int_ptr = rz + sz;
    e = tz;
    g_a = e;
    var uz:int = e;
    var vz:int_ptr = uz + sz;
    e = vz;
    g_a = e;
    var wz:int = tz[0];
    var xz:int = vz[0];
    var yz:int = 10;
    var zz:int = xz;
    var aaa:int = yz;
    var baa:int = zz < aaa;
    var caa:int = 1;
    var daa:int = wz + caa;
    var eaa:int = daa * wz;
    var faa:int = 1;
    var gaa:int = eaa & faa;
    var haa:int = 0;
    var iaa:int = gaa;
    var jaa:int = haa;
    var kaa:int = iaa == jaa;
    var laa:int = baa | kaa;
    var maa:int = 1;
    var naa:int = laa & maa;
    if (eqz(naa)) goto B_xb;
    var oaa:int = e;
    var paa:int = -16;
    var qaa:int_ptr = oaa + paa;
    e = qaa;
    g_a = e;
    var raa:int = e;
    var saa:int_ptr = raa + paa;
    e = saa;
    g_a = e;
    var taa:int = qaa[0];
    var uaa:int = saa[0];
    var vaa:int = 10;
    var waa:int = uaa;
    var xaa:int = vaa;
    var yaa:int = waa < xaa;
    var zaa:int = 1;
    var aba:int = taa + zaa;
    var bba:int = aba * taa;
    var cba:int = 1;
    var dba:int = bba & cba;
    var eba:int = 0;
    var fba:int = dba;
    var gba:int = eba;
    var hba:int = fba == gba;
    var iba:int = yaa | hba;
    var jba:int = 1;
    var kba:int = iba & jba;
    if (eqz(kba)) goto B_vb;
    var lba:int = 0;
    goto B_ub;
    label B_yb:
    var mba:int = 3600;
    var nba:int = 0;
    printf(mba, nba);
    nv = 0;
    continue L_wb;
    label B_xb:
    nv = 1;
    continue L_wb;
  }
  label B_vb:
  lba = 1;
  label B_ub:
  loop L_ac {
    br_table[B_dc, B_cc, ..B_cc](lba)
    label B_dc:
    var oba:int = e;
    var pba:int = -16;
    var qba:int_ptr = oba + pba;
    e = qba;
    g_a = e;
    var rba:int = e;
    var sba:int_ptr = rba + pba;
    e = sba;
    g_a = e;
    var tba:int = qba[0];
    var uba:int = sba[0];
    var vba:int = 10;
    var wba:int = uba;
    var xba:int = vba;
    var yba:int = wba < xba;
    var zba:int = 1;
    var aca:int = tba + zba;
    var bca:int = aca * tba;
    var cca:int = 1;
    var dca:int = bca & cca;
    var eca:int = 0;
    var fca:int = dca;
    var gca:int = eca;
    var hca:int = fca == gca;
    var ica:int = yba | hca;
    var jca:int = 1;
    var kca:int = ica & jca;
    if (eqz(kca)) goto B_bc;
    goto B_i;
    label B_cc:
    lba = 0;
    continue L_ac;
    label B_bc:
    lba = 1;
    continue L_ac;
  }
  label B_i:
  var lca:int = e;
  var mca:int = -16;
  var nca:int_ptr = lca + mca;
  e = nca;
  g_a = e;
  var oca:int = e;
  var pca:int_ptr = oca + mca;
  e = pca;
  g_a = e;
  var qca:int = nca[0];
  var rca:int = pca[0];
  var sca:int = 10;
  var tca:int = rca;
  var uca:int = sca;
  var vca:int = tca < uca;
  var wca:int = 1;
  var xca:int = qca + wca;
  var yca:int = xca * qca;
  var zca:int = 1;
  var ada:int = yca & zca;
  var bda:int = 0;
  var cda:int = ada;
  var dda:int = bda;
  var eda:int = cda == dda;
  var fda:int = vca | eda;
  var gda:int = 1;
  var hda:int = fda & gda;
  if (eqz(hda)) goto B_fc;
  var ida:int = 0;
  goto B_ec;
  label B_fc:
  ida = 1;
  label B_ec:
  loop L_ic {
    br_table[B_lc, B_kc, ..B_kc](ida)
    label B_lc:
    var jda:int_ptr = f[7]:int;
    var kda:int = jda[0];
    f[14]:int = kda;
    var lda:int = e;
    var mda:int = -16;
    var nda:int_ptr = lda + mda;
    e = nda;
    g_a = e;
    var oda:int = e;
    var pda:int_ptr = oda + mda;
    e = pda;
    g_a = e;
    var qda:int = nda[0];
    var rda:int = pda[0];
    var sda:int = 10;
    var tda:int = rda;
    var uda:int = sda;
    var vda:int = tda < uda;
    var wda:int = 1;
    var xda:int = qda + wda;
    var yda:int = xda * qda;
    var zda:int = 1;
    var aea:int = yda & zda;
    var bea:int = 0;
    var cea:int = aea;
    var dea:int = bea;
    var eea:int = cea == dea;
    var fea:int = vda | eea;
    var gea:int = 1;
    var hea:int = fea & gea;
    if (eqz(hea)) goto B_jc;
    var iea:int = e;
    var jea:int = -16;
    var kea:int_ptr = iea + jea;
    e = kea;
    g_a = e;
    var lea:int = e;
    var mea:int_ptr = lea + jea;
    e = mea;
    g_a = e;
    var nea:int = kea[0];
    var oea:int = mea[0];
    var pea:int = 10;
    var qea:int = oea;
    var rea:int = pea;
    var sea:int = qea < rea;
    var tea:int = 1;
    var uea:int = nea + tea;
    var vea:int = uea * nea;
    var wea:int = 1;
    var xea:int = vea & wea;
    var yea:int = 0;
    var zea:int = xea;
    var afa:int = yea;
    var bfa:int = zea == afa;
    var cfa:int = sea | bfa;
    var dfa:int = 1;
    var efa:int = cfa & dfa;
    if (eqz(efa)) goto B_hc;
    var ffa:int = 0;
    goto B_gc;
    label B_kc:
    var gfa:int_ptr = f[7]:int;
    var hfa:int = gfa[0];
    f[14]:int = hfa;
    ida = 0;
    continue L_ic;
    label B_jc:
    ida = 1;
    continue L_ic;
  }
  label B_hc:
  ffa = 1;
  label B_gc:
  return loop L_mc {
           br_table[B_pc, B_oc, ..B_oc](ffa)
           label B_pc:
           var ifa:int = f[14]:int;
           f[15]:int = ifa;
           var jfa:int = e;
           var kfa:int = -16;
           var lfa:int_ptr = jfa + kfa;
           e = lfa;
           g_a = e;
           var mfa:int = e;
           var nfa:int_ptr = mfa + kfa;
           e = nfa;
           g_a = e;
           var ofa:int = lfa[0];
           var pfa:int = nfa[0];
           var qfa:int = 10;
           var rfa:int = pfa;
           var sfa:int = qfa;
           var tfa:int = rfa < sfa;
           var ufa:int = 1;
           var vfa:int = ofa + ufa;
           var wfa:int = vfa * ofa;
           var xfa:int = 1;
           var yfa:int = wfa & xfa;
           var zfa:int = 0;
           var aga:int = yfa;
           var bga:int = zfa;
           var cga:int = aga == bga;
           var dga:int = tfa | cga;
           var ega:int = 1;
           var fga:int = dga & ega;
           if (eqz(fga)) goto B_nc;
           var gga:int = f[15]:int;
           var hga:int = 64;
           var iga:int = f + hga;
           g_a = iga;
           return gga;
           label B_oc:
           var jga:int = f[14]:int;
           f[15]:int = jga;
           ffa = 0;
           continue L_mc;
           label B_nc:
           ffa = 1;
           continue L_mc;
         }
}

function encrypt(a:int, b:int) {
  var c:int = g_a;
  var d:int = 48;
  var e:int_ptr = c - d;
  g_a = e;
  e[7] = a;
  e[6] = b;
  var f:int = 275367002;
  e[3] = f;
  loop L_a {
    var g:int = e[3];
    var h:int = 275367002;
    var i:int = g == h;
    if (i) goto B_j;
    var j:int = 509354572;
    var k:int = g == j;
    if (k) goto B_f;
    var l:int = 579149757;
    var m:int = g == l;
    if (m) goto B_c;
    var n:int = 1349287204;
    var o:int = g == n;
    if (o) goto B_g;
    var p:int = 1467266101;
    var q:int = g == p;
    if (q) goto B_i;
    var r:int = 1485198215;
    var s:int = g == r;
    if (s) goto B_h;
    var t:int = 1927918039;
    var u:int = g == t;
    if (u) goto B_d;
    var v:int = 1984534891;
    var w:int = g == v;
    if (w) goto B_e;
    goto B_b;
    label B_j:
    var x:int = e[6];
    var y:int = strlen(x);
    e[5] = y;
    var z:int = 0;
    e[4] = z;
    var aa:int = 1467266101;
    e[3] = aa;
    goto B_b;
    label B_i:
    var ba:int = e[4];
    e[8] = ba;
    var ca:int = e[5];
    e[9] = ca;
    var da:int = 1485198215;
    e[3] = da;
    goto B_b;
    label B_h:
    var ea:int = e[8];
    var fa:int = e[9];
    var ga:int = ea;
    var ha:int = fa;
    var ia:int = ga < ha;
    var ja:int = 1349287204;
    var ka:int = 579149757;
    var la:int = 1;
    var ma:int = ia & la;
    var na:int = select_if(ja, ka, ma);
    e[3] = na;
    goto B_b;
    label B_g:
    var oa:int = e[6];
    var pa:int = e[4];
    var qa:ubyte_ptr = oa + pa;
    var ra:int = qa[0];
    var sa:int = 24;
    var ta:int = ra << sa;
    var ua:int = ta >> sa;
    var va:int = e[4];
    var wa:int = 32;
    var xa:int = wa - va;
    var ya:int = ua + xa;
    e[10] = ya;
    var za:int = 509354572;
    e[3] = za;
    goto B_b;
    label B_f:
    var ab:int = e[4];
    var bb:int = e[10];
    var cb:int = bb ^ ab;
    var db:int = e[7];
    var eb:int = e[4];
    var fb:byte_ptr = db + eb;
    fb[0] = cb;
    var gb:int = 1984534891;
    e[3] = gb;
    goto B_b;
    label B_e:
    var hb:int = e[4];
    var ib:int = 1;
    var jb:int = hb + ib;
    e[11] = jb;
    var kb:int = 1927918039;
    e[3] = kb;
    goto B_b;
    label B_d:
    var lb:int = e[11];
    e[4] = lb;
    var mb:int = 1467266101;
    e[3] = mb;
    goto B_b;
    label B_c:
    var nb:int = 48;
    var ob:int = e + nb;
    g_a = ob;
    return ;
    label B_b:
    continue L_a;
  }
}

function datadiv_decode424238335() {
  var a:int = 0;
  var b:int = a;
  loop L_a {
    var c:int = b;
    var d:int = 3520;
    var e:int = d + c;
    var f:int = e[0]:ubyte;
    var g:int = 103;
    var h:int = f ^ g;
    e[0]:byte = h;
    var i:int = 1;
    var j:int = c + i;
    var k:int = 32;
    var l:int = c;
    var m:int = k;
    var n:int = l < m;
    var o:int = 0;
    var p:int = 1;
    var q:int = n & p;
    var r:int = 1;
    var s:int = o & r;
    var t:int = q != s;
    var u:int = 1;
    var v:int = t & u;
    b = j;
    if (v) continue L_a;
  }
  var w:int = 0;
  var x:int = w;
  loop L_b {
    var y:int = x;
    var z:int = 3568;
    var aa:int = z + y;
    var ba:int = aa[0]:ubyte;
    var ca:int = -58;
    var da:int = ba ^ ca;
    aa[0]:byte = da;
    var ea:int = 1;
    var fa:int = y + ea;
    var ga:int = 17;
    var ha:int = y;
    var ia:int = ga;
    var ja:int = ha < ia;
    var ka:int = 0;
    var la:int = 1;
    var ma:int = ja & la;
    var na:int = 1;
    var oa:int = ka & na;
    var pa:int = ma != oa;
    var qa:int = 1;
    var ra:int = pa & qa;
    x = fa;
    if (ra) continue L_b;
  }
  var sa:int = 0;
  var ta:int = sa;
  loop L_c {
    var ua:int = ta;
    var va:int = 3600;
    var wa:int = va + ua;
    var xa:int = wa[0]:ubyte;
    var ya:int = 105;
    var za:int = xa ^ ya;
    wa[0]:byte = za;
    var ab:int = 1;
    var bb:int = ua + ab;
    var cb:int = 17;
    var db:int = ua;
    var eb:int = cb;
    var fb:int = db < eb;
    var gb:int = 0;
    var hb:int = 1;
    var ib:int = fb & hb;
    var jb:int = 1;
    var kb:int = gb & jb;
    var lb:int = ib != kb;
    var mb:int = 1;
    var nb:int = lb & mb;
    ta = bb;
    if (nb) continue L_c;
  }
  var ob:int = 0;
  var pb:int = ob;
  loop L_d {
    var qb:int = pb;
    var rb:int = 3632;
    var sb:int = rb + qb;
    var tb:int = sb[0]:ubyte;
    var ub:int = 115;
    var vb:int = tb ^ ub;
    sb[0]:byte = vb;
    var wb:int = 1;
    var xb:int = qb + wb;
    var yb:int = 17;
    var zb:int = qb;
    var ac:int = yb;
    var bc:int = zb < ac;
    var cc:int = 0;
    var dc:int = 1;
    var ec:int = bc & dc;
    var fc:int = 1;
    var gc:int = cc & fc;
    var hc:int = ec != gc;
    var ic:int = 1;
    var jc:int = hc & ic;
    pb = xb;
    if (jc) continue L_d;
  }
  var kc:int = 0;
  var lc:int = kc;
  loop L_e {
    var mc:int = lc;
    var nc:int = 3664;
    var oc:int = nc + mc;
    var pc:int = oc[0]:ubyte;
    var qc:int = 81;
    var rc:int = pc ^ qc;
    oc[0]:byte = rc;
    var sc:int = 1;
    var tc:int = mc + sc;
    var uc:int = 25;
    var vc:int = mc;
    var wc:int = uc;
    var xc:int = vc < wc;
    var yc:int = 0;
    var zc:int = 1;
    var ad:int = xc & zc;
    var bd:int = 1;
    var cd:int = yc & bd;
    var dd:int = ad != cd;
    var ed:int = 1;
    var fd:int = dd & ed;
    lc = tc;
    if (fd) continue L_e;
  }
}

function wasi_args_get(a:int, b:int):int {
  return imported_wasi_snapshot_preview1_args_get(a, b) & 65535
}

function wasi_args_sizes_get(a:int, b:int):int {
  return imported_wasi_snapshot_preview1_args_sizes_get(a, b) & 65535
}

function wasi_fd_close(a:int):int {
  return imported_wasi_snapshot_preview1_fd_close(a) & 65535
}

function wasi_fd_fdstat_get(a:int, b:int):int {
  return imported_wasi_snapshot_preview1_fd_fdstat_get(a, b) & 65535
}

function wasi_fd_seek(a:int, b:long, c:int, d:int):int {
  return imported_wasi_snapshot_preview1_fd_seek(a, b, c, d) & 65535
}

function wasi_fd_write(a:int, b:int, c:int, d:int):int {
  return imported_wasi_snapshot_preview1_fd_write(a, b, c, d) & 65535
}

function wasi_proc_exit(a:int) {
  imported_wasi_snapshot_preview1_proc_exit(a);
  unreachable;
}

function sbrk(a:int):int {
  if (a) goto B_a;
  return memory_size() << 16;
  label B_a:
  if (a & 65535) goto B_b;
  if (a <= -1) goto B_b;
  a = memory_grow(a >> 16);
  if (a != -1) goto B_c;
  0[985]:int = 48;
  return -1;
  label B_c:
  return a << 16;
  label B_b:
  abort();
  return unreachable;
}

function malloc(a:int):int {
  return dlmalloc(a)
}

function dlmalloc(a:int):int {
  var f:{ a:int, b:int, c:int, d:int, e:int }
  var h:int;
  var b:int = g_a - 16;
  g_a = b;
  if (0[992]:int) goto B_a;
  var c:int = sbrk(0) - 71072;
  if (c < 89) goto B_a;
  var d:int = 0;
  var e:int = 0[1104]:int;
  if (e) goto B_b;
  0[1107]:long@4 = -1L;
  0[1105]:long@4 = 281474976776192L;
  0[1104]:int = (e = (b + 8 & -16) ^ 1431655768);
  0[1109]:int = 0;
  0[1097]:int = 0;
  label B_b:
  0[1099]:int = c;
  0[1098]:int = 71072;
  0[990]:int = 71072;
  0[995]:int = e;
  0[994]:int = -1;
  loop L_c {
    (d + 4004)[0]:int = (e = d + 3992);
    e[0]:int = (f = d + 3984);
    (d + 3996)[0]:int = f;
    (d + 4012)[0]:int = (f = d + 4000);
    f.a = e;
    (d + 4020)[0]:int = (e = d + 4008);
    e[0]:int = f;
    (d + 4016)[0]:int = e;
    d = d + 32;
    if (d != 256) continue L_c;
  }
  e = 71072 + (d = select_if(-8 - 71072 & 15, 0, 71072 + 8 & 15));
  (e + 4)[0]:int = (d = c - d + -56) | 1;
  0[993]:int = 0[1108]:int;
  0[992]:int = e;
  0[989]:int = d;
  (c + 71072 + -52)[0]:int = 56;
  label B_a:
  if (a > 236) goto B_o;
  var g:{ a:int, b:int } = 0[986]:int;
  d = g >> (e = (c = select_if(16, a + 19 & -16, a < 11)) >> 3);
  if (eqz(d & 3)) goto B_p;
  f = ((d & 1) | e) ^ 1;
  a = f << 3;
  e = (a + 3992)[0]:int;
  d = e + 8;
  c = e[2]:int;
  if (c != (a = a + 3984)) goto B_r;
  0[986]:int = g & -2 << f;
  goto B_q;
  label B_r:
  a[2]:int = c;
  c[3]:int = a;
  label B_q:
  e[1]:int = (f = f << 3) | 3;
  e = e + f + 4;
  e[0]:int = e[0]:int | 1;
  goto B_d;
  label B_p:
  if (c <= (h = 0[988]:int)) goto B_n;
  if (eqz(d)) goto B_s;
  d = d << e & ((d = 2 << e) | 0 - d);
  d = (d & 0 - d) + -1;
  e = d >> (d = d >> 12 & 16);
  f = e >> 5 & 8;
  f = 
    ((((f | d) | (e = (d = e >> f) >> 2 & 4)) | (e = (d = d >> e) >> 1 & 2)) | 
     (e = (d = d >> e) >> 1 & 1)) + 
    (d >> e);
  a = f << 3;
  e = (a + 3992)[0]:int;
  d = e[2]:int;
  if (d != (a = a + 3984)) goto B_u;
  0[986]:int = (g = g & -2 << f);
  goto B_t;
  label B_u:
  a[2]:int = d;
  d[3]:int = a;
  label B_t:
  d = e + 8;
  e[1]:int = c | 3;
  (e + (f = f << 3))[0]:int = (f = f - c);
  a = e + c;
  a[1]:int = f | 1;
  if (eqz(h)) goto B_v;
  var i:int = h >> 3;
  c = (i << 3) + 3984;
  e = 0[991]:int;
  if (g & (i = 1 << i)) goto B_x;
  0[986]:int = g | i;
  i = c;
  goto B_w;
  label B_x:
  i = c[2]:int;
  label B_w:
  i[3]:int = e;
  c[2]:int = e;
  e[3]:int = c;
  e[2]:int = i;
  label B_v:
  0[991]:int = a;
  0[988]:int = f;
  goto B_d;
  label B_s:
  var j:int_ptr = 0[987]:int;
  if (eqz(j)) goto B_n;
  d = (j & 0 - j) + -1;
  e = d >> (d = d >> 12 & 16);
  f = e >> 5 & 8;
  a = 
    ((((((f | d) | (e = (d = e >> f) >> 2 & 4)) | (e = (d = d >> e) >> 1 & 2)) | 
       (e = (d = d >> e) >> 1 & 1)) + 
      (d >> e) << 
      2) + 
     4248)[0]:int;
  e = (a[1]:int & -8) - c;
  f = a;
  loop L_z {
    d = f.e;
    if (d) goto B_aa;
    d = (f + 20)[0]:int;
    if (eqz(d)) goto B_y;
    label B_aa:
    f = (d[1]:int & -8) - c;
    e = select_if(f, e, f = f < e);
    a = select_if(d, a, f);
    f = d;
    continue L_z;
  }
  label B_y:
  var k:int_ptr = a[6]:int;
  i = a[3]:int;
  if (i == a) goto B_ba;
  0[990]:int > (d = a[2]:int);
  i[2]:int = d;
  d[3]:int = i;
  goto B_e;
  label B_ba:
  f = a + 20;
  d = f.a;
  if (d) goto B_ca;
  d = a[4]:int;
  if (eqz(d)) goto B_m;
  f = a + 16;
  label B_ca:
  loop L_da {
    var l:int_ptr = f;
    i = d;
    f = i + 20;
    d = f.a;
    if (d) continue L_da;
    f = i + 16;
    d = i[4]:int;
    if (d) continue L_da;
  }
  l[0] = 0;
  goto B_e;
  label B_o:
  c = -1;
  if (a > -65) goto B_n;
  d = a + 19;
  c = d & -16;
  h = 0[987]:int;
  if (eqz(h)) goto B_n;
  l = 0;
  if (c < 256) goto B_ea;
  l = 31;
  if (c > 16777215) goto B_ea;
  d = d >> 8;
  e = d << (d = d + 1048320 >> 16 & 8);
  f = e << (e = e + 520192 >> 16 & 4);
  d = ((f << (f = f + 245760 >> 16 & 2)) >> 15) - ((d | e) | f);
  l = (d << 1 | (c >> d + 21 & 1)) + 28;
  label B_ea:
  e = 0 - c;
  f = ((l << 2) + 4248)[0]:int;
  if (f) goto B_ia;
  d = 0;
  i = 0;
  goto B_ha;
  label B_ia:
  d = 0;
  a = c << select_if(0, 25 - (l >> 1), l == 31);
  i = 0;
  loop L_ja {
    g = (f.b & -8) - c;
    if (g >= e) goto B_ka;
    e = g;
    i = f;
    if (g) goto B_ka;
    e = 0;
    i = f;
    d = f;
    goto B_ga;
    label B_ka:
    d = select_if(select_if(d,
                            g = (f + 20)[0]:int,
                            g == (f = (f + (a >> 29 & 4) + 16)[0]:int)),
                  d,
                  g);
    a = a << 1;
    if (f) continue L_ja;
  }
  label B_ha:
  if (d | i) goto B_la;
  i = 0;
  d = 2 << l;
  d = (d | 0 - d) & h;
  if (eqz(d)) goto B_n;
  d = (d & 0 - d) + -1;
  f = d >> (d = d >> 12 & 16);
  a = f >> 5 & 8;
  d = 
    ((((((a | d) | (f = (d = f >> a) >> 2 & 4)) | (f = (d = d >> f) >> 1 & 2)) | 
       (f = (d = d >> f) >> 1 & 1)) + 
      (d >> f) << 
      2) + 
     4248)[0]:int;
  label B_la:
  if (eqz(d)) goto B_fa;
  label B_ga:
  loop L_ma {
    g = (d[1]:int & -8) - c;
    a = g < e;
    f = d[4]:int;
    if (f) goto B_na;
    f = (d + 20)[0]:int;
    label B_na:
    e = select_if(g, e, a);
    i = select_if(d, i, a);
    d = f;
    if (f) continue L_ma;
  }
  label B_fa:
  if (eqz(i)) goto B_n;
  if (e >= 0[988]:int - c) goto B_n;
  l = i[6]:int;
  a = i[3]:int;
  if (a == i) goto B_oa;
  0[990]:int > (d = i[2]:int);
  a[2]:int = d;
  d[3]:int = a;
  goto B_f;
  label B_oa:
  f = i + 20;
  d = f.a;
  if (d) goto B_pa;
  d = i[4]:int;
  if (eqz(d)) goto B_l;
  f = i + 16;
  label B_pa:
  loop L_qa {
    g = f;
    a = d;
    f = a + 20;
    d = f.a;
    if (d) continue L_qa;
    f = a + 16;
    d = a[4]:int;
    if (d) continue L_qa;
  }
  g.a = 0;
  goto B_f;
  label B_n:
  d = 0[988]:int;
  if (d < c) goto B_ra;
  e = 0[991]:int;
  f = d - c;
  if (f < 16) goto B_ta;
  a = e + c;
  a[1]:int = f | 1;
  0[988]:int = f;
  0[991]:int = a;
  (e + d)[0]:int = f;
  e[1]:int = c | 3;
  goto B_sa;
  label B_ta:
  e[1]:int = d | 3;
  d = d + e + 4;
  d[0]:int = d[0]:int | 1;
  0[991]:int = 0;
  0[988]:int = 0;
  label B_sa:
  d = e + 8;
  goto B_d;
  label B_ra:
  a = 0[989]:int;
  if (a <= c) goto B_ua;
  d = 0[992]:int;
  e = d + c;
  e[1]:int = (f = a - c) | 1;
  0[989]:int = f;
  0[992]:int = e;
  d[1]:int = c | 3;
  d = d + 8;
  goto B_d;
  label B_ua:
  if (eqz(0[1104]:int)) goto B_wa;
  e = 0[1106]:int;
  goto B_va;
  label B_wa:
  0[1107]:long@4 = -1L;
  0[1105]:long@4 = 281474976776192L;
  0[1104]:int = (b + 12 & -16) ^ 1431655768;
  0[1109]:int = 0;
  0[1097]:int = 0;
  e = 65536;
  label B_va:
  d = 0;
  g = e + (h = c + 71);
  i = g & (l = 0 - e);
  if (i > c) goto B_xa;
  0[985]:int = 48;
  goto B_d;
  label B_xa:
  d = 0[1096]:int;
  if (eqz(d)) goto B_ya;
  e = 0[1094]:int;
  f = e + i;
  if (f <= e) goto B_za;
  if (f <= d) goto B_ya;
  label B_za:
  d = 0;
  0[985]:int = 48;
  goto B_d;
  label B_ya:
  if (0[4388]:ubyte & 4) goto B_i;
  e = 0[992]:int;
  if (eqz(e)) goto B_cb;
  d = 4392;
  loop L_db {
    f = d[0]:int;
    if (f > e) goto B_eb;
    if (f + d[1]:int > e) goto B_bb;
    label B_eb:
    d = d[2]:int;
    if (d) continue L_db;
  }
  label B_cb:
  a = sbrk(0);
  if (a == -1) goto B_j;
  g = i;
  d = 0[1105]:int;
  e = d + -1;
  if (eqz(e & a)) goto B_fb;
  g = i - a + (e + a & 0 - d);
  label B_fb:
  if (g <= c) goto B_j;
  if (g > 2147483646) goto B_j;
  d = 0[1096]:int;
  if (eqz(d)) goto B_gb;
  e = 0[1094]:int;
  f = e + g;
  if (f <= e) goto B_j;
  if (f > d) goto B_j;
  label B_gb:
  d = sbrk(g);
  if (d != a) goto B_ab;
  goto B_h;
  label B_bb:
  g = g - a & l;
  if (g > 2147483646) goto B_j;
  a = sbrk(g);
  if (a == d[0]:int + d[1]:int) goto B_k;
  d = a;
  label B_ab:
  if (d == -1) goto B_hb;
  if (c + 72 <= g) goto B_hb;
  e = h - g + (e = 0[1106]:int) & 0 - e;
  if (e <= 2147483646) goto B_ib;
  a = d;
  goto B_h;
  label B_ib:
  if (sbrk(e) == -1) goto B_jb;
  g = e + g;
  a = d;
  goto B_h;
  label B_jb:
  sbrk(0 - g);
  goto B_j;
  label B_hb:
  a = d;
  if (d != -1) goto B_h;
  goto B_j;
  label B_m:
  i = 0;
  goto B_e;
  label B_l:
  a = 0;
  goto B_f;
  label B_k:
  if (a != -1) goto B_h;
  label B_j:
  0[1097]:int = 0[1097]:int | 4;
  label B_i:
  if (i > 2147483646) goto B_g;
  a = sbrk(i);
  d = sbrk(0);
  if (a == -1) goto B_g;
  if (d == -1) goto B_g;
  if (a >= d) goto B_g;
  g = d - a;
  if (g <= c + 56) goto B_g;
  label B_h:
  0[1094]:int = (d = 0[1094]:int + g);
  if (d <= 0[1095]:int) goto B_kb;
  0[1095]:int = d;
  label B_kb:
  e = 0[992]:int;
  if (eqz(e)) goto B_ob;
  d = 4392;
  loop L_pb {
    if (a == (f = d[0]:int) + (i = d[1]:int)) goto B_nb;
    d = d[2]:int;
    if (d) continue L_pb;
    goto B_mb;
  }
  label B_ob:
  d = 0[990]:int;
  if (eqz(d)) goto B_rb;
  if (a >= d) goto B_qb;
  label B_rb:
  0[990]:int = a;
  label B_qb:
  d = 0;
  0[1099]:int = g;
  0[1098]:int = a;
  0[994]:int = -1;
  0[995]:int = 0[1104]:int;
  0[1101]:int = 0;
  loop L_sb {
    (d + 4004)[0]:int = (e = d + 3992);
    e[0]:int = (f = d + 3984);
    (d + 3996)[0]:int = f;
    (d + 4012)[0]:int = (f = d + 4000);
    f.a = e;
    (d + 4020)[0]:int = (e = d + 4008);
    e[0]:int = f;
    (d + 4016)[0]:int = e;
    d = d + 32;
    if (d != 256) continue L_sb;
  }
  e = a + (d = select_if(-8 - a & 15, 0, a + 8 & 15));
  e[1]:int = (d = g - d + -56) | 1;
  0[993]:int = 0[1108]:int;
  0[992]:int = e;
  0[989]:int = d;
  (g + a + -52)[0]:int = 56;
  goto B_lb;
  label B_nb:
  if (d[12]:ubyte & 8) goto B_mb;
  if (f > e) goto B_mb;
  if (a <= e) goto B_mb;
  a = e + (f = select_if(-8 - e & 15, 0, e + 8 & 15));
  a[1]:int = (f = (l = 0[989]:int + g) - f) | 1;
  d[1]:int = i + g;
  0[993]:int = 0[1108]:int;
  0[989]:int = f;
  0[992]:int = a;
  (l + e + 4)[0]:int = 56;
  goto B_lb;
  label B_mb:
  if (a >= (l = 0[990]:int)) goto B_tb;
  0[990]:int = a;
  l = a;
  label B_tb:
  i = a + g;
  d = 4392;
  loop L_bc {
    if (d[0]:int == i) goto B_ac;
    d = d[2]:int;
    if (d) continue L_bc;
    goto B_zb;
  }
  label B_ac:
  if (eqz(d[12]:ubyte & 8)) goto B_yb;
  label B_zb:
  d = 4392;
  loop L_cc {
    f = d[0]:int;
    if (f > e) goto B_dc;
    f = f + d[1]:int;
    if (f > e) goto B_xb;
    label B_dc:
    d = d[2]:int;
    continue L_cc;
  }
  label B_yb:
  d[0]:int = a;
  d[1]:int = d[1]:int + g;
  g = a + select_if(-8 - a & 15, 0, a + 8 & 15);
  g.b = c | 3;
  i = i + select_if(-8 - i & 15, 0, i + 8 & 15);
  f = i - (c = g + c);
  if (e != i) goto B_ec;
  0[992]:int = c;
  0[989]:int = (d = 0[989]:int + f);
  c[1]:int = d | 1;
  goto B_vb;
  label B_ec:
  if (0[991]:int != i) goto B_fc;
  0[991]:int = c;
  0[988]:int = (d = 0[988]:int + f);
  c[1]:int = d | 1;
  (c + d)[0]:int = d;
  goto B_vb;
  label B_fc:
  d = i[1]:int;
  if ((d & 3) != 1) goto B_gc;
  h = d & -8;
  if (d > 255) goto B_ic;
  e = i[2]:int;
  e == (a = ((l = d >> 3) << 3) + 3984);
  d = i[3]:int;
  if (d != e) goto B_jc;
  0[986]:int = 0[986]:int & -2 << l;
  goto B_hc;
  label B_jc:
  d == a;
  d[2]:int = e;
  e[3]:int = d;
  goto B_hc;
  label B_ic:
  j = i[6]:int;
  a = i[3]:int;
  if (a == i) goto B_lc;
  l > (d = i[2]:int);
  a[2]:int = d;
  d[3]:int = a;
  goto B_kc;
  label B_lc:
  d = i + 20;
  e = d[0]:int;
  if (e) goto B_mc;
  d = i + 16;
  e = d[0]:int;
  if (e) goto B_mc;
  a = 0;
  goto B_kc;
  label B_mc:
  loop L_nc {
    l = d;
    a = e;
    d = a + 20;
    e = d[0]:int;
    if (e) continue L_nc;
    d = a + 16;
    e = a[4]:int;
    if (e) continue L_nc;
  }
  l[0] = 0;
  label B_kc:
  if (eqz(j)) goto B_hc;
  e = i[7]:int;
  d = (e << 2) + 4248;
  if (d[0]:int != i) goto B_pc;
  d[0]:int = a;
  if (a) goto B_oc;
  0[987]:int = 0[987]:int & -2 << e;
  goto B_hc;
  label B_pc:
  (j + select_if(16, 20, j[4] == i))[0]:int = a;
  if (eqz(a)) goto B_hc;
  label B_oc:
  a[6]:int = j;
  d = i[4]:int;
  if (eqz(d)) goto B_qc;
  a[4]:int = d;
  d[6]:int = a;
  label B_qc:
  d = i[5]:int;
  if (eqz(d)) goto B_hc;
  (a + 20)[0]:int = d;
  d[6]:int = a;
  label B_hc:
  f = h + f;
  i = i + h;
  label B_gc:
  i[1]:int = i[1]:int & -2;
  (c + f)[0]:int = f;
  c[1]:int = f | 1;
  if (f > 255) goto B_rc;
  e = f >> 3;
  d = (e << 3) + 3984;
  f = 0[986]:int;
  if (f & (e = 1 << e)) goto B_tc;
  0[986]:int = f | e;
  e = d;
  goto B_sc;
  label B_tc:
  e = d[2]:int;
  label B_sc:
  e[3]:int = c;
  d[2]:int = c;
  c[3]:int = d;
  c[2]:int = e;
  goto B_vb;
  label B_rc:
  d = 31;
  if (f > 16777215) goto B_uc;
  d = f >> 8;
  e = d << (d = d + 1048320 >> 16 & 8);
  a = e << (e = e + 520192 >> 16 & 4);
  d = ((a << (a = a + 245760 >> 16 & 2)) >> 15) - ((d | e) | a);
  d = (d << 1 | (f >> d + 21 & 1)) + 28;
  label B_uc:
  c[7]:int = d;
  c[4]:long@4 = 0L;
  e = (d << 2) + 4248;
  a = 0[987]:int;
  if (a & (i = 1 << d)) goto B_vc;
  e[0]:int = c;
  0[987]:int = a | i;
  c[6]:int = e;
  c[2]:int = c;
  c[3]:int = c;
  goto B_vb;
  label B_vc:
  d = f << select_if(0, 25 - (d >> 1), d == 31);
  a = e[0]:int;
  loop L_wc {
    e = a;
    if ((e[1]:int & -8) == f) goto B_wb;
    a = d >> 29;
    d = d << 1;
    i = e + (a & 4) + 16;
    a = i[0]:int;
    if (a) continue L_wc;
  }
  i[0]:int = c;
  c[6]:int = e;
  c[3]:int = c;
  c[2]:int = c;
  goto B_vb;
  label B_xb:
  l = a + (d = select_if(-8 - a & 15, 0, a + 8 & 15));
  l[1] = (d = g - d + -56) | 1;
  (i + -52)[0]:int = 56;
  i = select_if(e,
                i = f + select_if(55 - f & 15, 0, f + -55 & 15) + -63,
                i < e + 16);
  i[1]:int = 35;
  0[993]:int = 0[1108]:int;
  0[992]:int = l;
  0[989]:int = d;
  (i + 16)[0]:long@4 = 0[1100]:long@4;
  i[2]:long@4 = 0[1098]:long@4;
  0[1100]:int = i + 8;
  0[1099]:int = g;
  0[1098]:int = a;
  0[1101]:int = 0;
  d = i + 36;
  loop L_xc {
    d[0]:int = 7;
    if (f > (d = d + 4)) continue L_xc;
  }
  if (i == e) goto B_lb;
  i[1]:int = i[1]:int & -2;
  i[0]:int = (g = i - e);
  e[1]:int = g | 1;
  if (g > 255) goto B_yc;
  f = g >> 3;
  d = (f << 3) + 3984;
  a = 0[986]:int;
  if (a & (f = 1 << f)) goto B_ad;
  0[986]:int = a | f;
  f = d;
  goto B_zc;
  label B_ad:
  f = d[2]:int;
  label B_zc:
  f.d = e;
  d[2]:int = e;
  e[3]:int = d;
  e[2]:int = f;
  goto B_lb;
  label B_yc:
  d = 31;
  if (g > 16777215) goto B_bd;
  d = g >> 8;
  f = d << (d = d + 1048320 >> 16 & 8);
  a = f << (f = f + 520192 >> 16 & 4);
  d = ((a << (a = a + 245760 >> 16 & 2)) >> 15) - ((d | f) | a);
  d = (d << 1 | (g >> d + 21 & 1)) + 28;
  label B_bd:
  e[4]:long@4 = 0L;
  (e + 28)[0]:int = d;
  f = (d << 2) + 4248;
  a = 0[987]:int;
  if (a & (i = 1 << d)) goto B_cd;
  f.a = e;
  0[987]:int = a | i;
  (e + 24)[0]:int = f;
  e[2]:int = e;
  e[3]:int = e;
  goto B_lb;
  label B_cd:
  d = g << select_if(0, 25 - (d >> 1), d == 31);
  a = f.a;
  loop L_dd {
    f = a;
    if ((f.b & -8) == g) goto B_ub;
    a = d >> 29;
    d = d << 1;
    i = f + (a & 4) + 16;
    a = i[0]:int;
    if (a) continue L_dd;
  }
  i[0]:int = e;
  (e + 24)[0]:int = f;
  e[3]:int = e;
  e[2]:int = e;
  goto B_lb;
  label B_wb:
  d = e[2]:int;
  d[3]:int = c;
  e[2]:int = c;
  c[6]:int = 0;
  c[3]:int = e;
  c[2]:int = d;
  label B_vb:
  d = g + 8;
  goto B_d;
  label B_ub:
  d = f.c;
  d[3]:int = e;
  f.c = e;
  (e + 24)[0]:int = 0;
  e[3]:int = f;
  e[2]:int = d;
  label B_lb:
  d = 0[989]:int;
  if (d <= c) goto B_g;
  e = 0[992]:int;
  f = e + c;
  f.b = (d = d - c) | 1;
  0[989]:int = d;
  0[992]:int = f;
  e[1]:int = c | 3;
  d = e + 8;
  goto B_d;
  label B_g:
  d = 0;
  0[985]:int = 48;
  goto B_d;
  label B_f:
  if (eqz(l)) goto B_ed;
  if (i != (d = ((f = i[7]:int) << 2) + 4248)[0]:int) goto B_gd;
  d[0]:int = a;
  if (a) goto B_fd;
  0[987]:int = (h = h & -2 << f);
  goto B_ed;
  label B_gd:
  (l + select_if(16, 20, l[4] == i))[0]:int = a;
  if (eqz(a)) goto B_ed;
  label B_fd:
  a[6]:int = l;
  d = i[4]:int;
  if (eqz(d)) goto B_hd;
  a[4]:int = d;
  d[6]:int = a;
  label B_hd:
  d = (i + 20)[0]:int;
  if (eqz(d)) goto B_ed;
  (a + 20)[0]:int = d;
  d[6]:int = a;
  label B_ed:
  if (e > 15) goto B_jd;
  i[1]:int = (d = e + c) | 3;
  d = d + i + 4;
  d[0]:int = d[0]:int | 1;
  goto B_id;
  label B_jd:
  a = i + c;
  a[1]:int = e | 1;
  i[1]:int = c | 3;
  (a + e)[0]:int = e;
  if (e > 255) goto B_kd;
  e = e >> 3;
  d = (e << 3) + 3984;
  f = 0[986]:int;
  if (f & (e = 1 << e)) goto B_md;
  0[986]:int = f | e;
  e = d;
  goto B_ld;
  label B_md:
  e = d[2]:int;
  label B_ld:
  e[3]:int = a;
  d[2]:int = a;
  a[3]:int = d;
  a[2]:int = e;
  goto B_id;
  label B_kd:
  d = 31;
  if (e > 16777215) goto B_nd;
  d = e >> 8;
  f = d << (d = d + 1048320 >> 16 & 8);
  c = f << (f = f + 520192 >> 16 & 4);
  d = ((c << (c = c + 245760 >> 16 & 2)) >> 15) - ((d | f) | c);
  d = (d << 1 | (e >> d + 21 & 1)) + 28;
  label B_nd:
  a[7]:int = d;
  a[4]:long@4 = 0L;
  f = (d << 2) + 4248;
  if (h & (c = 1 << d)) goto B_od;
  f.a = a;
  0[987]:int = h | c;
  a[6]:int = f;
  a[2]:int = a;
  a[3]:int = a;
  goto B_id;
  label B_od:
  d = e << select_if(0, 25 - (d >> 1), d == 31);
  c = f.a;
  loop L_qd {
    f = c;
    if ((f.b & -8) == e) goto B_pd;
    c = d >> 29;
    d = d << 1;
    g = f + (c & 4) + 16;
    c = g.a;
    if (c) continue L_qd;
  }
  g.a = a;
  a[6]:int = f;
  a[3]:int = a;
  a[2]:int = a;
  goto B_id;
  label B_pd:
  d = f.c;
  d[3]:int = a;
  f.c = a;
  a[6]:int = 0;
  a[3]:int = f;
  a[2]:int = d;
  label B_id:
  d = i + 8;
  goto B_d;
  label B_e:
  if (eqz(k)) goto B_rd;
  if (a != (d = ((f = a[7]:int) << 2) + 4248)[0]:int) goto B_td;
  d[0]:int = i;
  if (i) goto B_sd;
  0[987]:int = j & -2 << f;
  goto B_rd;
  label B_td:
  (k + select_if(16, 20, k[4] == a))[0]:int = i;
  if (eqz(i)) goto B_rd;
  label B_sd:
  i[6]:int = k;
  d = a[4]:int;
  if (eqz(d)) goto B_ud;
  i[4]:int = d;
  d[6]:int = i;
  label B_ud:
  d = (a + 20)[0]:int;
  if (eqz(d)) goto B_rd;
  (i + 20)[0]:int = d;
  d[6]:int = i;
  label B_rd:
  if (e > 15) goto B_wd;
  a[1]:int = (d = e + c) | 3;
  d = d + a + 4;
  d[0]:int = d[0]:int | 1;
  goto B_vd;
  label B_wd:
  f = a + c;
  f.b = e | 1;
  a[1]:int = c | 3;
  (f + e)[0]:int = e;
  if (eqz(h)) goto B_xd;
  i = h >> 3;
  c = (i << 3) + 3984;
  d = 0[991]:int;
  i = 1 << i;
  if (i & g) goto B_zd;
  0[986]:int = i | g;
  i = c;
  goto B_yd;
  label B_zd:
  i = c[2]:int;
  label B_yd:
  i[3]:int = d;
  c[2]:int = d;
  d[3]:int = c;
  d[2]:int = i;
  label B_xd:
  0[991]:int = f;
  0[988]:int = e;
  label B_vd:
  d = a + 8;
  label B_d:
  g_a = b + 16;
  return d;
}

function free(a:int) {
  dlfree(a)
}

function dlfree(a:int_ptr) {
  var c:int_ptr;
  var e:{ a:int, b:int, c:int, d:int }
  var f:int_ptr;
  var g:int_ptr;
  if (eqz(a)) goto B_a;
  var b:int = a + -8;
  var d:{ a:int, b:int, c:int, d:int, e:int, f:int, g:int, h:int } = 
    b + (a = (c = (a + -4)[0]:int) & -8);
  if (c & 1) goto B_b;
  if (eqz(c & 3)) goto B_a;
  b = b - (c = b[0]:int);
  if (b < (e = 0[990]:int)) goto B_a;
  a = c + a;
  if (0[991]:int == b) goto B_c;
  if (c > 255) goto B_d;
  e = b[2]:int;
  e == (g = ((f = c >> 3) << 3) + 3984);
  c = b[3]:int;
  if (c != e) goto B_e;
  0[986]:int = 0[986]:int & -2 << f;
  goto B_b;
  label B_e:
  c == g;
  c[2] = e;
  e.d = c;
  goto B_b;
  label B_d:
  var h:int_ptr = b[6]:int;
  g = b[3]:int;
  if (g == b) goto B_g;
  e > (c = b[2]:int);
  g[2] = c;
  c[3] = g;
  goto B_f;
  label B_g:
  c = b + 20;
  e = c[0];
  if (e) goto B_h;
  c = b + 16;
  e = c[0];
  if (e) goto B_h;
  g = 0;
  goto B_f;
  label B_h:
  loop L_i {
    f = c;
    g = e;
    c = g + 20;
    e = c[0];
    if (e) continue L_i;
    c = g + 16;
    e = g[4];
    if (e) continue L_i;
  }
  f[0] = 0;
  label B_f:
  if (eqz(h)) goto B_b;
  e = b[7]:int;
  c = (e << 2) + 4248;
  if (c[0] != b) goto B_k;
  c[0] = g;
  if (g) goto B_j;
  0[987]:int = 0[987]:int & -2 << e;
  goto B_b;
  label B_k:
  (h + select_if(16, 20, h[4] == b))[0]:int = g;
  if (eqz(g)) goto B_b;
  label B_j:
  g[6] = h;
  c = b[4]:int;
  if (eqz(c)) goto B_l;
  g[4] = c;
  c[6] = g;
  label B_l:
  c = b[5]:int;
  if (eqz(c)) goto B_b;
  (g + 20)[0]:int = c;
  c[6] = g;
  goto B_b;
  label B_c:
  c = d.b;
  if ((c & 3) != 3) goto B_b;
  d.b = c & -2;
  0[988]:int = a;
  (b + a)[0]:int = a;
  b[1]:int = a | 1;
  return ;
  label B_b:
  if (d <= b) goto B_a;
  c = d.b;
  if (eqz(c & 1)) goto B_a;
  if (c & 2) goto B_n;
  if (0[992]:int != d) goto B_o;
  0[992]:int = b;
  0[989]:int = (a = 0[989]:int + a);
  b[1]:int = a | 1;
  if (b != 0[991]:int) goto B_a;
  0[988]:int = 0;
  0[991]:int = 0;
  return ;
  label B_o:
  if (0[991]:int != d) goto B_p;
  0[991]:int = b;
  0[988]:int = (a = 0[988]:int + a);
  b[1]:int = a | 1;
  (b + a)[0]:int = a;
  return ;
  label B_p:
  a = (c & -8) + a;
  if (c > 255) goto B_r;
  e = d.c;
  e == (g = ((f = c >> 3) << 3) + 3984);
  c = d.d;
  if (c != e) goto B_s;
  0[986]:int = 0[986]:int & -2 << f;
  goto B_q;
  label B_s:
  c == g;
  c[2] = e;
  e.d = c;
  goto B_q;
  label B_r:
  h = d.g;
  g = d.d;
  if (g == d) goto B_u;
  0[990]:int > (c = d.c);
  g[2] = c;
  c[3] = g;
  goto B_t;
  label B_u:
  c = d + 20;
  e = c[0];
  if (e) goto B_v;
  c = d + 16;
  e = c[0];
  if (e) goto B_v;
  g = 0;
  goto B_t;
  label B_v:
  loop L_w {
    f = c;
    g = e;
    c = g + 20;
    e = c[0];
    if (e) continue L_w;
    c = g + 16;
    e = g[4];
    if (e) continue L_w;
  }
  f[0] = 0;
  label B_t:
  if (eqz(h)) goto B_q;
  e = d.h;
  c = (e << 2) + 4248;
  if (c[0] != d) goto B_y;
  c[0] = g;
  if (g) goto B_x;
  0[987]:int = 0[987]:int & -2 << e;
  goto B_q;
  label B_y:
  (h + select_if(16, 20, h[4] == d))[0]:int = g;
  if (eqz(g)) goto B_q;
  label B_x:
  g[6] = h;
  c = d.e;
  if (eqz(c)) goto B_z;
  g[4] = c;
  c[6] = g;
  label B_z:
  c = d.f;
  if (eqz(c)) goto B_q;
  (g + 20)[0]:int = c;
  c[6] = g;
  label B_q:
  (b + a)[0]:int = a;
  b[1]:int = a | 1;
  if (b != 0[991]:int) goto B_m;
  0[988]:int = a;
  return ;
  label B_n:
  d.b = c & -2;
  (b + a)[0]:int = a;
  b[1]:int = a | 1;
  label B_m:
  if (a > 255) goto B_aa;
  c = a >> 3;
  a = (c << 3) + 3984;
  e = 0[986]:int;
  if (e & (c = 1 << c)) goto B_ca;
  0[986]:int = e | c;
  c = a;
  goto B_ba;
  label B_ca:
  c = a[2];
  label B_ba:
  c[3] = b;
  a[2] = b;
  b[3]:int = a;
  b[2]:int = c;
  return ;
  label B_aa:
  c = 31;
  if (a > 16777215) goto B_da;
  c = a >> 8;
  e = c << (c = c + 1048320 >> 16 & 8);
  g = e << (e = e + 520192 >> 16 & 4);
  c = ((g << (g = g + 245760 >> 16 & 2)) >> 15) - ((c | e) | g);
  c = (c << 1 | (a >> c + 21 & 1)) + 28;
  label B_da:
  b[4]:long@4 = 0L;
  (b + 28)[0]:int = c;
  e = (c << 2) + 4248;
  g = 0[987]:int;
  if (g & (d = 1 << c)) goto B_fa;
  e.a = b;
  0[987]:int = g | d;
  (b + 24)[0]:int = e;
  b[2]:int = b;
  b[3]:int = b;
  goto B_ea;
  label B_fa:
  c = a << select_if(0, 25 - (c >> 1), c == 31);
  g = e.a;
  loop L_ha {
    e = g;
    if ((e.b & -8) == a) goto B_ga;
    g = c >> 29;
    c = c << 1;
    d = e + (g & 4) + 16;
    g = d.a;
    if (g) continue L_ha;
  }
  d.a = b;
  (b + 24)[0]:int = e;
  b[3]:int = b;
  b[2]:int = b;
  goto B_ea;
  label B_ga:
  a = e.c;
  a[3] = b;
  e.c = b;
  (b + 24)[0]:int = 0;
  b[3]:int = e;
  b[2]:int = a;
  label B_ea:
  0[994]:int = select_if(b = 0[994]:int + -1, -1, b);
  label B_a:
}

function calloc(a:int, b:int):int {
  if (a) goto B_b;
  var c:int = 0;
  goto B_a;
  label B_b:
  var d:long = i64_extend_i32_u(a) * i64_extend_i32_u(b);
  c = i32_wrap_i64(d);
  if ((b | a) < 65536) goto B_a;
  c = select_if(-1, c, i32_wrap_i64(d >> 32L) != 0);
  label B_a:
  a = dlmalloc(c);
  if (eqz(a)) goto B_c;
  if (eqz((a + -4)[0]:ubyte & 3)) goto B_c;
  memset(a, 0, c);
  label B_c:
  return a;
}

function Exit(a:int) {
  wasi_proc_exit(a);
  unreachable;
}

function main_1():int {
  var a:int_ptr = g_a - 16;
  g_a = a;
  if (wasi_args_sizes_get(a + 8, a + 12)) goto B_e;
  var b:int = a[2];
  var c:int = b + 1;
  if (c < b) goto B_d;
  var d:int = malloc(a[3]);
  if (eqz(d)) goto B_c;
  b = calloc(c, 4);
  if (eqz(b)) goto B_b;
  if (wasi_args_get(b, d)) goto B_a;
  b = main(a[2], b);
  g_a = a + 16;
  return b;
  label B_e:
  Exit(71);
  unreachable;
  label B_d:
  Exit(70);
  unreachable;
  label B_c:
  Exit(70);
  unreachable;
  label B_b:
  free(d);
  Exit(70);
  unreachable;
  label B_a:
  free(d);
  free(b);
  Exit(71);
  return unreachable;
}

function original_main():int {
  return main_1()
}

function abort() {
  unreachable;
  unreachable;
}

function dummy() {
}

function wasm_call_dtors() {
  dummy();
  stdio_exit();
}

function exit(a:int) {
  dummy();
  stdio_exit();
  Exit(a);
  unreachable;
}

function printf(a:int, b:int):int {
  var c:int_ptr = g_a - 16;
  g_a = c;
  c[3] = b;
  b = vfprintf(3696, a, b);
  g_a = c + 16;
  return b;
}

function close(a:int):int {
  a = wasi_fd_close(a);
  if (a) goto B_a;
  return 0;
  label B_a:
  0[985]:int = a;
  return -1;
}

function stdio_close(a:int_ptr):int {
  return close(a[14])
}

function lseek(a:int, b:long, c:int):long {
  var d:long_ptr = g_a - 16;
  g_a = d;
  a = wasi_fd_seek(a, b, c & 255, d + 8);
  if (eqz(a)) goto B_b;
  0[985]:int = select_if(70, a, a == 76);
  b = -1L;
  goto B_a;
  label B_b:
  b = d[1];
  label B_a:
  g_a = d + 16;
  return b;
}

function stdio_seek(a:int_ptr, b:long, c:int):long {
  return lseek(a[14], b, c)
}

function writev(a:int, b:int, c:int):int {
  var d:int_ptr = g_a - 16;
  g_a = d;
  var e:int = -1;
  if (c > -1) goto B_b;
  0[985]:int = 28;
  goto B_a;
  label B_b:
  c = wasi_fd_write(a, b, c, d + 12);
  if (eqz(c)) goto B_c;
  0[985]:int = c;
  e = -1;
  goto B_a;
  label B_c:
  e = d[3];
  label B_a:
  g_a = d + 16;
  return e;
}

function stdio_write(a:int, b:int_ptr, c:int):int {
  var g:int;
  var h:int;
  var i:int;
  var d:{ a:int, b:int, c:int, d:int } = g_a - 16;
  g_a = d;
  d.d = c;
  d.c = b;
  d.a = (b = a[6]:int);
  d.b = (b = a[5]:int - b);
  var e:int = 2;
  var f:int = b + c;
  if (f == (g = writev(a[14]:int, d, 2))) goto B_b;
  b = d;
  loop L_c {
    if (g > -1) goto B_d;
    g = 0;
    a[6]:int = 0;
    a[2]:long = 0L;
    a[0]:int = a[0]:int | 32;
    if (e == 2) goto B_a;
    g = c - b[1];
    goto B_a;
    label B_d:
    var j:int_ptr = b + ((i = g > (h = b[1])) << 3);
    j[0] = j[0] + (h = g - select_if(h, 0, i));
    j = b + select_if(12, 4, i);
    j[0] = j[0] - h;
    f = f - g;
    if (
      f != (g = writev(a[14]:int, b = select_if(b + 8, b, i), e = e - i))) continue L_c;
  }
  label B_b:
  a[6]:int = (b = a[10]:int);
  a[5]:int = b;
  a[4]:int = b + a[11]:int;
  g = c;
  label B_a:
  g_a = d + 16;
  return g;
}

function isatty(a:int):int {
  var b:ubyte_ptr = g_a - 32;
  g_a = b;
  a = wasi_fd_fdstat_get(a, b + 8);
  if (a) goto B_b;
  a = 59;
  if (b[8] != 2) goto B_b;
  if (b[16] & 36) goto B_b;
  var c:int = 1;
  goto B_a;
  label B_b:
  c = 0;
  0[985]:int = a;
  label B_a:
  g_a = b + 32;
  return c;
}

function stdout_write(a:int, b:int, c:int):int {
  a[8]:int = 4;
  if (a[0]:ubyte & 64) goto B_a;
  if (isatty(a[14]:int)) goto B_a;
  a[16]:int = -1;
  label B_a:
  return stdio_write(a, b, c);
}

function ofl_lock():int {
  return 5480
}

function stdio_exit() {
  var c:int;
  var a:int_ptr = ofl_lock()[0]:int;
  if (eqz(a)) goto B_a;
  loop L_b {
    if (a[5] == a[6]) goto B_c;
    call_indirect(a, 0, 0, a[8]);
    label B_c:
    var b:int = a[1];
    if (b == (c = a[2])) goto B_d;
    call_indirect(a, i64_extend_i32_s(b - c), 1, a[9]);
    label B_d:
    a = a[13];
    if (a) continue L_b;
  }
  label B_a:
  a = 0[1371]:int;
  if (eqz(a)) goto B_e;
  if (a[5] == a[6]) goto B_f;
  call_indirect(a, 0, 0, a[8]);
  label B_f:
  b = a[1];
  if (b == (c = a[2])) goto B_e;
  call_indirect(a, i64_extend_i32_s(b - c), 1, a[9]);
  label B_e:
  a = d_b[100]:int;
  if (eqz(a)) goto B_g;
  if (a[5] == a[6]) goto B_h;
  call_indirect(a, 0, 0, a[8]);
  label B_h:
  b = a[1];
  if (b == (c = a[2])) goto B_g;
  call_indirect(a, i64_extend_i32_s(b - c), 1, a[9]);
  label B_g:
  a = d_b[130]:int;
  if (eqz(a)) goto B_i;
  if (a[5] == a[6]) goto B_j;
  call_indirect(a, 0, 0, a[8]);
  label B_j:
  b = a[1];
  if (b == (c = a[2])) goto B_i;
  call_indirect(a, i64_extend_i32_s(b - c), 1, a[9]);
  label B_i:
}

function towrite(a:int):int {
  var b:int;
  a[15]:int = (b = a[15]:int) + -1 | b;
  b = a[0]:int;
  if (eqz(b & 8)) goto B_a;
  a[0]:int = b | 32;
  return -1;
  label B_a:
  a[1]:long@4 = 0L;
  a[6]:int = (b = a[10]:int);
  a[5]:int = b;
  a[4]:int = b + a[11]:int;
  return 0;
}

function fwritex(a:int, b:int, c:int_ptr):int {
  var f:int;
  var d:int = c[4];
  if (d) goto B_b;
  var e:int = 0;
  if (towrite(c)) goto B_a;
  d = c[4];
  label B_b:
  if (d - (f = c[5]) >= b) goto B_c;
  return call_indirect(c, a, b, c[8]);
  label B_c:
  var g:int = 0;
  if (c[16] >= 0) goto B_e;
  d = b;
  goto B_d;
  label B_e:
  g = 0;
  e = a;
  d = 0;
  loop L_f {
    if (b != d) goto B_g;
    d = b;
    goto B_d;
    label B_g:
    d = d + 1;
    var h:int = e + b;
    var i:int = e + -1;
    e = i;
    if ((h + -1)[0]:ubyte != 10) continue L_f;
  }
  e = call_indirect(c, a, g = b - d + 1, c[8]);
  if (e < g) goto B_a;
  d = d + -1;
  a = i + b + 1;
  f = c[5];
  label B_d:
  memcpy(f, a, d);
  c[5] = c[5] + d;
  e = g + d;
  label B_a:
  return e;
}

function fwrite(a:int, b:int, c:int, d:int_ptr):int {
  var g:int;
  var e:int = c * b;
  var f:int = d[4];
  if (f) goto B_b;
  f = 0;
  if (towrite(d)) goto B_a;
  f = d[4];
  label B_b:
  if (f - (g = d[5]) >= e) goto B_c;
  f = call_indirect(d, a, e, d[8]);
  goto B_a;
  label B_c:
  var h:int = 0;
  if (d[16] >= 0) goto B_e;
  f = e;
  goto B_d;
  label B_e:
  var i:int = a + e;
  h = 0;
  f = 0;
  loop L_f {
    if (e + f) goto B_g;
    f = e;
    goto B_d;
    label B_g:
    var j:int = i + f;
    var k:int = f + -1;
    f = k;
    if ((j + -1)[0]:ubyte != 10) continue L_f;
  }
  f = call_indirect(d, a, h = e + k + 1, d[8]);
  if (f < h) goto B_a;
  f = k ^ -1;
  a = i + k + 1;
  g = d[5];
  label B_d:
  memcpy(g, a, f);
  d[5] = d[5] + f;
  f = h + f;
  label B_a:
  if (f != e) goto B_h;
  return select_if(c, 0, b);
  label B_h:
  return f / b;
}

function strerror(a:int):int {
  var b:int_ptr = 0[1378]:int;
  if (b) goto B_a;
  b = 5488;
  0[1378]:int = 5488;
  label B_a:
  return 
    lctrans(((select_if(0, a, a > 76) << 1) + 2576)[0]:ushort + 1024, b[5]);
}

function fputs(a:int, b:int):int {
  var c:int = strlen(a);
  return select_if(-1, 0, c != fwrite(a, 1, c, b));
}

function vfprintf(a:int, b:int, c:int):int {
  var d:int = g_a - 208;
  g_a = d;
  d[51]:int = c;
  (d + 160 + 32)[0]:long = 0L;
  (d + 184)[0]:long = 0L;
  (d + 176)[0]:long = 0L;
  d[21]:long = 0L;
  d[20]:long = 0L;
  d[50]:int = c;
  if (printf_core(0, b, d + 200, d + 80, d + 160) >= 0) goto B_b;
  a = -1;
  goto B_a;
  label B_b:
  var e:int = a[0]:int;
  if (a[15]:int > 0) goto B_c;
  a[0]:int = e & -33;
  label B_c:
  if (a[11]:int) goto B_g;
  a[11]:int = 80;
  a[6]:int = 0;
  a[2]:long = 0L;
  var f:int = a[10]:int;
  a[10]:int = d;
  goto B_f;
  label B_g:
  f = 0;
  if (a[4]:int) goto B_e;
  label B_f:
  c = -1;
  if (towrite(a)) goto B_d;
  label B_e:
  c = printf_core(a, b, d + 200, d + 80, d + 160);
  label B_d:
  b = e & 32;
  if (eqz(f)) goto B_h;
  call_indirect(a, 0, 0, a[8]:int);
  a[11]:int = 0;
  a[10]:int = f;
  a[6]:int = 0;
  a[4]:int = 0;
  f = a[5]:int;
  a[5]:int = 0;
  c = select_if(c, -1, f);
  label B_h:
  a[0]:int = (f = a[0]:int) | b;
  a = select_if(-1, c, f & 32);
  label B_a:
  g_a = d + 208;
  return a;
}

function printf_core(a:int, b:int, c:int_ptr, d:int, e:int_ptr):int {
  var s:int_ptr;
  var na:int;
  var f:int = g_a - 880;
  g_a = f;
  var g:int = f + 68 + 12;
  var h:int = f + 55;
  var i:int = -2 - f + 80;
  var j:int = f + 80 | 9;
  var k:int = -10 - f + 68;
  var l:int = f + 68 + 10;
  var m:int = f + 400;
  var n:int = f + 56;
  var o:int = 0;
  var p:int = 0;
  var q:int = 0;
  loop L_d {
    var r:int = b;
    if (q > 2147483647 - p) goto B_c;
    p = q + p;
    q = r[0]:ubyte;
    if (eqz(q)) goto B_m;
    b = r;
    loop L_n {
      q = q & 255;
      if (eqz(q)) goto B_q;
      if (q != 37) goto B_o;
      q = b;
      loop L_r {
        if ((b + 1)[0]:ubyte != 37) goto B_p;
        q = q + 1;
        b = b + 2;
        if (b[0]:ubyte == 37) continue L_r;
        goto B_p;
      }
      label B_q:
      q = b;
      label B_p:
      q = q - r;
      if (q > (s = 2147483647 - p)) goto B_c;
      if (eqz(a)) goto B_s;
      if (a[0]:ubyte & 32) goto B_s;
      fwritex(r, q, a);
      label B_s:
      if (q) continue L_d;
      q = b + 1;
      var t:int = -1;
      var u:int_ptr = b[1]:byte;
      var v:int = u + -48;
      if (v > 9) goto B_t;
      if (b[2]:ubyte != 36) goto B_t;
      q = b + 3;
      u = b[3]:byte;
      o = 1;
      t = v;
      label B_t:
      var w:int = 0;
      b = u + -32;
      if (b > 31) goto B_u;
      b = 1 << b;
      if (eqz(b & 75913)) goto B_u;
      v = q + 1;
      w = 0;
      loop L_v {
        w = b | w;
        q = v;
        u = q[0]:byte;
        b = u + -32;
        if (b >= 32) goto B_u;
        v = q + 1;
        b = 1 << b;
        if (b & 75913) continue L_v;
      }
      label B_u:
      if (u != 42) goto B_w;
      b = q[1]:byte + -48;
      if (b > 9) goto B_y;
      if (q[2]:ubyte != 36) goto B_y;
      e[b]:int = 10;
      v = q + 3;
      var x:int = ((q[1]:byte << 3) + d + -384)[0]:int;
      o = 1;
      goto B_x;
      label B_y:
      if (o) goto B_k;
      v = q + 1;
      if (a) goto B_z;
      o = 0;
      x = 0;
      goto B_l;
      label B_z:
      c[0] = (b = c[0]) + 4;
      x = b[0]:int;
      o = 0;
      label B_x:
      if (x > -1) goto B_l;
      x = 0 - x;
      w = w | 8192;
      goto B_l;
      label B_w:
      x = 0;
      b = u + -48;
      if (b <= 9) goto B_aa;
      v = q;
      goto B_l;
      label B_aa:
      x = 0;
      loop L_ba {
        if (x > 214748364) goto B_ca;
        x = select_if(-1, (v = x * 10) + b, b > 2147483647 - v);
        b = q[1]:byte;
        v = q + 1;
        q = v;
        b = b + -48;
        if (b < 10) continue L_ba;
        if (x < 0) goto B_c;
        goto B_l;
        label B_ca:
        b = q[1]:byte;
        x = -1;
        q = q + 1;
        b = b + -48;
        if (b < 10) continue L_ba;
        goto B_c;
      }
      label B_o:
      b = b + 1;
      q = b[0]:ubyte;
      continue L_n;
    }
    label B_m:
    if (a) goto B_a;
    if (o) goto B_da;
    p = 0;
    goto B_a;
    label B_da:
    b = e[1];
    if (b) goto B_fa;
    b = 1;
    goto B_ea;
    label B_fa:
    pop_arg(d + 8, b, c);
    b = e[2];
    if (b) goto B_ga;
    b = 2;
    goto B_ea;
    label B_ga:
    pop_arg(d + 16, b, c);
    b = e[3];
    if (b) goto B_ha;
    b = 3;
    goto B_ea;
    label B_ha:
    pop_arg(d + 24, b, c);
    b = e[4];
    if (b) goto B_ia;
    b = 4;
    goto B_ea;
    label B_ia:
    pop_arg(d + 32, b, c);
    b = e[5];
    if (b) goto B_ja;
    b = 5;
    goto B_ea;
    label B_ja:
    pop_arg(d + 40, b, c);
    b = e[6];
    if (b) goto B_ka;
    b = 6;
    goto B_ea;
    label B_ka:
    pop_arg(d + 48, b, c);
    b = e[7];
    if (b) goto B_la;
    b = 7;
    goto B_ea;
    label B_la:
    pop_arg(d + 56, b, c);
    b = e[8];
    if (b) goto B_ma;
    b = 8;
    goto B_ea;
    label B_ma:
    pop_arg(d + 64, b, c);
    b = e[9];
    if (b) goto B_na;
    b = 9;
    goto B_ea;
    label B_na:
    pop_arg(d + 72, b, c);
    p = 1;
    goto B_a;
    label B_ea:
    b = b << 2;
    loop L_oa {
      if ((e + b)[0]:int) goto B_k;
      b = b + 4;
      if (b != 40) continue L_oa;
    }
    p = 1;
    goto B_a;
    label B_l:
    q = 0;
    u = -1;
    if (v[0]:ubyte == 46) goto B_qa;
    b = v;
    var y:byte_ptr = 0;
    goto B_pa;
    label B_qa:
    u = v[1]:byte;
    if (u != 42) goto B_ra;
    b = v[2]:byte + -48;
    if (b > 9) goto B_ta;
    if (v[3]:ubyte != 36) goto B_ta;
    e[b]:int = 10;
    b = v + 4;
    u = ((v[2]:byte << 3) + d + -384)[0]:int;
    goto B_sa;
    label B_ta:
    if (o) goto B_k;
    b = v + 2;
    if (a) goto B_ua;
    u = 0;
    goto B_sa;
    label B_ua:
    c[0] = (v = c[0]) + 4;
    u = v[0]:int;
    label B_sa:
    y = (u ^ -1) >> 31;
    goto B_pa;
    label B_ra:
    b = v + 1;
    var z:int_ptr = u + -48;
    if (z <= 9) goto B_va;
    y = 1;
    u = 0;
    goto B_pa;
    label B_va:
    v = 0;
    loop L_wa {
      u = -1;
      if (v > 214748364) goto B_xa;
      u = select_if(-1, (v = v * 10) + z, z > 2147483647 - v);
      label B_xa:
      y = 1;
      v = u;
      b = b + 1;
      z = b[0]:byte + -48;
      if (z < 10) continue L_wa;
    }
    label B_pa:
    loop L_ya {
      v = q;
      q = b[0]:byte + -65;
      if (q > 57) goto B_k;
      b = b + 1;
      q = (v * 58 + q + 2928)[0]:ubyte;
      if (q + -1 < 8) continue L_ya;
    }
    if (q == 27) goto B_bb;
    if (eqz(q)) goto B_k;
    if (t < 0) goto B_cb;
    e[t]:int = q;
    f[7]:long = d[t]:long;
    goto B_ab;
    label B_cb:
    if (a) goto B_db;
    p = 0;
    goto B_a;
    label B_db:
    pop_arg(f + 56, q, c);
    goto B_za;
    label B_bb:
    if (t > -1) goto B_k;
    label B_ab:
    q = 0;
    if (eqz(a)) continue L_d;
    label B_za:
    z = w & -65537;
    t = select_if(z, w, w & 8192);
    q = (b + -1)[0]:byte;
    var aa:int = select_if(select_if(q & -33, q, (q & 15) == 3), q, v);
    br_table[B_eb, B_j, B_hb, B_j, B_eb, B_eb, B_eb, B_j, B_j, B_j, B_j, B_j, B_j, B_j, B_j, B_j, B_j, B_j, B_ib, B_j, B_j, B_j, B_j, B_rb, B_j, B_j, B_j, B_j, B_j, B_j, B_j, B_j, B_eb, B_j, B_mb, B_pb, B_eb, B_eb, B_eb, B_j, B_pb, B_j, B_j, B_j, B_lb, B_tb, B_qb, B_sb, B_j, B_j, B_kb, B_j, B_ub, B_j, B_j, B_rb, ..B_j](
      aa + -65);
    label B_ub:
    var ba:ubyte_ptr = 0;
    var ca:int = 2730;
    var da:long = f[7]:long;
    goto B_ob;
    label B_tb:
    q = 0;
    br_table[B_bc, B_ac, B_zb, B_yb, B_xb, L_d, B_wb, B_vb, ..L_d](
      v & 255)
    label B_bc:
    (f[14]:int)[0]:int = p;
    continue L_d;
    label B_ac:
    (f[14]:int)[0]:int = p;
    continue L_d;
    label B_zb:
    (f[14]:int)[0]:long = i64_extend_i32_s(p);
    continue L_d;
    label B_yb:
    (f[14]:int)[0]:short = p;
    continue L_d;
    label B_xb:
    (f[14]:int)[0]:byte = p;
    continue L_d;
    label B_wb:
    (f[14]:int)[0]:int = p;
    continue L_d;
    label B_vb:
    (f[14]:int)[0]:long = i64_extend_i32_s(p);
    continue L_d;
    label B_sb:
    u = select_if(u, 8, u > 8);
    t = t | 8;
    aa = 120;
    label B_rb:
    ba = 0;
    ca = 2730;
    da = f[7]:long;
    if (eqz(eqz(da))) goto B_cc;
    r = n;
    goto B_nb;
    label B_cc:
    v = aa & 32;
    r = n;
    loop L_dc {
      r = r + -1;
      r[0]:byte = ((i32_wrap_i64(da) & 15) + 3392)[0]:ubyte | v;
      q = da > 15L;
      da = da >> 4L;
      if (q) continue L_dc;
    }
    if (eqz(t & 8)) goto B_nb;
    ca = (aa >> 4) + 2730;
    ba = 2;
    goto B_nb;
    label B_qb:
    r = n;
    da = f[7]:long;
    if (eqz(da)) goto B_ec;
    r = n;
    loop L_fc {
      r = r + -1;
      r[0]:byte = (i32_wrap_i64(da) & 7) | 48;
      q = da > 7L;
      da = da >> 3L;
      if (q) continue L_fc;
    }
    label B_ec:
    ba = 0;
    ca = 2730;
    if (eqz(t & 8)) goto B_nb;
    u = select_if(u, (q = n - r) + 1, u > q);
    goto B_nb;
    label B_pb:
    da = f[7]:long;
    if (da > -1L) goto B_gc;
    f[7]:long = (da = 0L - da);
    ba = 1;
    ca = 2730;
    goto B_ob;
    label B_gc:
    if (eqz(t & 2048)) goto B_hc;
    ba = 1;
    ca = 2731;
    goto B_ob;
    label B_hc:
    ca = select_if(2732, 2730, ba = t & 1);
    label B_ob:
    if (da >= 4294967296L) goto B_jc;
    var ea:long = da;
    r = n;
    goto B_ic;
    label B_jc:
    r = n;
    loop L_kc {
      r = r + -1;
      r[0]:byte = i32_wrap_i64(da - (ea = da / 10L) * 10L) | 48;
      q = da > 42949672959L;
      da = ea;
      if (q) continue L_kc;
    }
    label B_ic:
    q = i32_wrap_i64(ea);
    if (eqz(q)) goto B_nb;
    loop L_lc {
      r = r + -1;
      r[0]:byte = q - (v = q / 10) * 10 | 48;
      w = q > 9;
      q = v;
      if (w) continue L_lc;
    }
    label B_nb:
    if (eqz(y)) goto B_mc;
    if (u < 0) goto B_c;
    label B_mc:
    z = select_if(t & -65537, t, y);
    da = f[7]:long;
    if (da != 0L) goto B_nc;
    w = 0;
    if (u) goto B_nc;
    r = n;
    q = n;
    goto B_i;
    label B_nc:
    w = select_if(u, q = n - r + eqz(da), u > q);
    q = n;
    goto B_i;
    label B_mb:
    f[55]:byte = f[7]:long;
    ba = 0;
    ca = 2730;
    w = 1;
    r = h;
    q = n;
    goto B_i;
    label B_lb:
    r = strerror(0[985]:int);
    goto B_jb;
    label B_kb:
    q = f[14]:int;
    r = select_if(q, 2777, q);
    label B_jb:
    ba = 0;
    q = r + (w = strnlen(r, select_if(2147483647, u, u < 0)));
    ca = 2730;
    if (u > -1) goto B_i;
    if (eqz(q[0]:ubyte)) goto B_i;
    goto B_c;
    label B_ib:
    v = f[14]:int;
    if (u) goto B_gb;
    q = 0;
    goto B_fb;
    label B_hb:
    f[3]:int = 0;
    f[2]:int = f[7]:long;
    f[14]:int = f + 8;
    u = -1;
    v = f + 8;
    label B_gb:
    q = 0;
    r = v;
    loop L_pc {
      s = r[0]:int;
      if (eqz(s)) goto B_oc;
      s = wctomb(f + 4, s);
      w = s < 0;
      if (w) goto B_qc;
      if (s > u - q) goto B_qc;
      r = r + 4;
      if (u > (q = s + q)) continue L_pc;
      goto B_oc;
      label B_qc:
    }
    if (w) goto B_b;
    label B_oc:
    if (q < 0) goto B_c;
    label B_fb:
    w = t & 73728;
    if (w) goto B_rc;
    if (x <= q) goto B_rc;
    memset(f + 112, 32, select_if(r = x - q, 256, s = r < 256));
    if (s) goto B_sc;
    loop L_tc {
      if (a[0]:ubyte & 32) goto B_uc;
      fwritex(f + 112, 256, a);
      label B_uc:
      r = r + -256;
      if (r > 255) continue L_tc;
    }
    label B_sc:
    if (a[0]:ubyte & 32) goto B_rc;
    fwritex(f + 112, r, a);
    label B_rc:
    if (eqz(q)) goto B_vc;
    r = 0;
    loop L_wc {
      s = v[0]:int;
      if (eqz(s)) goto B_vc;
      s = wctomb(f + 4, s);
      r = s + r;
      if (r > q) goto B_vc;
      if (a[0]:ubyte & 32) goto B_xc;
      fwritex(f + 4, s, a);
      label B_xc:
      v = v + 4;
      if (r < q) continue L_wc;
    }
    label B_vc:
    if (w != 8192) goto B_yc;
    if (x <= q) goto B_yc;
    memset(f + 112, 32, select_if(r = x - q, 256, s = r < 256));
    if (s) goto B_zc;
    loop L_ad {
      if (a[0]:ubyte & 32) goto B_bd;
      fwritex(f + 112, 256, a);
      label B_bd:
      r = r + -256;
      if (r > 255) continue L_ad;
    }
    label B_zc:
    if (a[0]:ubyte & 32) goto B_yc;
    fwritex(f + 112, r, a);
    label B_yc:
    q = select_if(x, q, x > q);
    continue L_d;
    label B_eb:
    if (eqz(y)) goto B_cd;
    if (u < 0) goto B_c;
    label B_cd:
    var fa:double = f[7]:double;
    f[27]:int = 0;
    if (i64_reinterpret_f64(fa) > -1L) goto B_ed;
    fa = -(fa);
    var ga:int = 1;
    var ha:byte_ptr = 0;
    var ia:ubyte_ptr = 2740;
    goto B_dd;
    label B_ed:
    if (eqz(t & 2048)) goto B_fd;
    ga = 1;
    ha = 0;
    ia = 2743;
    goto B_dd;
    label B_fd:
    ia = select_if(2746, 2741, ga = t & 1);
    ha = eqz(ga);
    label B_dd:
    if (abs(fa) < inf) goto B_gd;
    r = ga + 3;
    if (t & 8192) goto B_hd;
    if (x <= r) goto B_hd;
    memset(f + 624, 32, select_if(q = x - r, 256, s = q < 256));
    if (s) goto B_id;
    loop L_jd {
      if (a[0]:ubyte & 32) goto B_kd;
      fwritex(f + 624, 256, a);
      label B_kd:
      q = q + -256;
      if (q > 255) continue L_jd;
    }
    label B_id:
    if (a[0]:ubyte & 32) goto B_hd;
    fwritex(f + 624, q, a);
    label B_hd:
    q = a[0]:int;
    if (q & 32) goto B_ld;
    fwritex(ia, ga, a);
    q = a[0]:int;
    label B_ld:
    if (q & 32) goto B_md;
    fwritex(select_if(select_if(2759, 2767, q = aa & 32),
                      select_if(2763, 2771, q),
                      fa != fa),
            3,
            a);
    label B_md:
    if ((t & 73728) != 8192) goto B_nd;
    if (x <= r) goto B_nd;
    memset(f + 624, 32, select_if(q = x - r, 256, s = q < 256));
    if (s) goto B_od;
    loop L_pd {
      if (a[0]:ubyte & 32) goto B_qd;
      fwritex(f + 624, 256, a);
      label B_qd:
      q = q + -256;
      if (q > 255) continue L_pd;
    }
    label B_od:
    if (a[0]:ubyte & 32) goto B_nd;
    fwritex(f + 624, q, a);
    label B_nd:
    q = select_if(x, r, x > r);
    goto B_e;
    label B_gd:
    fa = frexp(fa, f + 108);
    fa = fa + fa;
    if (fa == 0.0) goto B_td;
    f[27]:int = (q = f[27]:int) + -1;
    var ja:int = aa | 32;
    if (ja != 97) goto B_sd;
    goto B_f;
    label B_td:
    ja = aa | 32;
    if (ja == 97) goto B_f;
    var ka:int = select_if(6, u, u < 0);
    v = f[27]:int;
    goto B_rd;
    label B_sd:
    f[27]:int = (v = q + -29);
    ka = select_if(6, u, u < 0);
    fa = fa * 268435456.0;
    label B_rd:
    ca = select_if(f + 112, m, v < 0);
    r = ca;
    loop L_ud {
      if (eqz(fa < 4294967296.0 & fa >= 0.0)) goto B_wd;
      q = i32_trunc_f64_u(fa);
      goto B_vd;
      label B_wd:
      q = 0;
      label B_vd:
      r[0]:int = q;
      r = r + 4;
      fa = (fa - f64_convert_i32_u(q)) * 1000000000.0;
      if (fa != 0.0) continue L_ud;
    }
    if (v >= 1) goto B_yd;
    q = r;
    s = ca;
    goto B_xd;
    label B_yd:
    s = ca;
    loop L_zd {
      v = select_if(v, 29, v < 29);
      q = r + -4;
      if (q < s) goto B_ae;
      ea = i64_extend_i32_u(v);
      da = 0L;
      loop L_be {
        q[0]:int = 
          (da = (q[0]:uint << ea) + (da & 4294967295L)) - 
          (da = da / 1000000000L) * 1000000000L;
        q = q + -4;
        if (q >= s) continue L_be;
      }
      q = i32_wrap_i64(da);
      if (eqz(q)) goto B_ae;
      s = s + -4;
      s[0] = q;
      label B_ae:
      loop L_de {
        q = r;
        if (q <= s) goto B_ce;
        r = q + -4;
        if (eqz(r[0]:int)) continue L_de;
      }
      label B_ce:
      f[27]:int = (v = f[27]:int - v);
      r = q;
      if (v > 0) continue L_zd;
    }
    label B_xd:
    r = (ka + 25) / 9;
    if (v > -1) goto B_ee;
    ba = r + 1;
    loop L_fe {
      u = select_if(9, 0 - v, v < -9);
      if (s >= q) goto B_he;
      z = 1000000000 >> u;
      y = -1 << u ^ -1;
      v = 0;
      r = s;
      loop L_ie {
        r[0]:int = ((w = r[0]:int) >> u) + v;
        v = (w & y) * z;
        r = r + 4;
        if (r < q) continue L_ie;
      }
      r = s[0];
      if (eqz(v)) goto B_ge;
      q[0]:int = v;
      q = q + 4;
      goto B_ge;
      label B_he:
      r = s[0];
      label B_ge:
      f[27]:int = (v = f[27]:int + u);
      r = select_if(ca, s = s + (eqz(r) << 2), ja == 102);
      q = select_if(r + (ba << 2), q, q - r >> 2 > ba);
      if (v < 0) continue L_fe;
    }
    label B_ee:
    u = 0;
    if (s >= q) goto B_je;
    u = (ca - s >> 2) * 9;
    v = s[0];
    if (v < 10) goto B_je;
    r = 10;
    loop L_ke {
      u = u + 1;
      if (v >= (r = r * 10)) continue L_ke;
    }
    label B_je:
    r = ka - select_if(0, u, ja == 102) - ((y = ja == 103) & ka != 0);
    if (r >= (q - ca >> 2) * 9 + -9) goto B_le;
    w = r + 9216;
    v = w / 9;
    var la:int = (v << 2) + ca;
    z = la + -4092;
    r = 10;
    ba = w - (ja = v * 9);
    if (ba > 7) goto B_me;
    v = 8 - ba & 7;
    r = 10;
    if (7 - ba < 7) goto B_ne;
    w = 0 - (ja - w + 8 & -8);
    r = 10;
    loop L_oe {
      r = r * 100000000;
      w = w + 8;
      if (w) continue L_oe;
    }
    label B_ne:
    if (eqz(v)) goto B_me;
    loop L_pe {
      r = r * 10;
      v = v + -1;
      if (v) continue L_pe;
    }
    label B_me:
    ba = z + 4;
    w = z[0];
    v = w - (ja = w / r) * r;
    if (v) goto B_re;
    if (ba == q) goto B_qe;
    label B_re:
    if (ja & 1) goto B_te;
    fa = 9007199254740992.0;
    if (r != 1000000000) goto B_se;
    if (z <= s) goto B_se;
    if (eqz((z + -4)[0]:ubyte & 1)) goto B_se;
    label B_te:
    fa = 9007199254740994.0;
    label B_se:
    var ma:double = 
      select_if(
        0.5,
        select_if(select_if(1.0, 1.5, ba == q), 1.5, v == (ba = r >> 1)),
        v < ba);
    if (ha) goto B_ue;
    if (ia[0] != 45) goto B_ue;
    ma = -(ma);
    fa = -(fa);
    label B_ue:
    z[0] = (v = w - v);
    if (fa + ma == fa) goto B_qe;
    z[0] = (r = v + r);
    if (r < 1000000000) goto B_ve;
    r = la + -4096;
    loop L_we {
      (r + 4)[0]:int = 0;
      if (r >= s) goto B_xe;
      s = s + -4;
      s[0] = 0;
      label B_xe:
      r[0]:int = (v = r[0]:int + 1);
      r = r + -4;
      if (v > 999999999) continue L_we;
    }
    z = r + 4;
    label B_ve:
    u = (ca - s >> 2) * 9;
    v = s[0];
    if (v < 10) goto B_qe;
    r = 10;
    loop L_ye {
      u = u + 1;
      if (v >= (r = r * 10)) continue L_ye;
    }
    label B_qe:
    r = z + 4;
    q = select_if(r, q, q > r);
    label B_le:
    r = q - ca;
    loop L_af {
      v = r;
      w = q;
      z = w <= s;
      if (z) goto B_ze;
      r = v + -4;
      q = w + -4;
      if (eqz(q[0]:int)) continue L_af;
    }
    label B_ze:
    if (y) goto B_cf;
    ba = t & 8;
    goto B_bf;
    label B_cf:
    ka = 
      select_if(u ^ -1, -1, r = (q = select_if(ka, 1, ka)) > u & u > -5) + 
      q;
    aa = select_if(-1, -2, r) + aa;
    ba = t & 8;
    if (ba) goto B_bf;
    q = -9;
    if (z) goto B_df;
    z = (w + -4)[0]:int;
    if (eqz(z)) goto B_df;
    q = 0;
    if (z % 10) goto B_df;
    r = 10;
    q = 0;
    loop L_ef {
      q = q + -1;
      if (eqz(z % (r = r * 10))) continue L_ef;
    }
    label B_df:
    r = (v >> 2) * 9 + -9;
    if ((aa & -33) != 70) goto B_ff;
    ba = 0;
    ka = select_if(ka, q = select_if(q = r + q, 0, q > 0), ka < q);
    goto B_bf;
    label B_ff:
    ba = 0;
    ka = select_if(ka, q = select_if(q = r + u + q, 0, q > 0), ka < q);
    label B_bf:
    q = -1;
    if (ka > select_if(2147483645, 2147483646, r = ka | ba)) goto B_e;
    ja = ka + (na = r != 0) + 1;
    la = (aa & -33) != 70;
    if (la) goto B_hf;
    if (u > 2147483647 - ja) goto B_e;
    r = select_if(u, 0, u > 0);
    goto B_gf;
    label B_hf:
    v = g;
    r = g;
    q = u + (q = u >> 31) ^ q;
    if (eqz(q)) goto B_if;
    loop L_jf {
      r = r + -1;
      r[0]:byte = q - (z = q / 10) * 10 | 48;
      v = v + -1;
      y = q > 9;
      q = z;
      if (y) continue L_jf;
    }
    label B_if:
    if (g - v > 1) goto B_kf;
    r = r + l - v;
    memset(r, 48, k + v);
    label B_kf:
    ha = r + -2;
    ha[0] = aa;
    q = -1;
    (r + -1)[0]:byte = select_if(45, 43, u < 0);
    r = g - ha;
    if (r > 2147483647 - ja) goto B_e;
    label B_gf:
    q = -1;
    r = r + ja;
    if (r > (ga ^ 2147483647)) goto B_e;
    y = r + ga;
    t = t & 73728;
    if (t) goto B_lf;
    if (x <= y) goto B_lf;
    memset(f + 624, 32, select_if(q = x - y, 256, r = q < 256));
    if (r) goto B_mf;
    loop L_nf {
      if (a[0]:ubyte & 32) goto B_of;
      fwritex(f + 624, 256, a);
      label B_of:
      q = q + -256;
      if (q > 255) continue L_nf;
    }
    label B_mf:
    if (a[0]:ubyte & 32) goto B_lf;
    fwritex(f + 624, q, a);
    label B_lf:
    if (a[0]:ubyte & 32) goto B_pf;
    fwritex(ia, ga, a);
    label B_pf:
    if (t != 65536) goto B_qf;
    if (x <= y) goto B_qf;
    memset(f + 624, 48, select_if(q = x - y, 256, r = q < 256));
    if (r) goto B_rf;
    loop L_sf {
      if (a[0]:ubyte & 32) goto B_tf;
      fwritex(f + 624, 256, a);
      label B_tf:
      q = q + -256;
      if (q > 255) continue L_sf;
    }
    label B_rf:
    if (a[0]:ubyte & 32) goto B_qf;
    fwritex(f + 624, q, a);
    label B_qf:
    if (la) goto B_h;
    u = select_if(ca, s, s > ca);
    z = u;
    loop L_uf {
      q = z[0];
      if (eqz(q)) goto B_yf;
      r = 0;
      loop L_zf {
        (f + 80 + r + 8)[0]:byte = q - (s = q / 10) * 10 | 48;
        r = r + -1;
        v = q > 9;
        q = s;
        if (v) continue L_zf;
      }
      q = f + 80 + r + 9;
      if (z == u) goto B_ag;
      if (q <= f + 80) goto B_vf;
      goto B_wf;
      label B_ag:
      if (r) goto B_vf;
      goto B_xf;
      label B_yf:
      r = 0;
      q = j;
      if (z != u) goto B_wf;
      label B_xf:
      q = q + -1;
      q[0]:byte = 48;
      goto B_vf;
      label B_wf:
      memset(f + 80, 48, r + 9);
      q = f + 80;
      label B_vf:
      if (a[0]:ubyte & 32) goto B_bg;
      fwritex(q, j - q, a);
      label B_bg:
      z = z + 4;
      if (z <= ca) continue L_uf;
    }
    q = 0;
    if (eqz(na)) goto B_cg;
    if (a[0]:ubyte & 32) goto B_dg;
    fwritex(2775, 1, a);
    label B_dg:
    if (z < w) goto B_eg;
    q = ka;
    goto B_cg;
    label B_eg:
    if (ka >= 1) goto B_fg;
    q = ka;
    goto B_cg;
    label B_fg:
    loop L_gg {
      q = z[0];
      if (q) goto B_jg;
      r = j;
      s = j;
      goto B_ig;
      label B_jg:
      s = j;
      r = j;
      loop L_kg {
        r = r + -1;
        r[0]:byte = q - (v = q / 10) * 10 | 48;
        s = s + -1;
        u = q > 9;
        q = v;
        if (u) continue L_kg;
      }
      if (r <= f + 80) goto B_hg;
      label B_ig:
      r = r + f + 80 - s;
      memset(r, 48, s - f + 80);
      label B_hg:
      if (a[0]:ubyte & 32) goto B_lg;
      fwritex(r, select_if(ka, 9, ka < 9), a);
      label B_lg:
      q = ka + -9;
      z = z + 4;
      if (z >= w) goto B_cg;
      r = ka > 9;
      ka = q;
      if (r) continue L_gg;
    }
    label B_cg:
    pad(a, 48, q + 9, 9, 0);
    goto B_g;
    label B_k:
    0[985]:int = 28;
    goto B_b;
    label B_j:
    ba = 0;
    ca = 2730;
    q = n;
    z = t;
    w = u;
    label B_i:
    u = q - r;
    y = select_if(u, w, w < u);
    if (y > 2147483647 - ba) goto B_c;
    v = ba + y;
    q = select_if(v, x, x < v);
    if (q > s) goto B_c;
    z = z & 73728;
    if (z) goto B_mg;
    if (v >= x) goto B_mg;
    memset(f + 112, 32, select_if(s = q - v, 256, t = s < 256));
    if (t) goto B_ng;
    loop L_og {
      if (a[0]:ubyte & 32) goto B_pg;
      fwritex(f + 112, 256, a);
      label B_pg:
      s = s + -256;
      if (s > 255) continue L_og;
    }
    label B_ng:
    if (a[0]:ubyte & 32) goto B_mg;
    fwritex(f + 112, s, a);
    label B_mg:
    if (a[0]:ubyte & 32) goto B_qg;
    fwritex(ca, ba, a);
    label B_qg:
    if (z != 65536) goto B_rg;
    if (v >= x) goto B_rg;
    memset(f + 112, 48, select_if(s = q - v, 256, t = s < 256));
    if (t) goto B_sg;
    loop L_tg {
      if (a[0]:ubyte & 32) goto B_ug;
      fwritex(f + 112, 256, a);
      label B_ug:
      s = s + -256;
      if (s > 255) continue L_tg;
    }
    label B_sg:
    if (a[0]:ubyte & 32) goto B_rg;
    fwritex(f + 112, s, a);
    label B_rg:
    if (u >= w) goto B_vg;
    memset(f + 112, 48, select_if(s = y - u, 256, w = s < 256));
    if (w) goto B_wg;
    loop L_xg {
      if (a[0]:ubyte & 32) goto B_yg;
      fwritex(f + 112, 256, a);
      label B_yg:
      s = s + -256;
      if (s > 255) continue L_xg;
    }
    label B_wg:
    if (a[0]:ubyte & 32) goto B_vg;
    fwritex(f + 112, s, a);
    label B_vg:
    if (a[0]:ubyte & 32) goto B_zg;
    fwritex(r, u, a);
    label B_zg:
    if (z != 8192) continue L_d;
    if (v >= x) continue L_d;
    memset(f + 112, 32, select_if(r = q - v, 256, s = r < 256));
    if (s) goto B_ah;
    loop L_bh {
      if (a[0]:ubyte & 32) goto B_ch;
      fwritex(f + 112, 256, a);
      label B_ch:
      r = r + -256;
      if (r > 255) continue L_bh;
    }
    label B_ah:
    if (a[0]:ubyte & 32) continue L_d;
    fwritex(f + 112, r, a);
    continue L_d;
    label B_h:
    if (ka < 0) goto B_dh;
    z = select_if(w, s + 4, w > s);
    u = s;
    loop L_eh {
      v = j;
      q = u[0];
      if (eqz(q)) goto B_gh;
      r = 0;
      loop L_hh {
        (f + 80 + r + 8)[0]:byte = q - (v = q / 10) * 10 | 48;
        r = r + -1;
        w = q > 9;
        q = v;
        if (w) continue L_hh;
      }
      v = f + 80 + r + 9;
      if (r) goto B_fh;
      label B_gh:
      v = v + -1;
      v[0]:byte = 48;
      label B_fh:
      if (u == s) goto B_jh;
      if (v <= f + 80) goto B_ih;
      memset(f + 80, 48, v - f + 80);
      v = f + 80;
      goto B_ih;
      label B_jh:
      if (a[0]:ubyte & 32) goto B_kh;
      fwritex(v, 1, a);
      label B_kh:
      v = v + 1;
      if (ka > 0) goto B_lh;
      if (eqz(ba)) goto B_ih;
      label B_lh:
      if (a[0]:ubyte & 32) goto B_ih;
      fwritex(2775, 1, a);
      label B_ih:
      q = j - v;
      if (a[0]:ubyte & 32) goto B_mh;
      fwritex(v, select_if(q, ka, ka > q), a);
      label B_mh:
      ka = ka - q;
      u = u + 4;
      if (u >= z) goto B_dh;
      if (ka > -1) continue L_eh;
    }
    label B_dh:
    pad(a, 48, ka + 18, 18, 0);
    if (a[0]:ubyte & 32) goto B_g;
    fwritex(ha, g - ha, a);
    label B_g:
    if (t != 8192) goto B_nh;
    if (x <= y) goto B_nh;
    memset(f + 624, 32, select_if(q = x - y, 256, r = q < 256));
    if (r) goto B_oh;
    loop L_ph {
      if (a[0]:ubyte & 32) goto B_qh;
      fwritex(f + 624, 256, a);
      label B_qh:
      q = q + -256;
      if (q > 255) continue L_ph;
    }
    label B_oh:
    if (a[0]:ubyte & 32) goto B_nh;
    fwritex(f + 624, q, a);
    label B_nh:
    q = select_if(x, y, x > y);
    goto B_e;
    label B_f:
    ba = ia + ((aa << 26) >> 31 & 9);
    if (u > 11) goto B_rh;
    q = 12 - u;
    if (eqz(q)) goto B_rh;
    s = 11 - u;
    r = 4 - u & 7;
    if (r) goto B_th;
    ma = 16.0;
    goto B_sh;
    label B_th:
    q = u + -12;
    ma = 16.0;
    loop L_uh {
      q = q + 1;
      ma = ma * 16.0;
      r = r + -1;
      if (r) continue L_uh;
    }
    q = 0 - q;
    label B_sh:
    if (s < 7) goto B_vh;
    loop L_wh {
      ma = ma * 16.0 * 16.0 * 16.0 * 16.0 * 16.0 * 16.0 * 16.0 * 16.0;
      q = q + -8;
      if (q) continue L_wh;
    }
    label B_vh:
    if (ba[0] != 45) goto B_xh;
    fa = -(ma + -(fa) - ma);
    goto B_rh;
    label B_xh:
    fa = fa + ma - ma;
    label B_rh:
    q = g;
    w = f[27]:int;
    if (eqz(w)) goto B_zh;
    q = w + (q = w >> 31) ^ q;
    r = 0;
    loop L_ai {
      (f + 68 + r + 11)[0]:byte = q - (s = q / 10) * 10 | 48;
      r = r + -1;
      v = q > 9;
      q = s;
      if (v) continue L_ai;
    }
    q = f + 68 + r + 12;
    if (r) goto B_yh;
    label B_zh:
    q = q + -1;
    q[0]:byte = 48;
    label B_yh:
    z = ga | 2;
    s = aa & 32;
    y = q + -2;
    y[0] = aa + 15;
    (q + -1)[0]:byte = select_if(45, 43, w < 0);
    v = t & 8;
    r = f + 80;
    loop L_bi {
      q = r;
      if (eqz(abs(fa) < 2147483648.0)) goto B_di;
      r = i32_trunc_f64_s(fa);
      goto B_ci;
      label B_di:
      r = -2147483648;
      label B_ci:
      q[0]:byte = (r + 3392)[0]:ubyte | s;
      fa = (fa - f64_convert_i32_s(r)) * 16.0;
      r = q + 1;
      if (r - f + 80 != 1) goto B_ei;
      if (fa != 0.0) goto B_fi;
      if (u > 0) goto B_fi;
      if (eqz(v)) goto B_ei;
      label B_fi:
      q[1]:byte = 46;
      r = q + 2;
      label B_ei:
      if (fa != 0.0) continue L_bi;
    }
    q = -1;
    if (2147483645 - (v = (w = g - y) + z) < u) goto B_e;
    u = select_if(select_if(u + 2, s = r - f + 80, i + r < u), s, u);
    r = u + v;
    v = t & 73728;
    if (v) goto B_gi;
    if (x <= r) goto B_gi;
    memset(f + 624, 32, select_if(q = x - r, 256, t = q < 256));
    if (t) goto B_hi;
    loop L_ii {
      if (a[0]:ubyte & 32) goto B_ji;
      fwritex(f + 624, 256, a);
      label B_ji:
      q = q + -256;
      if (q > 255) continue L_ii;
    }
    label B_hi:
    if (a[0]:ubyte & 32) goto B_gi;
    fwritex(f + 624, q, a);
    label B_gi:
    if (a[0]:ubyte & 32) goto B_ki;
    fwritex(ba, z, a);
    label B_ki:
    if (v != 65536) goto B_li;
    if (x <= r) goto B_li;
    memset(f + 624, 48, select_if(q = x - r, 256, z = q < 256));
    if (z) goto B_mi;
    loop L_ni {
      if (a[0]:ubyte & 32) goto B_oi;
      fwritex(f + 624, 256, a);
      label B_oi:
      q = q + -256;
      if (q > 255) continue L_ni;
    }
    label B_mi:
    if (a[0]:ubyte & 32) goto B_li;
    fwritex(f + 624, q, a);
    label B_li:
    if (a[0]:ubyte & 32) goto B_pi;
    fwritex(f + 80, s, a);
    label B_pi:
    q = u - s;
    if (q < 1) goto B_qi;
    memset(f + 624, 48, select_if(q, 256, s = q < 256));
    if (s) goto B_ri;
    loop L_si {
      if (a[0]:ubyte & 32) goto B_ti;
      fwritex(f + 624, 256, a);
      label B_ti:
      q = q + -256;
      if (q > 255) continue L_si;
    }
    label B_ri:
    if (a[0]:ubyte & 32) goto B_qi;
    fwritex(f + 624, q, a);
    label B_qi:
    if (a[0]:ubyte & 32) goto B_ui;
    fwritex(y, w, a);
    label B_ui:
    if (v != 8192) goto B_vi;
    if (x <= r) goto B_vi;
    memset(f + 624, 32, select_if(q = x - r, 256, s = q < 256));
    if (s) goto B_wi;
    loop L_xi {
      if (a[0]:ubyte & 32) goto B_yi;
      fwritex(f + 624, 256, a);
      label B_yi:
      q = q + -256;
      if (q > 255) continue L_xi;
    }
    label B_wi:
    if (a[0]:ubyte & 32) goto B_vi;
    fwritex(f + 624, q, a);
    label B_vi:
    q = select_if(x, r, x > r);
    label B_e:
    if (q >= 0) continue L_d;
  }
  label B_c:
  0[985]:int = 61;
  label B_b:
  p = -1;
  label B_a:
  g_a = f + 880;
  return p;
}

function pop_arg(a:int, b:int, c:int_ptr) {
  br_table[B_b, B_s, B_r, B_o, B_q, B_p, B_n, B_m, B_l, B_k, B_j, B_i, B_h, B_g, B_f, B_e, B_d, B_c, ..B_a](
    b + -9)
  label B_s:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:int;
  return ;
  label B_r:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:uint;
  return ;
  label B_q:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:int;
  return ;
  label B_p:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:uint;
  return ;
  label B_o:
  c[0] = (b = c[0] + 7 & -8) + 8;
  a[0]:long = b[0]:long;
  return ;
  label B_n:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:short;
  return ;
  label B_m:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:ushort;
  return ;
  label B_l:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:byte;
  return ;
  label B_k:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:ubyte;
  return ;
  label B_j:
  c[0] = (b = c[0] + 7 & -8) + 8;
  a[0]:long = b[0]:long;
  return ;
  label B_i:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:uint;
  return ;
  label B_h:
  c[0] = (b = c[0] + 7 & -8) + 8;
  a[0]:long = b[0]:long;
  return ;
  label B_g:
  c[0] = (b = c[0] + 7 & -8) + 8;
  a[0]:long = b[0]:long;
  return ;
  label B_f:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:int;
  return ;
  label B_e:
  c[0] = (b = c[0]) + 4;
  a[0]:long = b[0]:uint;
  return ;
  label B_d:
  c[0] = (b = c[0] + 7 & -8) + 8;
  a[0]:double = b[0]:double;
  return ;
  label B_c:
  long_double_not_supported();
  unreachable;
  label B_b:
  c[0] = (b = c[0]) + 4;
  a[0]:int = b[0]:int;
  label B_a:
}

function pad(a:ubyte_ptr, b:int, c:int, d:int, e:int) {
  var f:int = g_a - 256;
  g_a = f;
  if (e & 73728) goto B_a;
  if (c <= d) goto B_a;
  d = memset(f, b, select_if(c = c - d, 256, e = c < 256));
  if (e) goto B_b;
  loop L_c {
    if (a[0] & 32) goto B_d;
    fwritex(d, 256, a);
    label B_d:
    c = c + -256;
    if (c > 255) continue L_c;
  }
  label B_b:
  if (a[0] & 32) goto B_a;
  fwritex(d, c, a);
  label B_a:
  g_a = f + 256;
}

function long_double_not_supported() {
  fputs(2784, 3816);
  abort();
  unreachable;
}

function strlen(a:ubyte_ptr):int {
  var b:int = a;
  if (eqz(a & 3)) goto B_b;
  b = a;
  if (eqz(a[0])) goto B_a;
  b = a + 1;
  if (eqz(b & 3)) goto B_b;
  if (eqz(b[0]:ubyte)) goto B_a;
  b = a + 2;
  if (eqz(b & 3)) goto B_b;
  if (eqz(b[0]:ubyte)) goto B_a;
  b = a + 3;
  if (eqz(b & 3)) goto B_b;
  if (eqz(b[0]:ubyte)) goto B_a;
  b = a + 4;
  label B_b:
  b = b + -4;
  loop L_c {
    b = b + 4;
    var c:int = b[0]:int;
    if (eqz(((c ^ -1) & c + -16843009) & -2139062144)) continue L_c;
  }
  if (eqz(c & 255)) goto B_a;
  loop L_d {
    b = b + 1;
    if (b[0]:ubyte) continue L_d;
  }
  label B_a:
  return b - a;
}

function memcpy(a:{ a:byte, b:byte, c:byte, d:byte }, b:{ a:ubyte, b:ubyte, c:ubyte, d:ubyte }, c:int):int {
  var g:int;
  var i:int;
  if (eqz(b & 3)) goto B_b;
  if (eqz(c)) goto B_b;
  a.a = b.a;
  var d:int = c + -1;
  var e:int = a + 1;
  var f:int = b + 1;
  if (eqz(f & 3)) goto B_a;
  if (eqz(d)) goto B_a;
  a.b = b.b;
  d = c + -2;
  e = a + 2;
  f = b + 2;
  if (eqz(f & 3)) goto B_a;
  if (eqz(d)) goto B_a;
  a.c = b.c;
  d = c + -3;
  e = a + 3;
  f = b + 3;
  if (eqz(f & 3)) goto B_a;
  if (eqz(d)) goto B_a;
  a.d = b.d;
  d = c + -4;
  e = a + 4;
  f = b + 4;
  goto B_a;
  label B_b:
  d = c;
  e = a;
  f = b;
  label B_a:
  b = e & 3;
  if (b) goto B_e;
  if (d < 16) goto B_g;
  b = d + -16;
  if (b & 16) goto B_h;
  e[0]:long@4 = f[0]:long@4;
  e[2]:long@4 = f[2]:long@4;
  e = e + 16;
  f = f + 16;
  d = b;
  label B_h:
  if (b < 16) goto B_f;
  loop L_i {
    e[0]:long@4 = f[0]:long@4;
    (e + 8)[0]:long@4 = (f + 8)[0]:long@4;
    (e + 16)[0]:long@4 = (f + 16)[0]:long@4;
    (e + 24)[0]:long@4 = (f + 24)[0]:long@4;
    e = e + 32;
    f = f + 32;
    d = d + -32;
    if (d > 15) continue L_i;
  }
  label B_g:
  b = d;
  label B_f:
  if (eqz(b & 8)) goto B_j;
  e[0]:long@4 = f[0]:long@4;
  f = f + 8;
  e = e + 8;
  label B_j:
  if (eqz(b & 4)) goto B_k;
  e[0]:int = f[0]:int;
  f = f + 4;
  e = e + 4;
  label B_k:
  if (eqz(b & 2)) goto B_l;
  e[0]:short@1 = f[0]:ushort@1;
  e = e + 2;
  f = f + 2;
  label B_l:
  if (b & 1) goto B_d;
  goto B_c;
  label B_e:
  if (d < 32) goto B_m;
  br_table[B_p, B_o, B_n, ..B_m](b + -1)
  label B_p:
  e[0]:byte = (g = f[0]:int);
  e[2]:byte = g >> 16;
  e[1]:byte = g >> 8;
  d = d + -3;
  var h:int = e + 3;
  b = 0;
  loop L_q {
    e = h + b;
    e[0]:int = (i = ((c = f + b) + 4)[0]:int) << 8 | g >> 24;
    (e + 4)[0]:int = (g = (c + 8)[0]:int) << 8 | i >> 24;
    (e + 8)[0]:int = (i = (c + 12)[0]:int) << 8 | g >> 24;
    (e + 12)[0]:int = (g = (c + 16)[0]:int) << 8 | i >> 24;
    b = b + 16;
    d = d + -16;
    if (d > 16) continue L_q;
  }
  e = h + b;
  f = f + b + 3;
  goto B_m;
  label B_o:
  e[0]:short@1 = (g = f[0]:int);
  d = d + -2;
  h = e + 2;
  b = 0;
  loop L_r {
    e = h + b;
    e[0]:int = (i = ((c = f + b) + 4)[0]:int) << 16 | g >> 16;
    (e + 4)[0]:int = (g = (c + 8)[0]:int) << 16 | i >> 16;
    (e + 8)[0]:int = (i = (c + 12)[0]:int) << 16 | g >> 16;
    (e + 12)[0]:int = (g = (c + 16)[0]:int) << 16 | i >> 16;
    b = b + 16;
    d = d + -16;
    if (d > 17) continue L_r;
  }
  e = h + b;
  f = f + b + 2;
  goto B_m;
  label B_n:
  e[0]:byte = (g = f[0]:int);
  d = d + -1;
  h = e + 1;
  b = 0;
  loop L_s {
    e = h + b;
    e[0]:int = (i = ((c = f + b) + 4)[0]:int) << 24 | g >> 8;
    (e + 4)[0]:int = (g = (c + 8)[0]:int) << 24 | i >> 8;
    (e + 8)[0]:int = (i = (c + 12)[0]:int) << 24 | g >> 8;
    (e + 12)[0]:int = (g = (c + 16)[0]:int) << 24 | i >> 8;
    b = b + 16;
    d = d + -16;
    if (d > 18) continue L_s;
  }
  e = h + b;
  f = f + b + 1;
  label B_m:
  if (eqz(d & 16)) goto B_t;
  e[0]:byte = f[0]:ubyte;
  e[1]:int@1 = f[1]:int@1;
  e[5]:long@1 = f[5]:long@1;
  e[13]:short@1 = f[13]:ushort@1;
  e[15]:byte = f[15]:ubyte;
  e = e + 16;
  f = f + 16;
  label B_t:
  if (eqz(d & 8)) goto B_u;
  e[0]:long@1 = f[0]:long@1;
  e = e + 8;
  f = f + 8;
  label B_u:
  if (eqz(d & 4)) goto B_v;
  e[0]:int@1 = f[0]:int@1;
  e = e + 4;
  f = f + 4;
  label B_v:
  if (eqz(d & 2)) goto B_w;
  e[0]:short@1 = f[0]:ushort@1;
  e = e + 2;
  f = f + 2;
  label B_w:
  if (eqz(d & 1)) goto B_c;
  label B_d:
  e[0]:byte = f[0]:ubyte;
  label B_c:
  return a;
}

function memset(a:{ a:byte, b:byte, c:byte, d:byte }, b:long_ptr, c:int):int {
  var e:int;
  var f:int;
  if (eqz(c)) goto B_a;
  a.a = b;
  var d:{ a:int, b:int, c:int, d:int, e:int, f:int, g:int } = c + a;
  (d + -1)[0]:byte = b;
  if (c < 3) goto B_a;
  a.c = b;
  a.b = b;
  (d + -3)[0]:byte = b;
  (d + -2)[0]:byte = b;
  if (c < 7) goto B_a;
  a.d = b;
  (d + -4)[0]:byte = b;
  if (c < 9) goto B_a;
  d = a + (e = 0 - a & 3);
  d.a = (b = (b & 255) * 16843009);
  c = d + (e = c - e & -4);
  (c + -4)[0]:int = b;
  if (e < 9) goto B_a;
  d.c = b;
  d.b = b;
  (c + -8)[0]:int = b;
  (c + -12)[0]:int = b;
  if (e < 25) goto B_a;
  d.g = b;
  d.f = b;
  d.e = b;
  d.d = b;
  (c + -16)[0]:int = b;
  (c + -20)[0]:int = b;
  (c + -24)[0]:int = b;
  (c + -28)[0]:int = b;
  c = e - (f = (d & 4) | 24);
  if (c < 32) goto B_a;
  var g:long = i64_extend_i32_u(b) * 4294967297L;
  b = d + f;
  loop L_b {
    b[0] = g;
    (b + 24)[0]:long = g;
    (b + 16)[0]:long = g;
    (b + 8)[0]:long = g;
    b = b + 32;
    c = c + -32;
    if (c > 31) continue L_b;
  }
  label B_a:
  return a;
}

function strnlen(a:int, b:int):int {
  var c:int = memchr(a, 0, b);
  return select_if(c - a, b, c);
}

function memcmp(a:ubyte_ptr, b:ubyte_ptr, c:int):int {
  var f:int;
  var d:int = 0;
  if (eqz(c)) goto B_a;
  loop L_c {
    var e:int = a[0];
    if (e != (f = b[0])) goto B_b;
    b = b + 1;
    a = a + 1;
    c = c + -1;
    if (c) continue L_c;
    goto B_a;
  }
  label B_b:
  d = e - f;
  label B_a:
  return d;
}

function memchr(a:ubyte_ptr, b:int, c:int):int {
  var d:int = c != 0;
  if (eqz(a & 3)) goto B_d;
  if (eqz(c)) goto B_d;
  if (a[0] != (b & 255)) goto B_e;
  var e:int = a;
  var f:int = c;
  goto B_b;
  label B_e:
  f = c + -1;
  d = f != 0;
  e = a + 1;
  if (eqz(e & 3)) goto B_c;
  if (eqz(f)) goto B_c;
  if (e[0]:ubyte == (b & 255)) goto B_b;
  f = c + -2;
  d = f != 0;
  e = a + 2;
  if (eqz(e & 3)) goto B_c;
  if (eqz(f)) goto B_c;
  if (e[0]:ubyte == (b & 255)) goto B_b;
  f = c + -3;
  d = f != 0;
  e = a + 3;
  if (eqz(e & 3)) goto B_c;
  if (eqz(f)) goto B_c;
  if (e[0]:ubyte == (b & 255)) goto B_b;
  e = a + 4;
  f = c + -4;
  d = f != 0;
  goto B_c;
  label B_d:
  f = c;
  e = a;
  label B_c:
  if (eqz(d)) goto B_a;
  label B_b:
  if (e[0]:ubyte == (b & 255)) goto B_f;
  if (f < 4) goto B_f;
  a = (b & 255) * 16843009;
  loop L_g {
    c = e[0]:int ^ a;
    if (((c ^ -1) & c + -16843009) & -2139062144) goto B_f;
    e = e + 4;
    f = f + -4;
    if (f > 3) continue L_g;
  }
  label B_f:
  if (eqz(f)) goto B_a;
  c = b & 255;
  loop L_h {
    if (e[0]:ubyte != c) goto B_i;
    return e;
    label B_i:
    e = e + 1;
    f = f + -1;
    if (f) continue L_h;
  }
  label B_a:
  return 0;
}

function dummy_1(a:int, b:int):int {
  return a
}

function lctrans(a:int, b:int):int {
  return dummy_1(a, b)
}

function wctomb(a:int, b:int):int {
  if (a) goto B_a;
  return 0;
  label B_a:
  return wcrtomb(a, b, 0);
}

function wcrtomb(a:{ a:byte, b:byte, c:byte, d:byte }, b:int, c:int):int {
  var d:int = 1;
  if (eqz(a)) goto B_a;
  if (b > 127) goto B_b;
  a.a = b;
  return 1;
  label B_b:
  if (0[1372]:int) goto B_d;
  if ((b & -128) == 57216) goto B_e;
  0[985]:int = 25;
  goto B_c;
  label B_e:
  a.a = b;
  return 1;
  label B_d:
  if (b > 2047) goto B_f;
  a.b = (b & 63) | 128;
  a.a = b >> 6 | 192;
  return 2;
  label B_f:
  if (b < 55296) goto B_h;
  if ((b & -8192) != 57344) goto B_g;
  label B_h:
  a.c = (b & 63) | 128;
  a.a = b >> 12 | 224;
  a.b = (b >> 6 & 63) | 128;
  return 3;
  label B_g:
  if (b + -65536 > 1048575) goto B_i;
  a.d = (b & 63) | 128;
  a.a = b >> 18 | 240;
  a.c = (b >> 6 & 63) | 128;
  a.b = (b >> 12 & 63) | 128;
  return 4;
  label B_i:
  0[985]:int = 25;
  label B_c:
  d = -1;
  label B_a:
  return d;
}

function frexp(a:double, b:int_ptr):double {
  var c:long = i64_reinterpret_f64(a);
  var d:int = i32_wrap_i64(c >> 52L) & 2047;
  if (d == 2047) goto B_a;
  if (d) goto B_b;
  if (a != 0.0) goto B_c;
  b[0] = 0;
  return a;
  label B_c:
  a = frexp(a * 18446744073709551616.0, b);
  b[0] = b[0] + -64;
  return a;
  label B_b:
  b[0] = d + -1022;
  a = f64_reinterpret_i64(
        (c & -9218868437227405313L) | 4602678819172646912L);
  label B_a:
  return a;
}

function start_command_export() {
  wasm_call_ctors();
  start();
  wasm_call_dtors();
}

