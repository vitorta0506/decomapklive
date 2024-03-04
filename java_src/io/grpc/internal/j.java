package io.grpc.internal;

import io.grpc.ChannelLogger;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.internal.e2;
import io.grpc.n0;
import io.grpc.t0;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.p0 f42799a;

    /* renamed from: b  reason: collision with root package name */
    private final String f42800b;

    /* loaded from: classes5.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private final n0.d f42801a;

        /* renamed from: b  reason: collision with root package name */
        private io.grpc.n0 f42802b;

        /* renamed from: c  reason: collision with root package name */
        private io.grpc.o0 f42803c;

        b(n0.d dVar) {
            this.f42801a = dVar;
            io.grpc.o0 d10 = j.this.f42799a.d(j.this.f42800b);
            this.f42803c = d10;
            if (d10 != null) {
                this.f42802b = d10.a(dVar);
                return;
            }
            throw new IllegalStateException("Could not find policy '" + j.this.f42800b + "'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files.");
        }

        public io.grpc.n0 a() {
            return this.f42802b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(Status status) {
            a().b(status);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c() {
            this.f42802b.e();
            this.f42802b = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Status d(n0.g gVar) {
            List<io.grpc.x> a10 = gVar.a();
            io.grpc.a b10 = gVar.b();
            e2.b bVar = (e2.b) gVar.c();
            if (bVar == null) {
                try {
                    j jVar = j.this;
                    bVar = new e2.b(jVar.d(jVar.f42800b, "using default policy"), null);
                } catch (f e10) {
                    this.f42801a.k(ConnectivityState.TRANSIENT_FAILURE, new d(Status.f41718t.r(e10.getMessage())));
                    this.f42802b.e();
                    this.f42803c = null;
                    this.f42802b = new e();
                    return Status.f41704f;
                }
            }
            if (this.f42803c == null || !bVar.f42569a.b().equals(this.f42803c.b())) {
                this.f42801a.k(ConnectivityState.CONNECTING, new c());
                this.f42802b.e();
                io.grpc.o0 o0Var = bVar.f42569a;
                this.f42803c = o0Var;
                io.grpc.n0 n0Var = this.f42802b;
                this.f42802b = o0Var.a(this.f42801a);
                this.f42801a.d().b(ChannelLogger.ChannelLogLevel.INFO, "Load balancer changed from {0} to {1}", n0Var.getClass().getSimpleName(), this.f42802b.getClass().getSimpleName());
            }
            Object obj = bVar.f42570b;
            if (obj != null) {
                this.f42801a.d().b(ChannelLogger.ChannelLogLevel.DEBUG, "Load-balancing config: {0}", bVar.f42570b);
            }
            io.grpc.n0 a11 = a();
            if (gVar.a().isEmpty() && !a11.a()) {
                Status status = Status.f41719u;
                return status.r("NameResolver returned no usable address. addrs=" + a10 + ", attrs=" + b10);
            }
            a11.d(n0.g.d().b(gVar.a()).c(b10).d(obj).a());
            return Status.f41704f;
        }
    }

    /* loaded from: classes5.dex */
    private static final class c extends n0.i {
        private c() {
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return n0.e.g();
        }

        public String toString() {
            return com.google.common.base.j.b(c.class).toString();
        }
    }

    /* loaded from: classes5.dex */
    private static final class d extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        private final Status f42805a;

        d(Status status) {
            this.f42805a = status;
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return n0.e.f(this.f42805a);
        }
    }

    /* loaded from: classes5.dex */
    private static final class e extends io.grpc.n0 {
        private e() {
        }

        @Override // io.grpc.n0
        public void b(Status status) {
        }

        @Override // io.grpc.n0
        @Deprecated
        public void c(List<io.grpc.x> list, io.grpc.a aVar) {
        }

        @Override // io.grpc.n0
        public void d(n0.g gVar) {
        }

        @Override // io.grpc.n0
        public void e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f extends Exception {
        private static final long serialVersionUID = 1;

        private f(String str) {
            super(str);
        }
    }

    public j(String str) {
        this(io.grpc.p0.b(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public io.grpc.o0 d(String str, String str2) throws f {
        io.grpc.o0 d10 = this.f42799a.d(str);
        if (d10 != null) {
            return d10;
        }
        throw new f("Trying to load '" + str + "' because " + str2 + ", but it's unavailable");
    }

    public b e(n0.d dVar) {
        return new b(dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0.c f(Map<String, ?> map) {
        List<e2.a> B;
        if (map != null) {
            try {
                B = e2.B(e2.h(map));
            } catch (RuntimeException e10) {
                return t0.c.b(Status.f41706h.r("can't parse load balancer configuration").q(e10));
            }
        } else {
            B = null;
        }
        if (B == null || B.isEmpty()) {
            return null;
        }
        return e2.z(B, this.f42799a);
    }

    j(io.grpc.p0 p0Var, String str) {
        this.f42799a = (io.grpc.p0) com.google.common.base.o.t(p0Var, "registry");
        this.f42800b = (String) com.google.common.base.o.t(str, "defaultPolicy");
    }
}
