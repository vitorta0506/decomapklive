package io.grpc.internal;

import io.grpc.ChannelLogger;
import io.grpc.MethodDescriptor;
import io.grpc.SecurityLevel;
import io.grpc.Status;
import io.grpc.b;
import io.grpc.internal.n1;
import io.grpc.internal.s;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
final class l implements s {

    /* renamed from: a  reason: collision with root package name */
    private final s f42820a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.b f42821b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f42822c;

    /* loaded from: classes5.dex */
    private class a extends l0 {

        /* renamed from: a  reason: collision with root package name */
        private final u f42823a;

        /* renamed from: b  reason: collision with root package name */
        private final String f42824b;

        /* renamed from: d  reason: collision with root package name */
        private volatile Status f42826d;

        /* renamed from: e  reason: collision with root package name */
        private Status f42827e;

        /* renamed from: f  reason: collision with root package name */
        private Status f42828f;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicInteger f42825c = new AtomicInteger(-2147483647);

        /* renamed from: g  reason: collision with root package name */
        private final n1.a f42829g = new C0470a();

        /* renamed from: io.grpc.internal.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0470a implements n1.a {
            C0470a() {
            }

            @Override // io.grpc.internal.n1.a
            public void onComplete() {
                if (a.this.f42825c.decrementAndGet() == 0) {
                    a.this.m();
                }
            }
        }

        /* loaded from: classes5.dex */
        class b extends b.AbstractC0464b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MethodDescriptor f42832a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ io.grpc.c f42833b;

            b(MethodDescriptor methodDescriptor, io.grpc.c cVar) {
                this.f42832a = methodDescriptor;
                this.f42833b = cVar;
            }

            @Override // io.grpc.b.AbstractC0464b
            public String a() {
                return (String) com.google.common.base.j.a(this.f42833b.a(), a.this.f42824b);
            }

            @Override // io.grpc.b.AbstractC0464b
            public MethodDescriptor<?, ?> b() {
                return this.f42832a;
            }

            @Override // io.grpc.b.AbstractC0464b
            public SecurityLevel c() {
                return (SecurityLevel) com.google.common.base.j.a((SecurityLevel) a.this.f42823a.f().b(r0.f43015a), SecurityLevel.NONE);
            }
        }

        a(u uVar, String str) {
            this.f42823a = (u) com.google.common.base.o.t(uVar, "delegate");
            this.f42824b = (String) com.google.common.base.o.t(str, "authority");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m() {
            synchronized (this) {
                if (this.f42825c.get() != 0) {
                    return;
                }
                Status status = this.f42827e;
                Status status2 = this.f42828f;
                this.f42827e = null;
                this.f42828f = null;
                if (status != null) {
                    super.g(status);
                }
                if (status2 != null) {
                    super.b(status2);
                }
            }
        }

        @Override // io.grpc.internal.l0
        protected u a() {
            return this.f42823a;
        }

        @Override // io.grpc.internal.l0, io.grpc.internal.k1
        public void b(Status status) {
            com.google.common.base.o.t(status, "status");
            synchronized (this) {
                if (this.f42825c.get() < 0) {
                    this.f42826d = status;
                    this.f42825c.addAndGet(Integer.MAX_VALUE);
                } else if (this.f42828f != null) {
                    return;
                }
                if (this.f42825c.get() != 0) {
                    this.f42828f = status;
                } else {
                    super.b(status);
                }
            }
        }

        @Override // io.grpc.internal.l0, io.grpc.internal.r
        public q e(MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr) {
            io.grpc.b c10 = cVar.c();
            if (c10 == null) {
                c10 = l.this.f42821b;
            } else if (l.this.f42821b != null) {
                c10 = new io.grpc.m(l.this.f42821b, c10);
            }
            if (c10 != null) {
                n1 n1Var = new n1(this.f42823a, methodDescriptor, s0Var, cVar, this.f42829g, kVarArr);
                if (this.f42825c.incrementAndGet() > 0) {
                    this.f42829g.onComplete();
                    return new f0(this.f42826d, kVarArr);
                }
                try {
                    c10.a(new b(methodDescriptor, cVar), (Executor) com.google.common.base.j.a(cVar.e(), l.this.f42822c), n1Var);
                } catch (Throwable th2) {
                    n1Var.b(Status.f41712n.r("Credentials should use fail() instead of throwing exceptions").q(th2));
                }
                return n1Var.d();
            } else if (this.f42825c.get() >= 0) {
                return new f0(this.f42826d, kVarArr);
            } else {
                return this.f42823a.e(methodDescriptor, s0Var, cVar, kVarArr);
            }
        }

        @Override // io.grpc.internal.l0, io.grpc.internal.k1
        public void g(Status status) {
            com.google.common.base.o.t(status, "status");
            synchronized (this) {
                if (this.f42825c.get() < 0) {
                    this.f42826d = status;
                    this.f42825c.addAndGet(Integer.MAX_VALUE);
                    if (this.f42825c.get() != 0) {
                        this.f42827e = status;
                    } else {
                        super.g(status);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(s sVar, io.grpc.b bVar, Executor executor) {
        this.f42820a = (s) com.google.common.base.o.t(sVar, "delegate");
        this.f42821b = bVar;
        this.f42822c = (Executor) com.google.common.base.o.t(executor, "appExecutor");
    }

    @Override // io.grpc.internal.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f42820a.close();
    }

    @Override // io.grpc.internal.s
    public u h1(SocketAddress socketAddress, s.a aVar, ChannelLogger channelLogger) {
        return new a(this.f42820a.h1(socketAddress, aVar, channelLogger), aVar.a());
    }

    @Override // io.grpc.internal.s
    public ScheduledExecutorService o0() {
        return this.f42820a.o0();
    }
}
