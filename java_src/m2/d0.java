package m2;

import com.google.android.exoplayer2.k1;
import java.util.List;
import m2.i0;
/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final List<k1> f54454a;

    /* renamed from: b  reason: collision with root package name */
    private final c2.e0[] f54455b;

    public d0(List<k1> list) {
        this.f54454a = list;
        this.f54455b = new c2.e0[list.size()];
    }

    public void a(long j10, com.google.android.exoplayer2.util.b0 b0Var) {
        c2.c.a(j10, b0Var, this.f54455b);
    }

    public void b(c2.n nVar, i0.d dVar) {
        for (int i9 = 0; i9 < this.f54455b.length; i9++) {
            dVar.a();
            c2.e0 q10 = nVar.q(dVar.c(), 3);
            k1 k1Var = this.f54454a.get(i9);
            String str = k1Var.f6111l;
            boolean z10 = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            com.google.android.exoplayer2.util.a.b(z10, "Invalid closed caption mime type provided: " + str);
            String str2 = k1Var.f6100a;
            if (str2 == null) {
                str2 = dVar.b();
            }
            q10.d(new k1.b().S(str2).e0(str).g0(k1Var.f6103d).V(k1Var.f6102c).F(k1Var.D).T(k1Var.f6113n).E());
            this.f54455b[i9] = q10;
        }
    }
}
