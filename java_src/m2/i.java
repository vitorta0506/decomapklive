package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import java.util.Arrays;
import java.util.Collections;
import kotlin.UByte;
import m2.i0;
/* loaded from: classes.dex */
public final class i implements m {

    /* renamed from: v  reason: collision with root package name */
    private static final byte[] f54528v = {73, 68, 51};

    /* renamed from: a  reason: collision with root package name */
    private final boolean f54529a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.a0 f54530b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54531c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f54532d;

    /* renamed from: e  reason: collision with root package name */
    private String f54533e;

    /* renamed from: f  reason: collision with root package name */
    private c2.e0 f54534f;

    /* renamed from: g  reason: collision with root package name */
    private c2.e0 f54535g;

    /* renamed from: h  reason: collision with root package name */
    private int f54536h;

    /* renamed from: i  reason: collision with root package name */
    private int f54537i;

    /* renamed from: j  reason: collision with root package name */
    private int f54538j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54539k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54540l;

    /* renamed from: m  reason: collision with root package name */
    private int f54541m;

    /* renamed from: n  reason: collision with root package name */
    private int f54542n;

    /* renamed from: o  reason: collision with root package name */
    private int f54543o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f54544p;

    /* renamed from: q  reason: collision with root package name */
    private long f54545q;

    /* renamed from: r  reason: collision with root package name */
    private int f54546r;

    /* renamed from: s  reason: collision with root package name */
    private long f54547s;

    /* renamed from: t  reason: collision with root package name */
    private c2.e0 f54548t;

    /* renamed from: u  reason: collision with root package name */
    private long f54549u;

    public i(boolean z10) {
        this(z10, null);
    }

    private void a() {
        com.google.android.exoplayer2.util.a.e(this.f54534f);
        l0.j(this.f54548t);
        l0.j(this.f54535g);
    }

    private void g(com.google.android.exoplayer2.util.b0 b0Var) {
        if (b0Var.a() == 0) {
            return;
        }
        this.f54530b.f6939a[0] = b0Var.d()[b0Var.e()];
        this.f54530b.p(2);
        int h10 = this.f54530b.h(4);
        int i9 = this.f54542n;
        if (i9 != -1 && h10 != i9) {
            q();
            return;
        }
        if (!this.f54540l) {
            this.f54540l = true;
            this.f54541m = this.f54543o;
            this.f54542n = h10;
        }
        t();
    }

