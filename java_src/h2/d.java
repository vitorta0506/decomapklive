package h2;

import c2.b0;
import c2.c0;
import c2.e0;
import c2.n;
/* loaded from: classes.dex */
public final class d implements n {

    /* renamed from: a  reason: collision with root package name */
    private final long f40342a;

    /* renamed from: b  reason: collision with root package name */
    private final n f40343b;

    /* loaded from: classes.dex */
    class a implements b0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b0 f40344a;

        a(b0 b0Var) {
            this.f40344a = b0Var;
        }

        @Override // c2.b0
        public b0.a c(long j10) {
            b0.a c10 = this.f40344a.c(j10);
            c0 c0Var = c10.f1464a;
            c0 c0Var2 = new c0(c0Var.f1469a, c0Var.f1470b + d.this.f40342a);
            c0 c0Var3 = c10.f1465b;
            return new b0.a(c0Var2, new c0(c0Var3.f1469a, c0Var3.f1470b + d.this.f40342a));
        }

        @Override // c2.b0
        public boolean e() {
            return this.f40344a.e();
        }

        @Override // c2.b0
        public long i() {
            return this.f40344a.i();
        }
    }

    public d(long j10, n nVar) {
        this.f40342a = j10;
        this.f40343b = nVar;
    }

    @Override // c2.n
    public void l(b0 b0Var) {
        this.f40343b.l(new a(b0Var));
    }

    @Override // c2.n
    public void o() {
        this.f40343b.o();
    }

    @Override // c2.n
    public e0 q(int i9, int i10) {
        return this.f40343b.q(i9, i10);
    }
}
