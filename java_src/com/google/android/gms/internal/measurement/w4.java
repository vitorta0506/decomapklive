package com.google.android.gms.internal.measurement;

import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import java.util.List;
/* loaded from: classes2.dex */
public final class w4 extends x8 implements aa {
    public static final /* synthetic */ int zza = 0;
    private static final w4 zze;
    private boolean zzA;
    private long zzC;
    private int zzD;
    private boolean zzG;
    private int zzJ;
    private int zzK;
    private int zzL;
    private long zzN;
    private long zzO;
    private int zzR;
    private z4 zzT;
    private long zzV;
    private long zzW;
    private int zzZ;
    private boolean zzaa;
    private boolean zzac;
    private r4 zzad;
    private int zzf;
    private int zzg;
    private int zzh;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzt;
    private long zzx;
    private long zzy;
    private d9 zzi = x8.n();
    private d9 zzj = x8.n();
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";
    private String zzs = "";
    private String zzu = "";
    private String zzv = "";
    private String zzw = "";
    private String zzz = "";
    private String zzB = "";
    private String zzE = "";
    private String zzF = "";
    private d9 zzH = x8.n();
    private String zzI = "";
    private String zzM = "";
    private String zzP = "";
    private String zzQ = "";
    private String zzS = "";
    private b9 zzU = x8.k();
    private String zzX = "";
    private String zzY = "";
    private String zzab = "";
    private String zzae = "";
    private d9 zzaf = x8.n();
    private String zzag = "";

    static {
        w4 w4Var = new w4();
        zze = w4Var;
        x8.r(w4.class, w4Var);
    }

