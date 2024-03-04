package m2;

import com.google.android.exoplayer2.k1;
import java.util.Collections;
import java.util.List;
import m2.i0;
/* loaded from: classes.dex */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final List<i0.a> f54577a;

    /* renamed from: b  reason: collision with root package name */
    private final c2.e0[] f54578b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54579c;

    /* renamed from: d  reason: collision with root package name */
    private int f54580d;

    /* renamed from: e  reason: collision with root package name */
    private int f54581e;

    /* renamed from: f  reason: collision with root package name */
    private long f54582f = -9223372036854775807L;

    public l(List<i0.a> list) {
        this.f54577a = list;
        this.f54578b = new c2.e0[list.size()];
    }

    private boolean a(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        if (b0Var.a() == 0) {
            return false;
        }
        if (b0Var.D() != i9) {
            this.f54579c = false;
        }
        this.f54580d--;
        return this.f54579c;
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        c2.e0[] e0VarArr;
        if (this.f54579c) {
            if (this.f54580d != 2 || a(b0Var, 32)) {
                if (this.f54580d != 1 || a(b0Var, 0)) {
                    int e10 = b0Var.e();
                    int a10 = b0Var.a();
                    for (c2.e0 e0Var : this.f54578b) {
                        b0Var.P(e10);
                        e0Var.a(b0Var, a10);
                    }
                    this.f54581e += a10;
                }
            }
        }
    }

    @Override // m2.m
    public void c() {
        this.f54579c = false;
        this.f54582f = -9223372036854775807L;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        for (int i9 = 0; i9 < this.f54578b.length; i9++) {
            i0.a aVar = this.f54577a.get(i9);
            dVar.a();
            c2.e0 q10 = nVar.q(dVar.c(), 3);
            q10.d(new k1.b().S(dVar.b()).e0("application/dvbsubs").T(Collections.singletonList(aVar.f54552c)).V(aVar.f54550a).E());
            this.f54578b[i9] = q10;
        }
    }

    @Override // m2.m
    public void e() {
        if (this.f54579c) {
            if (this.f54582f != -9223372036854775807L) {
                for (c2.e0 e0Var : this.f54578b) {
                    e0Var.c(this.f54582f, 1, this.f54581e, 0, null);
                }
            }
            this.f54579c = false;
        }
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if ((i9 & 4) == 0) {
            return;
        }
        this.f54579c = true;
        if (j10 != -9223372036854775807L) {
            this.f54582f = j10;
        }
        this.f54581e = 0;
        this.f54580d = 2;
    }
}
