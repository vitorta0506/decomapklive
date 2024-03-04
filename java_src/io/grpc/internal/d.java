package io.grpc.internal;

import io.grpc.internal.f;
import io.grpc.internal.k2;
import io.grpc.internal.l1;
import io.grpc.l;
import java.io.InputStream;
/* loaded from: classes5.dex */
public abstract class d implements j2 {

    /* loaded from: classes5.dex */
    public static abstract class a implements f.h, l1.b {

        /* renamed from: a  reason: collision with root package name */
        private y f42542a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f42543b = new Object();

        /* renamed from: c  reason: collision with root package name */
        private final i2 f42544c;

        /* renamed from: d  reason: collision with root package name */
        private final p2 f42545d;

        /* renamed from: e  reason: collision with root package name */
        private final l1 f42546e;

        /* renamed from: f  reason: collision with root package name */
        private int f42547f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f42548g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f42549h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.internal.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0468a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ qh.b f42550a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f42551b;

            RunnableC0468a(qh.b bVar, int i9) {
                this.f42550a = bVar;
                this.f42551b = i9;
            }

            @Override // java.lang.Runnable
            public void run() {
                qh.c.g("AbstractStream.request");
                qh.c.e(this.f42550a);
                try {
                    a.this.f42542a.b(this.f42551b);
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(int i9, i2 i2Var, p2 p2Var) {
            this.f42544c = (i2) com.google.common.base.o.t(i2Var, "statsTraceCtx");
            this.f42545d = (p2) com.google.common.base.o.t(p2Var, "transportTracer");
            l1 l1Var = new l1(this, l.b.f43352a, i9, i2Var, p2Var);
            this.f42546e = l1Var;
            this.f42542a = l1Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean n() {
            boolean z10;
            synchronized (this.f42543b) {
                z10 = this.f42548g && this.f42547f < 32768 && !this.f42549h;
            }
            return z10;
        }

        private void p() {
            boolean n9;
            synchronized (this.f42543b) {
                n9 = n();
            }
            if (n9) {
                o().c();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(int i9) {
            synchronized (this.f42543b) {
                this.f42547f += i9;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v(int i9) {
            e(new RunnableC0468a(qh.c.f(), i9));
        }

        @Override // io.grpc.internal.l1.b
        public void a(k2.a aVar) {
            o().a(aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void j(boolean z10) {
            if (z10) {
                this.f42542a.close();
            } else {
                this.f42542a.j();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void k(v1 v1Var) {
            try {
                this.f42542a.e(v1Var);
            } catch (Throwable th2) {
                c(th2);
            }
        }

        public final i2 l() {
            return this.f42544c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public p2 m() {
            return this.f42545d;
        }

        protected abstract k2 o();

        public final void r(int i9) {
            boolean z10;
            synchronized (this.f42543b) {
                com.google.common.base.o.A(this.f42548g, "onStreamAllocated was not called, but it seems the stream is active");
                int i10 = this.f42547f;
                z10 = true;
                boolean z11 = i10 < 32768;
                int i11 = i10 - i9;
                this.f42547f = i11;
                boolean z12 = i11 < 32768;
                if (z11 || !z12) {
                    z10 = false;
                }
            }
            if (z10) {
                p();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void s() {
            com.google.common.base.o.z(o() != null);
            synchronized (this.f42543b) {
                com.google.common.base.o.A(this.f42548g ? false : true, "Already allocated");
                this.f42548g = true;
            }
            p();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void t() {
            synchronized (this.f42543b) {
                this.f42549h = true;
            }
        }

        final void u() {
            this.f42546e.w(this);
            this.f42542a = this.f42546e;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void w(io.grpc.u uVar) {
            this.f42542a.d(uVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void x(s0 s0Var) {
            this.f42546e.v(s0Var);
            this.f42542a = new f(this, this, this.f42546e);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void y(int i9) {
            this.f42542a.c(i9);
        }
    }

    @Override // io.grpc.internal.j2
    public final void a(io.grpc.o oVar) {
        r().a((io.grpc.o) com.google.common.base.o.t(oVar, "compressor"));
    }

    @Override // io.grpc.internal.j2
    public final void b(int i9) {
        t().v(i9);
    }

    @Override // io.grpc.internal.j2
    public final void flush() {
        if (r().isClosed()) {
            return;
        }
        r().flush();
    }

    @Override // io.grpc.internal.j2
    public final void h(InputStream inputStream) {
        com.google.common.base.o.t(inputStream, "message");
        try {
            if (!r().isClosed()) {
                r().b(inputStream);
            }
        } finally {
            GrpcUtil.f(inputStream);
        }
    }

    @Override // io.grpc.internal.j2
    public void i() {
        t().u();
    }

    @Override // io.grpc.internal.j2
    public boolean isReady() {
        return t().n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void q() {
        r().close();
    }

    protected abstract q0 r();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void s(int i9) {
        t().q(i9);
    }

    protected abstract a t();
}
