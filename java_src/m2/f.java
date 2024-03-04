package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.c;
import com.google.android.exoplayer2.k1;
import m2.i0;
/* loaded from: classes.dex */
public final class f implements m {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.a0 f54464a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54465b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f54466c;

    /* renamed from: d  reason: collision with root package name */
    private String f54467d;

    /* renamed from: e  reason: collision with root package name */
    private c2.e0 f54468e;

    /* renamed from: f  reason: collision with root package name */
    private int f54469f;

    /* renamed from: g  reason: collision with root package name */
    private int f54470g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54471h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54472i;

    /* renamed from: j  reason: collision with root package name */
    private long f54473j;

    /* renamed from: k  reason: collision with root package name */
    private k1 f54474k;

    /* renamed from: l  reason: collision with root package name */
    private int f54475l;

    /* renamed from: m  reason: collision with root package name */
    private long f54476m;

    public f() {
        this(null);
    }

    private boolean a(com.google.android.exoplayer2.util.b0 b0Var, byte[] bArr, int i9) {
        int min = Math.min(b0Var.a(), i9 - this.f54470g);
        b0Var.j(bArr, this.f54470g, min);
        int i10 = this.f54470g + min;
        this.f54470g = i10;
        return i10 == i9;
    }

    private void g() {
        this.f54464a.p(0);
        c.b d10 = com.google.android.exoplayer2.audio.c.d(this.f54464a);
        k1 k1Var = this.f54474k;
        if (k1Var == null || d10.f5484c != k1Var.f6124y || d10.f5483b != k1Var.f6125z || !"audio/ac4".equals(k1Var.f6111l)) {
            k1 E = new k1.b().S(this.f54467d).e0("audio/ac4").H(d10.f5484c).f0(d10.f5483b).V(this.f54466c).E();
            this.f54474k = E;
            this.f54468e.d(E);
        }
        this.f54475l = d10.f5485d;
        this.f54473j = (d10.f5486e * 1000000) / this.f54474k.f6125z;
    }

    private boolean h(com.google.android.exoplayer2.util.b0 b0Var) {
        int D;
        while (true) {
            if (b0Var.a() <= 0) {
                return false;
            }
            if (!this.f54471h) {
                this.f54471h = b0Var.D() == 172;
            } else {
                D = b0Var.D();
                this.f54471h = D == 172;
                if (D == 64 || D == 65) {
                    break;
                }
            }
        }
        this.f54472i = D == 65;
        return true;
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        com.google.android.exoplayer2.util.a.h(this.f54468e);
        while (b0Var.a() > 0) {
            int i9 = this.f54469f;
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 == 2) {
                        int min = Math.min(b0Var.a(), this.f54475l - this.f54470g);
                        this.f54468e.a(b0Var, min);
                        int i10 = this.f54470g + min;
                        this.f54470g = i10;
                        int i11 = this.f54475l;
                        if (i10 == i11) {
                            long j10 = this.f54476m;
                            if (j10 != -9223372036854775807L) {
                                this.f54468e.c(j10, 1, i11, 0, null);
                                this.f54476m += this.f54473j;
                            }
                            this.f54469f = 0;
                        }
                    }
                } else if (a(b0Var, this.f54465b.d(), 16)) {
                    g();
                    this.f54465b.P(0);
                    this.f54468e.a(this.f54465b, 16);
                    this.f54469f = 2;
                }
            } else if (h(b0Var)) {
                this.f54469f = 1;
                this.f54465b.d()[0] = -84;
                this.f54465b.d()[1] = (byte) (this.f54472i ? 65 : 64);
                this.f54470g = 2;
            }
        }
    }

    @Override // m2.m
    public void c() {
        this.f54469f = 0;
        this.f54470g = 0;
        this.f54471h = false;
        this.f54472i = false;
        this.f54476m = -9223372036854775807L;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54467d = dVar.b();
        this.f54468e = nVar.q(dVar.c(), 1);
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54476m = j10;
        }
    }

    public f(@Nullable String str) {
        com.google.android.exoplayer2.util.a0 a0Var = new com.google.android.exoplayer2.util.a0(new byte[16]);
        this.f54464a = a0Var;
        this.f54465b = new com.google.android.exoplayer2.util.b0(a0Var.f6939a);
        this.f54469f = 0;
        this.f54470g = 0;
        this.f54471h = false;
        this.f54472i = false;
        this.f54476m = -9223372036854775807L;
        this.f54466c = str;
    }
}
