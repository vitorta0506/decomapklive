package m2;

import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import m2.i0;
/* loaded from: classes.dex */
public final class v implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private k1 f54751a;

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.exoplayer2.util.i0 f54752b;

    /* renamed from: c  reason: collision with root package name */
    private c2.e0 f54753c;

    public v(String str) {
        this.f54751a = new k1.b().e0(str).E();
    }

    private void c() {
        com.google.android.exoplayer2.util.a.h(this.f54752b);
        l0.j(this.f54753c);
    }

    @Override // m2.b0
    public void a(com.google.android.exoplayer2.util.i0 i0Var, c2.n nVar, i0.d dVar) {
        this.f54752b = i0Var;
        dVar.a();
        c2.e0 q10 = nVar.q(dVar.c(), 5);
        this.f54753c = q10;
        q10.d(this.f54751a);
    }

    @Override // m2.b0
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        c();
        long d10 = this.f54752b.d();
        long e10 = this.f54752b.e();
        if (d10 == -9223372036854775807L || e10 == -9223372036854775807L) {
            return;
        }
        k1 k1Var = this.f54751a;
        if (e10 != k1Var.f6115p) {
            k1 E = k1Var.b().i0(e10).E();
            this.f54751a = E;
            this.f54753c.d(E);
        }
        int a10 = b0Var.a();
        this.f54753c.a(b0Var, a10);
        this.f54753c.c(d10, 1, a10, 0, null);
    }
}
