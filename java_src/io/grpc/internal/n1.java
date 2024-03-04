package io.grpc.internal;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.b;
/* loaded from: classes5.dex */
final class n1 extends b.a {

    /* renamed from: a  reason: collision with root package name */
    private final r f42906a;

    /* renamed from: b  reason: collision with root package name */
    private final MethodDescriptor<?, ?> f42907b;

    /* renamed from: c  reason: collision with root package name */
    private final io.grpc.s0 f42908c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.c f42909d;

    /* renamed from: f  reason: collision with root package name */
    private final a f42911f;

    /* renamed from: g  reason: collision with root package name */
    private final io.grpc.k[] f42912g;

    /* renamed from: i  reason: collision with root package name */
    private q f42914i;

    /* renamed from: j  reason: collision with root package name */
    boolean f42915j;

    /* renamed from: k  reason: collision with root package name */
    b0 f42916k;

    /* renamed from: h  reason: collision with root package name */
    private final Object f42913h = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final io.grpc.r f42910e = io.grpc.r.j();

    /* loaded from: classes5.dex */
    public interface a {
        void onComplete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n1(r rVar, MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, a aVar, io.grpc.k[] kVarArr) {
        this.f42906a = rVar;
        this.f42907b = methodDescriptor;
        this.f42908c = s0Var;
        this.f42909d = cVar;
        this.f42911f = aVar;
        this.f42912g = kVarArr;
    }

    private void c(q qVar) {
        boolean z10;
        com.google.common.base.o.A(!this.f42915j, "already finalized");
        this.f42915j = true;
        synchronized (this.f42913h) {
            if (this.f42914i == null) {
                this.f42914i = qVar;
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (z10) {
            this.f42911f.onComplete();
            return;
        }
        com.google.common.base.o.A(this.f42916k != null, "delayedStream is null");
        Runnable w6 = this.f42916k.w(qVar);
        if (w6 != null) {
            w6.run();
        }
        this.f42911f.onComplete();
    }

    @Override // io.grpc.b.a
    public void a(io.grpc.s0 s0Var) {
        com.google.common.base.o.A(!this.f42915j, "apply() or fail() already called");
        com.google.common.base.o.t(s0Var, "headers");
        this.f42908c.q(s0Var);
        io.grpc.r c10 = this.f42910e.c();
        try {
            q e10 = this.f42906a.e(this.f42907b, this.f42908c, this.f42909d, this.f42912g);
            this.f42910e.k(c10);
            c(e10);
        } catch (Throwable th2) {
            this.f42910e.k(c10);
            throw th2;
        }
    }

    @Override // io.grpc.b.a
    public void b(Status status) {
        com.google.common.base.o.e(!status.p(), "Cannot fail with OK status");
        com.google.common.base.o.A(!this.f42915j, "apply() or fail() already called");
        c(new f0(status, this.f42912g));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q d() {
        synchronized (this.f42913h) {
            q qVar = this.f42914i;
            if (qVar == null) {
                b0 b0Var = new b0();
                this.f42916k = b0Var;
                this.f42914i = b0Var;
                return b0Var;
            }
            return qVar;
        }
    }
}