    private w4() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void A0(w4 w4Var, Iterable iterable) {
        d9 d9Var = w4Var.zzaf;
        if (!d9Var.E()) {
            w4Var.zzaf = x8.o(d9Var);
        }
        i7.h(iterable, w4Var.zzaf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void C0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzg |= 16384;
        w4Var.zzag = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void D0(w4 w4Var, int i9) {
        w4Var.b1();
        w4Var.zzi.remove(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void E0(w4 w4Var, int i9, f5 f5Var) {
        f5Var.getClass();
        w4Var.c1();
        w4Var.zzj.set(i9, f5Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void F0(w4 w4Var, f5 f5Var) {
        f5Var.getClass();
        w4Var.c1();
        w4Var.zzj.add(f5Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void H0(w4 w4Var, Iterable iterable) {
        w4Var.c1();
        i7.h(iterable, w4Var.zzj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void I0(w4 w4Var, int i9) {
        w4Var.c1();
        w4Var.zzj.remove(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void J0(w4 w4Var, long j10) {
        w4Var.zzf |= 2;
        w4Var.zzk = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void K0(w4 w4Var, long j10) {
        w4Var.zzf |= 4;
        w4Var.zzl = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void L(w4 w4Var) {
        w4Var.zzf &= Integer.MAX_VALUE;
        w4Var.zzP = zze.zzP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void L0(w4 w4Var, long j10) {
        w4Var.zzf |= 8;
        w4Var.zzm = j10;
    }

    public static v4 L1() {
        return (v4) zze.s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void M(w4 w4Var, int i9) {
        w4Var.zzg |= 2;
        w4Var.zzR = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void M0(w4 w4Var, long j10) {
        w4Var.zzf |= 16;
        w4Var.zzn = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void N(w4 w4Var, int i9, l4 l4Var) {
        l4Var.getClass();
        w4Var.b1();
        w4Var.zzi.set(i9, l4Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void N0(w4 w4Var) {
        w4Var.zzf &= -17;
        w4Var.zzn = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void O(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzg |= 4;
        w4Var.zzS = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void O0(w4 w4Var, long j10) {
        w4Var.zzf |= 32;
        w4Var.zzo = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void P(w4 w4Var, z4 z4Var) {
        z4Var.getClass();
        w4Var.zzT = z4Var;
        w4Var.zzg |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void P0(w4 w4Var) {
        w4Var.zzf &= -33;
        w4Var.zzo = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void Q(w4 w4Var, Iterable iterable) {
        b9 b9Var = w4Var.zzU;
        if (!b9Var.E()) {
            int size = b9Var.size();
            w4Var.zzU = b9Var.r(size == 0 ? 10 : size + size);
        }
        i7.h(iterable, w4Var.zzU);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void Q0(w4 w4Var, String str) {
        w4Var.zzf |= 64;
        w4Var.zzp = "android";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void R(w4 w4Var, l4 l4Var) {
        l4Var.getClass();
        w4Var.b1();
        w4Var.zzi.add(l4Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void S(w4 w4Var, long j10) {
        w4Var.zzg |= 16;
        w4Var.zzV = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void S0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 128;
        w4Var.zzq = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void T(w4 w4Var, long j10) {
        w4Var.zzg |= 32;
        w4Var.zzW = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void T0(w4 w4Var) {
        w4Var.zzf &= -129;
        w4Var.zzq = zze.zzq;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void U(w4 w4Var, String str) {
        w4Var.zzg |= 128;
        w4Var.zzY = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void U0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 256;
        w4Var.zzr = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void V(w4 w4Var, Iterable iterable) {
        w4Var.b1();
        i7.h(iterable, w4Var.zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void V0(w4 w4Var) {
        w4Var.zzf &= -257;
        w4Var.zzr = zze.zzr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void W0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 512;
        w4Var.zzs = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void X(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 8192;
        w4Var.zzw = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void X0(w4 w4Var, int i9) {
        w4Var.zzf |= 1024;
        w4Var.zzt = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void Y(w4 w4Var, long j10) {
        w4Var.zzf |= 16384;
        w4Var.zzx = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void Y0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 2048;
        w4Var.zzu = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void Z(w4 w4Var, long j10) {
        w4Var.zzf |= 32768;
        w4Var.zzy = 73000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void Z0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 4096;
        w4Var.zzv = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 65536;
        w4Var.zzz = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b0(w4 w4Var) {
        w4Var.zzf &= -65537;
        w4Var.zzz = zze.zzz;
    }

    private final void b1() {
        d9 d9Var = this.zzi;
        if (d9Var.E()) {
            return;
        }
        this.zzi = x8.o(d9Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c0(w4 w4Var, boolean z10) {
        w4Var.zzf |= 131072;
        w4Var.zzA = z10;
    }

    private final void c1() {
        d9 d9Var = this.zzj;
        if (d9Var.E()) {
            return;
        }
        this.zzj = x8.o(d9Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d0(w4 w4Var) {
        w4Var.zzf &= -131073;
        w4Var.zzA = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void e0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 262144;
        w4Var.zzB = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void f0(w4 w4Var) {
        w4Var.zzf &= -262145;
        w4Var.zzB = zze.zzB;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void g0(w4 w4Var, long j10) {
        w4Var.zzf |= 524288;
        w4Var.zzC = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h0(w4 w4Var, int i9) {
        w4Var.zzf |= 1048576;
        w4Var.zzD = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void i0(w4 w4Var, String str) {
        w4Var.zzf |= 2097152;
        w4Var.zzE = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void j0(w4 w4Var) {
        w4Var.zzf &= -2097153;
        w4Var.zzE = zze.zzE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void k0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 4194304;
        w4Var.zzF = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void l0(w4 w4Var, boolean z10) {
        w4Var.zzf |= 8388608;
        w4Var.zzG = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void m0(w4 w4Var, Iterable iterable) {
        d9 d9Var = w4Var.zzH;
        if (!d9Var.E()) {
            w4Var.zzH = x8.o(d9Var);
        }
        i7.h(iterable, w4Var.zzH);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void o0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzf |= 16777216;
        w4Var.zzI = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void q0(w4 w4Var, int i9) {
        w4Var.zzf |= TPMediaCodecProfileLevel.HEVCHighTierLevel62;
        w4Var.zzJ = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void r0(w4 w4Var, int i9) {
        w4Var.zzf |= 1;
        w4Var.zzh = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void s0(w4 w4Var) {
        w4Var.zzf &= -268435457;
        w4Var.zzM = zze.zzM;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void t0(w4 w4Var, long j10) {
        w4Var.zzf |= 536870912;
        w4Var.zzN = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void y0(w4 w4Var, String str) {
        str.getClass();
        w4Var.zzg |= 8192;
        w4Var.zzae = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void z0(w4 w4Var) {
        w4Var.zzg &= -8193;
        w4Var.zzae = zze.zzae;
    }

    public final String A() {
        return this.zzI;
    }

    public final long A1() {
        return this.zzN;
    }

    public final String B() {
        return this.zzF;
    }

    public final long B1() {
        return this.zzC;
    }

    public final String C() {
        return this.zzE;
    }

    public final long C1() {
        return this.zzV;
    }

    public final String D() {
        return this.zzq;
    }

    public final long D1() {
        return this.zzm;
    }

    public final String E() {
        return this.zzp;
    }

    public final long E1() {
        return this.zzx;
    }

    public final String F() {
        return this.zzz;
    }

    public final long F1() {
        return this.zzo;
    }

    public final String G() {
        return this.zzae;
    }

    public final long G1() {
        return this.zzn;
    }

    public final String H() {
        return this.zzs;
    }

    public final long H1() {
        return this.zzl;
    }

    public final List I() {
        return this.zzH;
    }

    public final long I1() {
        return this.zzk;
    }

    public final List J() {
        return this.zzi;
    }

    public final long J1() {
        return this.zzy;
    }

    public final List K() {
        return this.zzj;
    }

    public final l4 K1(int i9) {
        return (l4) this.zzi.get(i9);
    }

    public final f5 N1(int i9) {
        return (f5) this.zzj.get(i9);
    }

    public final String O1() {
        return this.zzS;
    }

    public final String P1() {
        return this.zzv;
    }

    public final String Q1() {
        return this.zzB;
    }

    public final String R1() {
        return this.zzu;
    }

    public final int W() {
        return this.zzJ;
    }

    public final int a1() {
        return this.zzD;
    }

    public final boolean d1() {
        return (this.zzf & 536870912) != 0;
    }

    public final boolean e1() {
        return (this.zzg & 128) != 0;
    }

    public final boolean f1() {
        return (this.zzf & 524288) != 0;
    }

    public final boolean g1() {
        return (this.zzg & 16) != 0;
    }

    public final boolean h1() {
        return (this.zzf & 8) != 0;
    }

    public final boolean i1() {
        return (this.zzf & 16384) != 0;
    }

    public final boolean k1() {
        return (this.zzf & 131072) != 0;
    }

    public final boolean l1() {
        return (this.zzf & 32) != 0;
    }

    public final boolean m1() {
        return (this.zzf & 16) != 0;
    }

    public final boolean n1() {
        return (this.zzf & 1) != 0;
    }

    public final boolean o1() {
        return (this.zzg & 2) != 0;
    }

    public final boolean p1() {
        return (this.zzf & 8388608) != 0;
    }

    public final boolean q1() {
        return (this.zzg & 8192) != 0;
    }

    public final boolean r1() {
        return (this.zzf & 4) != 0;
    }

    public final boolean s1() {
        return (this.zzf & 1024) != 0;
    }

    public final boolean t1() {
        return (this.zzf & 2) != 0;
    }

    public final boolean u0() {
        return this.zzA;
    }

    public final boolean u1() {
        return (this.zzf & 32768) != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.x8
    public final Object v(int i9, Object obj, Object obj2) {
        int i10 = i9 - 1;
        if (i10 != 0) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return null;
                        }
                        return zze;
                    }
                    return new v4(null);
                }
                return new w4();
            }
            return x8.q(zze, "\u00014\u0000\u0002\u0001A4\u0000\u0005\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.", new Object[]{"zzf", "zzg", "zzh", "zzi", l4.class, "zzj", f5.class, "zzk", "zzl", "zzm", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzn", "zzG", "zzH", h4.class, "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", "zzZ", d4.f8028a, "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag"});
        }
        return (byte) 1;
    }

    public final boolean v0() {
        return this.zzG;
    }

    public final int v1() {
        return this.zzi.size();
    }

    public final String w() {
        return this.zzw;
    }

    public final boolean w0() {
        return (this.zzf & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0;
    }

    public final int w1() {
        return this.zzh;
    }

    public final String x() {
        return this.zzY;
    }

    public final boolean x0() {
        return (this.zzf & 1048576) != 0;
    }

    public final int x1() {
        return this.zzR;
    }

    public final String y() {
        return this.zzr;
    }

    public final int y1() {
        return this.zzt;
    }

    public final String z() {
        return this.zzP;
    }

    public final int z1() {
        return this.zzj.size();
    }
}
