package ug;
/* loaded from: classes5.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private int f58516a;

    /* renamed from: b  reason: collision with root package name */
    private int f58517b;

    /* renamed from: c  reason: collision with root package name */
    private x<Void> f58518c;

    /* renamed from: d  reason: collision with root package name */
    private Throwable f58519d;

    /* renamed from: e  reason: collision with root package name */
    private final r<q<?>> f58520e = new a();

    /* renamed from: f  reason: collision with root package name */
    private final j f58521f;

    /* loaded from: classes5.dex */
    class a implements r<q<?>> {

        /* renamed from: ug.y$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0659a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ q f58523a;

            RunnableC0659a(q qVar) {
                this.f58523a = qVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.b(this.f58523a);
            }
        }

        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(q<?> qVar) {
            y.c(y.this);
            if (!qVar.p0() && y.this.f58519d == null) {
                y.this.f58519d = qVar.L();
            }
            if (y.this.f58517b != y.this.f58516a || y.this.f58518c == null) {
                return;
            }
            y.this.n();
        }

        @Override // ug.r
        public void e(q<?> qVar) {
            if (y.this.f58521f.Y()) {
                b(qVar);
            } else {
                y.this.f58521f.execute(new RunnableC0659a(qVar));
            }
        }
    }

    public y(j jVar) {
        this.f58521f = (j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "executor");
    }

    static /* synthetic */ int c(y yVar) {
        int i9 = yVar.f58517b + 1;
        yVar.f58517b = i9;
        return i9;
    }

    private void k() {
        if (this.f58518c != null) {
            throw new IllegalStateException("Adding promises is not allowed after finished adding");
        }
    }

    private void l() {
        if (!this.f58521f.Y()) {
            throw new IllegalStateException("Must be called from EventExecutor thread");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        Throwable th2 = this.f58519d;
        return th2 == null ? this.f58518c.B(null) : this.f58518c.z(th2);
    }

    public void i(q qVar) {
        k();
        l();
        this.f58516a++;
        qVar.c(this.f58520e);
    }

    @Deprecated
    public void j(x xVar) {
        i(xVar);
    }

    public void m(x<Void> xVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(xVar, "aggregatePromise");
        l();
        if (this.f58518c == null) {
            this.f58518c = xVar;
            if (this.f58517b == this.f58516a) {
                n();
                return;
            }
            return;
        }
        throw new IllegalStateException("Already finished");
    }
}
