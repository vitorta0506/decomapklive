package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.b;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import m2.i0;
/* loaded from: classes.dex */
public final class c implements m {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.a0 f54435a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54436b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f54437c;

    /* renamed from: d  reason: collision with root package name */
    private String f54438d;

    /* renamed from: e  reason: collision with root package name */
    private c2.e0 f54439e;

    /* renamed from: f  reason: collision with root package name */
    private int f54440f;

    /* renamed from: g  reason: collision with root package name */
    private int f54441g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54442h;

    /* renamed from: i  reason: collision with root package name */
    private long f54443i;

    /* renamed from: j  reason: collision with root package name */
    private k1 f54444j;

    /* renamed from: k  reason: collision with root package name */
    private int f54445k;

    /* renamed from: l  reason: collision with root package name */
    private long f54446l;

    public c() {
        this(null);
    }

    private boolean a(com.google.android.exoplayer2.util.b0 b0Var, byte[] bArr, int i9) {
        int min = Math.min(b0Var.a(), i9 - this.f54441g);
        b0Var.j(bArr, this.f54441g, min);
        int i10 = this.f54441g + min;
        this.f54441g = i10;
        return i10 == i9;
    }

    private void g() {
        this.f54435a.p(0);
        b.C0076b e10 = com.google.android.exoplayer2.audio.b.e(this.f54435a);
        k1 k1Var = this.f54444j;
        if (k1Var == null || e10.f5464d != k1Var.f6124y || e10.f5463c != k1Var.f6125z || !l0.c(e10.f5461a, k1Var.f6111l)) {
            k1 E = new k1.b().S(this.f54438d).e0(e10.f5461a).H(e10.f5464d).f0(e10.f5463c).V(this.f54437c).E();
            this.f54444j = E;
            this.f54439e.d(E);
        }
        this.f54445k = e10.f5465e;
        this.f54443i = (e10.f5466f * 1000000) / this.f54444j.f6125z;
    }

    private boolean h(com.google.android.exoplayer2.util.b0 b0Var) {
        while (true) {
            if (b0Var.a() <= 0) {
                return false;
            }
            if (!this.f54442h) {
                this.f54442h = b0Var.D() == 11;
            } else {
                int D = b0Var.D();
                if (D == 119) {
                    this.f54442h = false;
                    return true;
                }
                this.f54442h = D == 11;
            }
        }
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        com.google.android.exoplayer2.util.a.h(this.f54439e);
        while (b0Var.a() > 0) {
            int i9 = this.f54440f;
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 == 2) {
                        int min = Math.min(b0Var.a(), this.f54445k - this.f54441g);
                        this.f54439e.a(b0Var, min);
                        int i10 = this.f54441g + min;
                        this.f54441g = i10;
                        int i11 = this.f54445k;
                        if (i10 == i11) {
                            long j10 = this.f54446l;
                            if (j10 != -9223372036854775807L) {
                                this.f54439e.c(j10, 1, i11, 0, null);
                                this.f54446l += this.f54443i;
                            }
                            this.f54440f = 0;
                        }
                    }
                } else if (a(b0Var, this.f54436b.d(), 128)) {
                    g();
                    this.f54436b.P(0);
                    this.f54439e.a(this.f54436b, 128);
                    this.f54440f = 2;
                }
            } else if (h(b0Var)) {
                this.f54440f = 1;
                this.f54436b.d()[0] = 11;
                this.f54436b.d()[1] = 119;
                this.f54441g = 2;
            }
        }
    }

    @Override // m2.m
    public void c() {
        this.f54440f = 0;
        this.f54441g = 0;
        this.f54442h = false;
        this.f54446l = -9223372036854775807L;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54438d = dVar.b();
        this.f54439e = nVar.q(dVar.c(), 1);
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54446l = j10;
        }
    }

    public c(@Nullable String str) {
        com.google.android.exoplayer2.util.a0 a0Var = new com.google.android.exoplayer2.util.a0(new byte[128]);
        this.f54435a = a0Var;
        this.f54436b = new com.google.android.exoplayer2.util.b0(a0Var.f6939a);
        this.f54440f = 0;
        this.f54446l = -9223372036854775807L;
        this.f54437c = str;
    }
}
