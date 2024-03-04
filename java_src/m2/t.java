package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.k1;
import kotlin.UByte;
import m2.i0;
/* loaded from: classes.dex */
public final class t implements m {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54734a;

    /* renamed from: b  reason: collision with root package name */
    private final b0.a f54735b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f54736c;

    /* renamed from: d  reason: collision with root package name */
    private c2.e0 f54737d;

    /* renamed from: e  reason: collision with root package name */
    private String f54738e;

    /* renamed from: f  reason: collision with root package name */
    private int f54739f;

    /* renamed from: g  reason: collision with root package name */
    private int f54740g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54741h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54742i;

    /* renamed from: j  reason: collision with root package name */
    private long f54743j;

    /* renamed from: k  reason: collision with root package name */
    private int f54744k;

    /* renamed from: l  reason: collision with root package name */
    private long f54745l;

    public t() {
        this(null);
    }

    private void a(com.google.android.exoplayer2.util.b0 b0Var) {
        byte[] d10 = b0Var.d();
        int f10 = b0Var.f();
        for (int e10 = b0Var.e(); e10 < f10; e10++) {
            boolean z10 = (d10[e10] & UByte.MAX_VALUE) == 255;
            boolean z11 = this.f54742i && (d10[e10] & 224) == 224;
            this.f54742i = z10;
            if (z11) {
                b0Var.P(e10 + 1);
                this.f54742i = false;
                this.f54734a.d()[1] = d10[e10];
                this.f54740g = 2;
                this.f54739f = 1;
                return;
            }
        }
        b0Var.P(f10);
    }

    private void g(com.google.android.exoplayer2.util.b0 b0Var) {
        int min = Math.min(b0Var.a(), this.f54744k - this.f54740g);
        this.f54737d.a(b0Var, min);
        int i9 = this.f54740g + min;
        this.f54740g = i9;
        int i10 = this.f54744k;
        if (i9 < i10) {
            return;
        }
        long j10 = this.f54745l;
        if (j10 != -9223372036854775807L) {
            this.f54737d.c(j10, 1, i10, 0, null);
            this.f54745l += this.f54743j;
        }
        this.f54740g = 0;
        this.f54739f = 0;
    }

    private void h(com.google.android.exoplayer2.util.b0 b0Var) {
        int min = Math.min(b0Var.a(), 4 - this.f54740g);
        b0Var.j(this.f54734a.d(), this.f54740g, min);
        int i9 = this.f54740g + min;
        this.f54740g = i9;
        if (i9 < 4) {
            return;
        }
        this.f54734a.P(0);
        if (!this.f54735b.a(this.f54734a.n())) {
            this.f54740g = 0;
            this.f54739f = 1;
            return;
        }
        b0.a aVar = this.f54735b;
        this.f54744k = aVar.f5476c;
        if (!this.f54741h) {
            this.f54743j = (aVar.f5480g * 1000000) / aVar.f5477d;
            this.f54737d.d(new k1.b().S(this.f54738e).e0(this.f54735b.f5475b).W(4096).H(this.f54735b.f5478e).f0(this.f54735b.f5477d).V(this.f54736c).E());
            this.f54741h = true;
        }
        this.f54734a.P(0);
        this.f54737d.a(this.f54734a, 4);
        this.f54739f = 2;
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        com.google.android.exoplayer2.util.a.h(this.f54737d);
        while (b0Var.a() > 0) {
            int i9 = this.f54739f;
            if (i9 == 0) {
                a(b0Var);
            } else if (i9 == 1) {
                h(b0Var);
            } else if (i9 == 2) {
                g(b0Var);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // m2.m
    public void c() {
        this.f54739f = 0;
        this.f54740g = 0;
        this.f54742i = false;
        this.f54745l = -9223372036854775807L;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54738e = dVar.b();
        this.f54737d = nVar.q(dVar.c(), 1);
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54745l = j10;
        }
    }

    public t(@Nullable String str) {
        this.f54739f = 0;
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(4);
        this.f54734a = b0Var;
        b0Var.d()[0] = -1;
        this.f54735b = new b0.a();
        this.f54745l = -9223372036854775807L;
        this.f54736c = str;
    }
}