    private boolean h(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        b0Var.P(i9 + 1);
        if (w(b0Var, this.f54530b.f6939a, 1)) {
            this.f54530b.p(4);
            int h10 = this.f54530b.h(1);
            int i10 = this.f54541m;
            if (i10 == -1 || h10 == i10) {
                if (this.f54542n != -1) {
                    if (!w(b0Var, this.f54530b.f6939a, 1)) {
                        return true;
                    }
                    this.f54530b.p(2);
                    if (this.f54530b.h(4) != this.f54542n) {
                        return false;
                    }
                    b0Var.P(i9 + 2);
                }
                if (w(b0Var, this.f54530b.f6939a, 4)) {
                    this.f54530b.p(14);
                    int h11 = this.f54530b.h(13);
                    if (h11 < 7) {
                        return false;
                    }
                    byte[] d10 = b0Var.d();
                    int f10 = b0Var.f();
                    int i11 = i9 + h11;
                    if (i11 >= f10) {
                        return true;
                    }
                    if (d10[i11] == -1) {
                        int i12 = i11 + 1;
                        if (i12 == f10) {
                            return true;
                        }
                        return l((byte) -1, d10[i12]) && ((d10[i12] & 8) >> 3) == h10;
                    } else if (d10[i11] != 73) {
                        return false;
                    } else {
                        int i13 = i11 + 1;
                        if (i13 == f10) {
                            return true;
                        }
                        if (d10[i13] != 68) {
                            return false;
                        }
                        int i14 = i11 + 2;
                        return i14 == f10 || d10[i14] == 51;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    private boolean i(com.google.android.exoplayer2.util.b0 b0Var, byte[] bArr, int i9) {
        int min = Math.min(b0Var.a(), i9 - this.f54537i);
        b0Var.j(bArr, this.f54537i, min);
        int i10 = this.f54537i + min;
        this.f54537i = i10;
        return i10 == i9;
    }

    private void j(com.google.android.exoplayer2.util.b0 b0Var) {
        byte[] d10 = b0Var.d();
        int e10 = b0Var.e();
        int f10 = b0Var.f();
        while (e10 < f10) {
            int i9 = e10 + 1;
            int i10 = d10[e10] & UByte.MAX_VALUE;
            if (this.f54538j == 512 && l((byte) -1, (byte) i10) && (this.f54540l || h(b0Var, i9 - 2))) {
                this.f54543o = (i10 & 8) >> 3;
                this.f54539k = (i10 & 1) == 0;
                if (!this.f54540l) {
                    r();
                } else {
                    t();
                }
                b0Var.P(i9);
                return;
            }
            int i11 = this.f54538j;
            int i12 = i10 | i11;
            if (i12 == 329) {
                this.f54538j = 768;
            } else if (i12 == 511) {
                this.f54538j = 512;
            } else if (i12 == 836) {
                this.f54538j = 1024;
            } else if (i12 == 1075) {
                u();
                b0Var.P(i9);
                return;
            } else if (i11 != 256) {
                this.f54538j = 256;
                i9--;
            }
            e10 = i9;
        }
        b0Var.P(e10);
    }

    private boolean l(byte b10, byte b11) {
        return m(((b10 & UByte.MAX_VALUE) << 8) | (b11 & UByte.MAX_VALUE));
    }

    public static boolean m(int i9) {
        return (i9 & 65526) == 65520;
    }

    private void n() throws ParserException {
        this.f54530b.p(0);
        if (!this.f54544p) {
            int h10 = this.f54530b.h(2) + 1;
            if (h10 != 2) {
                com.google.android.exoplayer2.util.r.i("AdtsReader", "Detected audio object type: " + h10 + ", but assuming AAC LC.");
                h10 = 2;
            }
            this.f54530b.r(5);
            byte[] a10 = com.google.android.exoplayer2.audio.a.a(h10, this.f54542n, this.f54530b.h(3));
            a.b e10 = com.google.android.exoplayer2.audio.a.e(a10);
            k1 E = new k1.b().S(this.f54533e).e0("audio/mp4a-latm").I(e10.f5441c).H(e10.f5440b).f0(e10.f5439a).T(Collections.singletonList(a10)).V(this.f54532d).E();
            this.f54545q = 1024000000 / E.f6125z;
            this.f54534f.d(E);
            this.f54544p = true;
        } else {
            this.f54530b.r(10);
        }
        this.f54530b.r(4);
        int h11 = (this.f54530b.h(13) - 2) - 5;
        if (this.f54539k) {
            h11 -= 2;
        }
        v(this.f54534f, this.f54545q, 0, h11);
    }

    private void o() {
        this.f54535g.a(this.f54531c, 10);
        this.f54531c.P(6);
        v(this.f54535g, 0L, 10, this.f54531c.C() + 10);
    }

    private void p(com.google.android.exoplayer2.util.b0 b0Var) {
        int min = Math.min(b0Var.a(), this.f54546r - this.f54537i);
        this.f54548t.a(b0Var, min);
        int i9 = this.f54537i + min;
        this.f54537i = i9;
        int i10 = this.f54546r;
        if (i9 == i10) {
            long j10 = this.f54547s;
            if (j10 != -9223372036854775807L) {
                this.f54548t.c(j10, 1, i10, 0, null);
                this.f54547s += this.f54549u;
            }
            s();
        }
    }

    private void q() {
        this.f54540l = false;
        s();
    }

    private void r() {
        this.f54536h = 1;
        this.f54537i = 0;
    }

    private void s() {
        this.f54536h = 0;
        this.f54537i = 0;
        this.f54538j = 256;
    }

    private void t() {
        this.f54536h = 3;
        this.f54537i = 0;
    }

    private void u() {
        this.f54536h = 2;
        this.f54537i = f54528v.length;
        this.f54546r = 0;
        this.f54531c.P(0);
    }

    private void v(c2.e0 e0Var, long j10, int i9, int i10) {
        this.f54536h = 4;
        this.f54537i = i9;
        this.f54548t = e0Var;
        this.f54549u = j10;
        this.f54546r = i10;
    }

    private boolean w(com.google.android.exoplayer2.util.b0 b0Var, byte[] bArr, int i9) {
        if (b0Var.a() < i9) {
            return false;
        }
        b0Var.j(bArr, 0, i9);
        return true;
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) throws ParserException {
        a();
        while (b0Var.a() > 0) {
            int i9 = this.f54536h;
            if (i9 == 0) {
                j(b0Var);
            } else if (i9 == 1) {
                g(b0Var);
            } else if (i9 != 2) {
                if (i9 == 3) {
                    if (i(b0Var, this.f54530b.f6939a, this.f54539k ? 7 : 5)) {
                        n();
                    }
                } else if (i9 == 4) {
                    p(b0Var);
                } else {
                    throw new IllegalStateException();
                }
            } else if (i(b0Var, this.f54531c.d(), 10)) {
                o();
            }
        }
    }

    @Override // m2.m
    public void c() {
        this.f54547s = -9223372036854775807L;
        q();
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54533e = dVar.b();
        c2.e0 q10 = nVar.q(dVar.c(), 1);
        this.f54534f = q10;
        this.f54548t = q10;
        if (this.f54529a) {
            dVar.a();
            c2.e0 q11 = nVar.q(dVar.c(), 5);
            this.f54535g = q11;
            q11.d(new k1.b().S(dVar.b()).e0("application/id3").E());
            return;
        }
        this.f54535g = new c2.k();
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54547s = j10;
        }
    }

    public long k() {
        return this.f54545q;
    }

    public i(boolean z10, @Nullable String str) {
        this.f54530b = new com.google.android.exoplayer2.util.a0(new byte[7]);
        this.f54531c = new com.google.android.exoplayer2.util.b0(Arrays.copyOf(f54528v, 10));
        s();
        this.f54541m = -1;
        this.f54542n = -1;
        this.f54545q = -9223372036854775807L;
        this.f54547s = -9223372036854775807L;
        this.f54529a = z10;
        this.f54532d = str;
    }
}
