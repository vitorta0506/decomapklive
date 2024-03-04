package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.k1;
import java.util.Collections;
import m2.i0;
/* loaded from: classes.dex */
public final class s implements m {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f54713a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54714b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.a0 f54715c;

    /* renamed from: d  reason: collision with root package name */
    private c2.e0 f54716d;

    /* renamed from: e  reason: collision with root package name */
    private String f54717e;

    /* renamed from: f  reason: collision with root package name */
    private k1 f54718f;

    /* renamed from: g  reason: collision with root package name */
    private int f54719g;

    /* renamed from: h  reason: collision with root package name */
    private int f54720h;

    /* renamed from: i  reason: collision with root package name */
    private int f54721i;

    /* renamed from: j  reason: collision with root package name */
    private int f54722j;

    /* renamed from: k  reason: collision with root package name */
    private long f54723k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54724l;

    /* renamed from: m  reason: collision with root package name */
    private int f54725m;

    /* renamed from: n  reason: collision with root package name */
    private int f54726n;

    /* renamed from: o  reason: collision with root package name */
    private int f54727o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f54728p;

    /* renamed from: q  reason: collision with root package name */
    private long f54729q;

    /* renamed from: r  reason: collision with root package name */
    private int f54730r;

    /* renamed from: s  reason: collision with root package name */
    private long f54731s;

    /* renamed from: t  reason: collision with root package name */
    private int f54732t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f54733u;

    public s(@Nullable String str) {
        this.f54713a = str;
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(1024);
        this.f54714b = b0Var;
        this.f54715c = new com.google.android.exoplayer2.util.a0(b0Var.d());
        this.f54723k = -9223372036854775807L;
    }

    private static long a(com.google.android.exoplayer2.util.a0 a0Var) {
        return a0Var.h((a0Var.h(2) + 1) * 8);
    }

    private void g(com.google.android.exoplayer2.util.a0 a0Var) throws ParserException {
        if (!a0Var.g()) {
            this.f54724l = true;
            l(a0Var);
        } else if (!this.f54724l) {
            return;
        }
        if (this.f54725m == 0) {
            if (this.f54726n == 0) {
                k(a0Var, j(a0Var));
                if (this.f54728p) {
                    a0Var.r((int) this.f54729q);
                    return;
                }
                return;
            }
            throw ParserException.createForMalformedContainer(null, null);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    private int h(com.google.android.exoplayer2.util.a0 a0Var) throws ParserException {
        int b10 = a0Var.b();
        a.b d10 = com.google.android.exoplayer2.audio.a.d(a0Var, true);
        this.f54733u = d10.f5441c;
        this.f54730r = d10.f5439a;
        this.f54732t = d10.f5440b;
        return b10 - a0Var.b();
    }

    private void i(com.google.android.exoplayer2.util.a0 a0Var) {
        int h10 = a0Var.h(3);
        this.f54727o = h10;
        if (h10 == 0) {
            a0Var.r(8);
        } else if (h10 == 1) {
            a0Var.r(9);
        } else if (h10 == 3 || h10 == 4 || h10 == 5) {
            a0Var.r(6);
        } else if (h10 != 6 && h10 != 7) {
            throw new IllegalStateException();
        } else {
            a0Var.r(1);
        }
    }

    private int j(com.google.android.exoplayer2.util.a0 a0Var) throws ParserException {
        int h10;
        if (this.f54727o == 0) {
            int i9 = 0;
            do {
                h10 = a0Var.h(8);
                i9 += h10;
            } while (h10 == 255);
            return i9;
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    private void k(com.google.android.exoplayer2.util.a0 a0Var, int i9) {
        int e10 = a0Var.e();
        if ((e10 & 7) == 0) {
            this.f54714b.P(e10 >> 3);
        } else {
            a0Var.i(this.f54714b.d(), 0, i9 * 8);
            this.f54714b.P(0);
        }
        this.f54716d.a(this.f54714b, i9);
        long j10 = this.f54723k;
        if (j10 != -9223372036854775807L) {
            this.f54716d.c(j10, 1, i9, 0, null);
            this.f54723k += this.f54731s;
        }
    }

    private void l(com.google.android.exoplayer2.util.a0 a0Var) throws ParserException {
        boolean g10;
        int h10 = a0Var.h(1);
        int h11 = h10 == 1 ? a0Var.h(1) : 0;
        this.f54725m = h11;
        if (h11 == 0) {
            if (h10 == 1) {
                a(a0Var);
            }
            if (a0Var.g()) {
                this.f54726n = a0Var.h(6);
                int h12 = a0Var.h(4);
                int h13 = a0Var.h(3);
                if (h12 == 0 && h13 == 0) {
                    if (h10 == 0) {
                        int e10 = a0Var.e();
                        int h14 = h(a0Var);
                        a0Var.p(e10);
                        byte[] bArr = new byte[(h14 + 7) / 8];
                        a0Var.i(bArr, 0, h14);
                        k1 E = new k1.b().S(this.f54717e).e0("audio/mp4a-latm").I(this.f54733u).H(this.f54732t).f0(this.f54730r).T(Collections.singletonList(bArr)).V(this.f54713a).E();
                        if (!E.equals(this.f54718f)) {
                            this.f54718f = E;
                            this.f54731s = 1024000000 / E.f6125z;
                            this.f54716d.d(E);
                        }
                    } else {
                        a0Var.r(((int) a(a0Var)) - h(a0Var));
                    }
                    i(a0Var);
                    boolean g11 = a0Var.g();
                    this.f54728p = g11;
                    this.f54729q = 0L;
                    if (g11) {
                        if (h10 == 1) {
                            this.f54729q = a(a0Var);
                        } else {
                            do {
                                g10 = a0Var.g();
                                this.f54729q = (this.f54729q << 8) + a0Var.h(8);
                            } while (g10);
                        }
                    }
                    if (a0Var.g()) {
                        a0Var.r(8);
                        return;
                    }
                    return;
                }
                throw ParserException.createForMalformedContainer(null, null);
            }
            throw ParserException.createForMalformedContainer(null, null);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    private void m(int i9) {
        this.f54714b.L(i9);
        this.f54715c.n(this.f54714b.d());
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.h(this.f54716d);
        while (b0Var.a() > 0) {
            int i9 = this.f54719g;
            if (i9 != 0) {
                if (i9 == 1) {
                    int D = b0Var.D();
                    if ((D & 224) == 224) {
                        this.f54722j = D;
                        this.f54719g = 2;
                    } else if (D != 86) {
                        this.f54719g = 0;
                    }
                } else if (i9 == 2) {
                    int D2 = ((this.f54722j & (-225)) << 8) | b0Var.D();
                    this.f54721i = D2;
                    if (D2 > this.f54714b.d().length) {
                        m(this.f54721i);
                    }
                    this.f54720h = 0;
                    this.f54719g = 3;
                } else if (i9 == 3) {
                    int min = Math.min(b0Var.a(), this.f54721i - this.f54720h);
                    b0Var.j(this.f54715c.f6939a, this.f54720h, min);
                    int i10 = this.f54720h + min;
                    this.f54720h = i10;
                    if (i10 == this.f54721i) {
                        this.f54715c.p(0);
                        g(this.f54715c);
                        this.f54719g = 0;
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else if (b0Var.D() == 86) {
                this.f54719g = 1;
            }
        }
    }

    @Override // m2.m
    public void c() {
        this.f54719g = 0;
        this.f54723k = -9223372036854775807L;
        this.f54724l = false;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54716d = nVar.q(dVar.c(), 1);
        this.f54717e = dVar.b();
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54723k = j10;
        }
    }
}
