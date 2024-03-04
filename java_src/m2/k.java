package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import m2.i0;
/* loaded from: classes.dex */
public final class k implements m {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f54565b;

    /* renamed from: c  reason: collision with root package name */
    private String f54566c;

    /* renamed from: d  reason: collision with root package name */
    private c2.e0 f54567d;

    /* renamed from: f  reason: collision with root package name */
    private int f54569f;

    /* renamed from: g  reason: collision with root package name */
    private int f54570g;

    /* renamed from: h  reason: collision with root package name */
    private long f54571h;

    /* renamed from: i  reason: collision with root package name */
    private k1 f54572i;

    /* renamed from: j  reason: collision with root package name */
    private int f54573j;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54564a = new com.google.android.exoplayer2.util.b0(new byte[18]);

    /* renamed from: e  reason: collision with root package name */
    private int f54568e = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f54574k = -9223372036854775807L;

    public k(@Nullable String str) {
        this.f54565b = str;
    }

    private boolean a(com.google.android.exoplayer2.util.b0 b0Var, byte[] bArr, int i9) {
        int min = Math.min(b0Var.a(), i9 - this.f54569f);
        b0Var.j(bArr, this.f54569f, min);
        int i10 = this.f54569f + min;
        this.f54569f = i10;
        return i10 == i9;
    }

    private void g() {
        byte[] d10 = this.f54564a.d();
        if (this.f54572i == null) {
            k1 g10 = com.google.android.exoplayer2.audio.y.g(d10, this.f54566c, this.f54565b, null);
            this.f54572i = g10;
            this.f54567d.d(g10);
        }
        this.f54573j = com.google.android.exoplayer2.audio.y.a(d10);
        this.f54571h = (int) ((com.google.android.exoplayer2.audio.y.f(d10) * 1000000) / this.f54572i.f6125z);
    }

    private boolean h(com.google.android.exoplayer2.util.b0 b0Var) {
        while (b0Var.a() > 0) {
            int i9 = this.f54570g << 8;
            this.f54570g = i9;
            int D = i9 | b0Var.D();
            this.f54570g = D;
            if (com.google.android.exoplayer2.audio.y.d(D)) {
                byte[] d10 = this.f54564a.d();
                int i10 = this.f54570g;
                d10[0] = (byte) ((i10 >> 24) & 255);
                d10[1] = (byte) ((i10 >> 16) & 255);
                d10[2] = (byte) ((i10 >> 8) & 255);
                d10[3] = (byte) (i10 & 255);
                this.f54569f = 4;
                this.f54570g = 0;
                return true;
            }
        }
        return false;
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        com.google.android.exoplayer2.util.a.h(this.f54567d);
        while (b0Var.a() > 0) {
            int i9 = this.f54568e;
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 == 2) {
                        int min = Math.min(b0Var.a(), this.f54573j - this.f54569f);
                        this.f54567d.a(b0Var, min);
                        int i10 = this.f54569f + min;
                        this.f54569f = i10;
                        int i11 = this.f54573j;
                        if (i10 == i11) {
                            long j10 = this.f54574k;
                            if (j10 != -9223372036854775807L) {
                                this.f54567d.c(j10, 1, i11, 0, null);
                                this.f54574k += this.f54571h;
                            }
                            this.f54568e = 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (a(b0Var, this.f54564a.d(), 18)) {
                    g();
                    this.f54564a.P(0);
                    this.f54567d.a(this.f54564a, 18);
                    this.f54568e = 2;
                }
            } else if (h(b0Var)) {
                this.f54568e = 1;
            }
        }
    }

    @Override // m2.m
    public void c() {
        this.f54568e = 0;
        this.f54569f = 0;
        this.f54570g = 0;
        this.f54574k = -9223372036854775807L;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54566c = dVar.b();
        this.f54567d = nVar.q(dVar.c(), 1);
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54574k = j10;
        }
    }
}
