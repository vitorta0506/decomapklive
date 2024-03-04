package m2;

import com.google.android.exoplayer2.k1;
import java.util.List;
import m2.i0;
/* loaded from: classes.dex */
final class k0 {

    /* renamed from: a  reason: collision with root package name */
    private final List<k1> f54575a;

    /* renamed from: b  reason: collision with root package name */
    private final c2.e0[] f54576b;

    public k0(List<k1> list) {
        this.f54575a = list;
        this.f54576b = new c2.e0[list.size()];
    }

    public void a(long j10, com.google.android.exoplayer2.util.b0 b0Var) {
        if (b0Var.a() < 9) {
            return;
        }
        int n9 = b0Var.n();
        int n10 = b0Var.n();
        int D = b0Var.D();
        if (n9 == 434 && n10 == 1195456820 && D == 3) {
            c2.c.b(j10, b0Var, this.f54576b);
        }
    }

    public void b(c2.n nVar, i0.d dVar) {
        for (int i9 = 0; i9 < this.f54576b.length; i9++) {
            dVar.a();
            c2.e0 q10 = nVar.q(dVar.c(), 3);
            k1 k1Var = this.f54575a.get(i9);
            String str = k1Var.f6111l;
            boolean z10 = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            com.google.android.exoplayer2.util.a.b(z10, "Invalid closed caption mime type provided: " + str);
            q10.d(new k1.b().S(dVar.b()).e0(str).g0(k1Var.f6103d).V(k1Var.f6102c).F(k1Var.D).T(k1Var.f6113n).E());
            this.f54576b[i9] = q10;
        }
    }
}
