package m2;

import com.google.android.exoplayer2.util.l0;
import m2.i0;
/* loaded from: classes.dex */
public final class c0 implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f54447a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54448b = new com.google.android.exoplayer2.util.b0(32);

    /* renamed from: c  reason: collision with root package name */
    private int f54449c;

    /* renamed from: d  reason: collision with root package name */
    private int f54450d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54451e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54452f;

    public c0(b0 b0Var) {
        this.f54447a = b0Var;
    }

    @Override // m2.i0
    public void a(com.google.android.exoplayer2.util.i0 i0Var, c2.n nVar, i0.d dVar) {
        this.f54447a.a(i0Var, nVar, dVar);
        this.f54452f = true;
    }

    @Override // m2.i0
    public void b(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        boolean z10 = (i9 & 1) != 0;
        int e10 = z10 ? b0Var.e() + b0Var.D() : -1;
        if (this.f54452f) {
            if (!z10) {
                return;
            }
            this.f54452f = false;
            b0Var.P(e10);
            this.f54450d = 0;
        }
        while (b0Var.a() > 0) {
            int i10 = this.f54450d;
            if (i10 < 3) {
                if (i10 == 0) {
                    int D = b0Var.D();
                    b0Var.P(b0Var.e() - 1);
                    if (D == 255) {
                        this.f54452f = true;
                        return;
                    }
                }
                int min = Math.min(b0Var.a(), 3 - this.f54450d);
                b0Var.j(this.f54448b.d(), this.f54450d, min);
                int i11 = this.f54450d + min;
                this.f54450d = i11;
                if (i11 == 3) {
                    this.f54448b.P(0);
                    this.f54448b.O(3);
                    this.f54448b.Q(1);
                    int D2 = this.f54448b.D();
                    int D3 = this.f54448b.D();
                    this.f54451e = (D2 & 128) != 0;
                    this.f54449c = (((D2 & 15) << 8) | D3) + 3;
                    int b10 = this.f54448b.b();
                    int i12 = this.f54449c;
                    if (b10 < i12) {
                        this.f54448b.c(Math.min(4098, Math.max(i12, this.f54448b.b() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(b0Var.a(), this.f54449c - this.f54450d);
                b0Var.j(this.f54448b.d(), this.f54450d, min2);
                int i13 = this.f54450d + min2;
                this.f54450d = i13;
                int i14 = this.f54449c;
                if (i13 != i14) {
                    continue;
                } else {
                    if (this.f54451e) {
                        if (l0.r(this.f54448b.d(), 0, this.f54449c, -1) != 0) {
                            this.f54452f = true;
                            return;
                        }
                        this.f54448b.O(this.f54449c - 4);
                    } else {
                        this.f54448b.O(i14);
                    }
                    this.f54448b.P(0);
                    this.f54447a.b(this.f54448b);
                    this.f54450d = 0;
                }
            }
        }
    }

    @Override // m2.i0
    public void c() {
        this.f54452f = true;
    }
}
