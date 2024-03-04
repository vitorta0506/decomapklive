package io.grpc.internal;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.g;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.p;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
final class l2 extends io.grpc.d {

    /* renamed from: g  reason: collision with root package name */
    static final Status f42864g;

    /* renamed from: h  reason: collision with root package name */
    static final Status f42865h;

    /* renamed from: i  reason: collision with root package name */
    private static final g0 f42866i;

    /* renamed from: a  reason: collision with root package name */
    private final y0 f42867a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f42868b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f42869c;

    /* renamed from: d  reason: collision with root package name */
    private final m f42870d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference<io.grpc.d0> f42871e;

    /* renamed from: f  reason: collision with root package name */
    private final p.e f42872f = new a();

    /* loaded from: classes5.dex */
    class a implements p.e {
        a() {
        }

        @Override // io.grpc.internal.p.e
        public q a(MethodDescriptor<?, ?> methodDescriptor, io.grpc.c cVar, io.grpc.s0 s0Var, io.grpc.r rVar) {
            r P = l2.this.f42867a.P();
            if (P == null) {
                P = l2.f42866i;
            }
            io.grpc.k[] g10 = GrpcUtil.g(cVar, s0Var, 0, false);
            io.grpc.r c10 = rVar.c();
            try {
                return P.e(methodDescriptor, s0Var, cVar, g10);
            } finally {
                rVar.k(c10);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [RequestT, ResponseT] */
    /* loaded from: classes5.dex */
    class b<RequestT, ResponseT> extends io.grpc.g<RequestT, ResponseT> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Executor f42874a;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ g.a f42876a;

            a(g.a aVar) {
                this.f42876a = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f42876a.a(l2.f42865h, new io.grpc.s0());
            }
        }

        b(Executor executor) {
            this.f42874a = executor;
        }

        @Override // io.grpc.g
        public void a(String str, Throwable th2) {
        }

        @Override // io.grpc.g
        public void b() {
        }

        @Override // io.grpc.g
        public void c(int i9) {
        }

        @Override // io.grpc.g
        public void d(RequestT requestt) {
        }

        @Override // io.grpc.g
        public void e(g.a<ResponseT> aVar, io.grpc.s0 s0Var) {
            this.f42874a.execute(new a(aVar));
        }
    }

    static {
        Status status = Status.f41719u;
        Status r10 = status.r("Subchannel is NOT READY");
        f42864g = r10;
        f42865h = status.r("wait-for-ready RPC is not supported on Subchannel.asChannel()");
        f42866i = new g0(r10, ClientStreamListener.RpcProgress.MISCARRIED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l2(y0 y0Var, Executor executor, ScheduledExecutorService scheduledExecutorService, m mVar, AtomicReference<io.grpc.d0> atomicReference) {
        this.f42867a = (y0) com.google.common.base.o.t(y0Var, "subchannel");
        this.f42868b = (Executor) com.google.common.base.o.t(executor, "executor");
        this.f42869c = (ScheduledExecutorService) com.google.common.base.o.t(scheduledExecutorService, "deadlineCancellationExecutor");
        this.f42870d = (m) com.google.common.base.o.t(mVar, "callsTracer");
        this.f42871e = (AtomicReference) com.google.common.base.o.t(atomicReference, "configSelector");
    }

    @Override // io.grpc.d
    public String a() {
        return this.f42867a.O();
    }

    @Override // io.grpc.d
    public <RequestT, ResponseT> io.grpc.g<RequestT, ResponseT> i(MethodDescriptor<RequestT, ResponseT> methodDescriptor, io.grpc.c cVar) {
        Executor e10 = cVar.e() == null ? this.f42868b : cVar.e();
        if (cVar.j()) {
            return new b(e10);
        }
        return new p(methodDescriptor, e10, cVar.q(GrpcUtil.f42359r, Boolean.TRUE), this.f42872f, this.f42869c, this.f42870d, this.f42871e.get());
    }
}
