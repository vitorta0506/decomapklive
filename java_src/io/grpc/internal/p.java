package io.grpc.internal;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.g;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.j1;
import io.grpc.internal.k2;
import io.grpc.l;
import io.grpc.r;
import io.grpc.s0;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class p<ReqT, RespT> extends io.grpc.g<ReqT, RespT> {

    /* renamed from: t  reason: collision with root package name */
    private static final Logger f42930t = Logger.getLogger(p.class.getName());

    /* renamed from: u  reason: collision with root package name */
    private static final byte[] f42931u = "gzip".getBytes(Charset.forName("US-ASCII"));

    /* renamed from: a  reason: collision with root package name */
    private final MethodDescriptor<ReqT, RespT> f42932a;

    /* renamed from: b  reason: collision with root package name */
    private final qh.d f42933b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f42934c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f42935d;

    /* renamed from: e  reason: collision with root package name */
    private final m f42936e;

    /* renamed from: f  reason: collision with root package name */
    private final io.grpc.r f42937f;

    /* renamed from: g  reason: collision with root package name */
    private volatile ScheduledFuture<?> f42938g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f42939h;

    /* renamed from: i  reason: collision with root package name */
    private io.grpc.c f42940i;

    /* renamed from: j  reason: collision with root package name */
    private q f42941j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f42942k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f42943l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f42944m;

    /* renamed from: n  reason: collision with root package name */
    private final e f42945n;

    /* renamed from: p  reason: collision with root package name */
    private final ScheduledExecutorService f42947p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f42948q;

    /* renamed from: o  reason: collision with root package name */
    private final p<ReqT, RespT>.f f42946o = new f();

    /* renamed from: r  reason: collision with root package name */
    private io.grpc.v f42949r = io.grpc.v.c();

    /* renamed from: s  reason: collision with root package name */
    private io.grpc.p f42950s = io.grpc.p.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends x {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g.a f42951b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(g.a aVar) {
            super(p.this.f42937f);
            this.f42951b = aVar;
        }

        @Override // io.grpc.internal.x
        public void b() {
            p pVar = p.this;
            pVar.r(this.f42951b, io.grpc.s.a(pVar.f42937f), new io.grpc.s0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c extends x {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g.a f42953b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f42954c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(g.a aVar, String str) {
            super(p.this.f42937f);
            this.f42953b = aVar;
            this.f42954c = str;
        }

        @Override // io.grpc.internal.x
        public void b() {
            p.this.r(this.f42953b, Status.f41718t.r(String.format("Unable to find compressor by name %s", this.f42954c)), new io.grpc.s0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class d implements ClientStreamListener {

        /* renamed from: a  reason: collision with root package name */
        private final g.a<RespT> f42956a;

        /* renamed from: b  reason: collision with root package name */
        private Status f42957b;

        /* loaded from: classes5.dex */
        final class a extends x {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ qh.b f42959b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f42960c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(qh.b bVar, io.grpc.s0 s0Var) {
                super(p.this.f42937f);
                this.f42959b = bVar;
                this.f42960c = s0Var;
            }

            private void c() {
                if (d.this.f42957b != null) {
                    return;
                }
                try {
                    d.this.f42956a.b(this.f42960c);
                } catch (Throwable th2) {
                    d.this.i(Status.f41705g.q(th2).r("Failed to read headers"));
                }
            }

            @Override // io.grpc.internal.x
            public void b() {
                qh.c.h("ClientCall$Listener.headersRead", p.this.f42933b);
                qh.c.e(this.f42959b);
                try {
                    c();
                } finally {
                    qh.c.j("ClientCall$Listener.headersRead", p.this.f42933b);
                }
            }
        }

        /* loaded from: classes5.dex */
        final class b extends x {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ qh.b f42962b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ k2.a f42963c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(qh.b bVar, k2.a aVar) {
                super(p.this.f42937f);
                this.f42962b = bVar;
                this.f42963c = aVar;
            }

            private void c() {
                if (d.this.f42957b != null) {
                    GrpcUtil.e(this.f42963c);
                    return;
                }
                while (true) {
                    try {
                        InputStream next = this.f42963c.next();
                        if (next == null) {
                            return;
                        }
                        d.this.f42956a.c(p.this.f42932a.j(next));
                        next.close();
                    } catch (Throwable th2) {
                        GrpcUtil.e(this.f42963c);
                        d.this.i(Status.f41705g.q(th2).r("Failed to read message."));
                        return;
                    }
                }
            }

            @Override // io.grpc.internal.x
            public void b() {
                qh.c.h("ClientCall$Listener.messagesAvailable", p.this.f42933b);
                qh.c.e(this.f42962b);
                try {
                    c();
                } finally {
                    qh.c.j("ClientCall$Listener.messagesAvailable", p.this.f42933b);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public final class c extends x {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ qh.b f42965b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Status f42966c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f42967d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(qh.b bVar, Status status, io.grpc.s0 s0Var) {
                super(p.this.f42937f);
                this.f42965b = bVar;
                this.f42966c = status;
                this.f42967d = s0Var;
            }

            private void c() {
                Status status = this.f42966c;
                io.grpc.s0 s0Var = this.f42967d;
                if (d.this.f42957b != null) {
                    status = d.this.f42957b;
                    s0Var = new io.grpc.s0();
                }
                p.this.f42942k = true;
                try {
                    d dVar = d.this;
                    p.this.r(dVar.f42956a, status, s0Var);
                } finally {
                    p.this.x();
                    p.this.f42936e.a(status.p());
                }
            }

            @Override // io.grpc.internal.x
            public void b() {
                qh.c.h("ClientCall$Listener.onClose", p.this.f42933b);
                qh.c.e(this.f42965b);
                try {
                    c();
                } finally {
                    qh.c.j("ClientCall$Listener.onClose", p.this.f42933b);
                }
            }
        }

        /* renamed from: io.grpc.internal.p$d$d  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        final class C0471d extends x {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ qh.b f42969b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0471d(qh.b bVar) {
                super(p.this.f42937f);
                this.f42969b = bVar;
            }

            private void c() {
                if (d.this.f42957b != null) {
                    return;
                }
                try {
                    d.this.f42956a.d();
                } catch (Throwable th2) {
                    d.this.i(Status.f41705g.q(th2).r("Failed to call onReady."));
                }
            }

            @Override // io.grpc.internal.x
            public void b() {
                qh.c.h("ClientCall$Listener.onReady", p.this.f42933b);
                qh.c.e(this.f42969b);
                try {
                    c();
                } finally {
                    qh.c.j("ClientCall$Listener.onReady", p.this.f42933b);
                }
            }
        }

        public d(g.a<RespT> aVar) {
            this.f42956a = (g.a) com.google.common.base.o.t(aVar, "observer");
        }

        private void h(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
            io.grpc.t s10 = p.this.s();
            if (status.n() == Status.Code.CANCELLED && s10 != null && s10.g()) {
                x0 x0Var = new x0();
                p.this.f42941j.l(x0Var);
                Status status2 = Status.f41708j;
                status = status2.f("ClientCall was cancelled at or after deadline. " + x0Var);
                s0Var = new io.grpc.s0();
            }
            p.this.f42934c.execute(new c(qh.c.f(), status, s0Var));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(Status status) {
            this.f42957b = status;
            p.this.f42941j.e(status);
        }

        @Override // io.grpc.internal.k2
        public void a(k2.a aVar) {
            qh.c.h("ClientStreamListener.messagesAvailable", p.this.f42933b);
            try {
                p.this.f42934c.execute(new b(qh.c.f(), aVar));
            } finally {
                qh.c.j("ClientStreamListener.messagesAvailable", p.this.f42933b);
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void b(io.grpc.s0 s0Var) {
            qh.c.h("ClientStreamListener.headersRead", p.this.f42933b);
            try {
                p.this.f42934c.execute(new a(qh.c.f(), s0Var));
            } finally {
                qh.c.j("ClientStreamListener.headersRead", p.this.f42933b);
            }
        }

        @Override // io.grpc.internal.k2
        public void c() {
            if (p.this.f42932a.f().clientSendsOneMessage()) {
                return;
            }
            qh.c.h("ClientStreamListener.onReady", p.this.f42933b);
            try {
                p.this.f42934c.execute(new C0471d(qh.c.f()));
            } finally {
                qh.c.j("ClientStreamListener.onReady", p.this.f42933b);
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void d(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
            qh.c.h("ClientStreamListener.closed", p.this.f42933b);
            try {
                h(status, rpcProgress, s0Var);
            } finally {
                qh.c.j("ClientStreamListener.closed", p.this.f42933b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface e {
        q a(MethodDescriptor<?, ?> methodDescriptor, io.grpc.c cVar, io.grpc.s0 s0Var, io.grpc.r rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class f implements r.b {
        private f() {
        }

        @Override // io.grpc.r.b
        public void a(io.grpc.r rVar) {
            p.this.f42941j.e(io.grpc.s.a(rVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final long f42972a;

        g(long j10) {
            this.f42972a = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            x0 x0Var = new x0();
            p.this.f42941j.l(x0Var);
            long abs = Math.abs(this.f42972a);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            long nanos = abs / timeUnit.toNanos(1L);
            long abs2 = Math.abs(this.f42972a) % timeUnit.toNanos(1L);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("deadline exceeded after ");
            if (this.f42972a < 0) {
                sb2.append('-');
            }
            sb2.append(nanos);
            sb2.append(String.format(Locale.US, ".%09d", Long.valueOf(abs2)));
            sb2.append("s. ");
            sb2.append(x0Var);
            p.this.f42941j.e(Status.f41708j.f(sb2.toString()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(MethodDescriptor<ReqT, RespT> methodDescriptor, Executor executor, io.grpc.c cVar, e eVar, ScheduledExecutorService scheduledExecutorService, m mVar, io.grpc.d0 d0Var) {
        this.f42932a = methodDescriptor;
        qh.d c10 = qh.c.c(methodDescriptor.c(), System.identityHashCode(this));
        this.f42933b = c10;
        boolean z10 = true;
        if (executor == com.google.common.util.concurrent.h0.a()) {
            this.f42934c = new c2();
            this.f42935d = true;
        } else {
            this.f42934c = new d2(executor);
            this.f42935d = false;
        }
        this.f42936e = mVar;
        this.f42937f = io.grpc.r.j();
        if (methodDescriptor.f() != MethodDescriptor.MethodType.UNARY && methodDescriptor.f() != MethodDescriptor.MethodType.SERVER_STREAMING) {
            z10 = false;
        }
        this.f42939h = z10;
        this.f42940i = cVar;
        this.f42945n = eVar;
        this.f42947p = scheduledExecutorService;
        qh.c.d("ClientCall.<init>", c10);
    }

    private ScheduledFuture<?> C(io.grpc.t tVar) {
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        long i9 = tVar.i(timeUnit);
        return this.f42947p.schedule(new d1(new g(i9)), i9, timeUnit);
    }

    private void D(g.a<RespT> aVar, io.grpc.s0 s0Var) {
        io.grpc.o oVar;
        boolean z10 = true;
        com.google.common.base.o.A(this.f42941j == null, "Already started");
        com.google.common.base.o.A(!this.f42943l, "call was cancelled");
        com.google.common.base.o.t(aVar, "observer");
        com.google.common.base.o.t(s0Var, "headers");
        if (this.f42937f.p()) {
            this.f42941j = o1.f42929a;
            this.f42934c.execute(new b(aVar));
            return;
        }
        p();
        String b10 = this.f42940i.b();
        if (b10 != null) {
            oVar = this.f42950s.b(b10);
            if (oVar == null) {
                this.f42941j = o1.f42929a;
                this.f42934c.execute(new c(aVar, b10));
                return;
            }
        } else {
            oVar = l.b.f43352a;
        }
        w(s0Var, this.f42949r, oVar, this.f42948q);
        io.grpc.t s10 = s();
        if (!((s10 == null || !s10.g()) ? false : false)) {
            u(s10, this.f42937f.o(), this.f42940i.d());
            this.f42941j = this.f42945n.a(this.f42932a, this.f42940i, s0Var, this.f42937f);
        } else {
            io.grpc.k[] g10 = GrpcUtil.g(this.f42940i, s0Var, 0, false);
            Status status = Status.f41708j;
            this.f42941j = new f0(status.r("ClientCall started after deadline exceeded: " + s10), g10);
        }
        if (this.f42935d) {
            this.f42941j.i();
        }
        if (this.f42940i.a() != null) {
            this.f42941j.k(this.f42940i.a());
        }
        if (this.f42940i.f() != null) {
            this.f42941j.c(this.f42940i.f().intValue());
        }
        if (this.f42940i.g() != null) {
            this.f42941j.d(this.f42940i.g().intValue());
        }
        if (s10 != null) {
            this.f42941j.n(s10);
        }
        this.f42941j.a(oVar);
        boolean z11 = this.f42948q;
        if (z11) {
            this.f42941j.j(z11);
        }
        this.f42941j.g(this.f42949r);
        this.f42936e.b();
        this.f42941j.o(new d(aVar));
        this.f42937f.a(this.f42946o, com.google.common.util.concurrent.h0.a());
        if (s10 != null && !s10.equals(this.f42937f.o()) && this.f42947p != null) {
            this.f42938g = C(s10);
        }
        if (this.f42942k) {
            x();
        }
    }

    private void p() {
        j1.b bVar = (j1.b) this.f42940i.h(j1.b.f42812g);
        if (bVar == null) {
            return;
        }
        Long l10 = bVar.f42813a;
        if (l10 != null) {
            io.grpc.t a10 = io.grpc.t.a(l10.longValue(), TimeUnit.NANOSECONDS);
            io.grpc.t d10 = this.f42940i.d();
            if (d10 == null || a10.compareTo(d10) < 0) {
                this.f42940i = this.f42940i.l(a10);
            }
        }
        Boolean bool = bVar.f42814b;
        if (bool != null) {
            this.f42940i = bool.booleanValue() ? this.f42940i.s() : this.f42940i.t();
        }
        if (bVar.f42815c != null) {
            Integer f10 = this.f42940i.f();
            if (f10 != null) {
                this.f42940i = this.f42940i.o(Math.min(f10.intValue(), bVar.f42815c.intValue()));
            } else {
                this.f42940i = this.f42940i.o(bVar.f42815c.intValue());
            }
        }
        if (bVar.f42816d != null) {
            Integer g10 = this.f42940i.g();
            if (g10 != null) {
                this.f42940i = this.f42940i.p(Math.min(g10.intValue(), bVar.f42816d.intValue()));
            } else {
                this.f42940i = this.f42940i.p(bVar.f42816d.intValue());
            }
        }
    }

    private void q(String str, Throwable th2) {
        Status r10;
        if (str == null && th2 == null) {
            th2 = new CancellationException("Cancelled without a message or cause");
            f42930t.log(Level.WARNING, "Cancelling without a message or cause is suboptimal", th2);
        }
        if (this.f42943l) {
            return;
        }
        this.f42943l = true;
        try {
            if (this.f42941j != null) {
                Status status = Status.f41705g;
                if (str != null) {
                    r10 = status.r(str);
                } else {
                    r10 = status.r("Call cancelled without message");
                }
                if (th2 != null) {
                    r10 = r10.q(th2);
                }
                this.f42941j.e(r10);
            }
        } finally {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(g.a<RespT> aVar, Status status, io.grpc.s0 s0Var) {
        aVar.a(status, s0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public io.grpc.t s() {
        return v(this.f42940i.d(), this.f42937f.o());
    }

    private void t() {
        com.google.common.base.o.A(this.f42941j != null, "Not started");
        com.google.common.base.o.A(!this.f42943l, "call was cancelled");
        com.google.common.base.o.A(!this.f42944m, "call already half-closed");
        this.f42944m = true;
        this.f42941j.m();
    }

    private static void u(io.grpc.t tVar, io.grpc.t tVar2, io.grpc.t tVar3) {
        Logger logger = f42930t;
        if (logger.isLoggable(Level.FINE) && tVar != null && tVar.equals(tVar2)) {
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            StringBuilder sb2 = new StringBuilder(String.format("Call timeout set to '%d' ns, due to context deadline.", Long.valueOf(Math.max(0L, tVar.i(timeUnit)))));
            if (tVar3 == null) {
                sb2.append(" Explicit call timeout was not set.");
            } else {
                sb2.append(String.format(" Explicit call timeout was '%d' ns.", Long.valueOf(tVar3.i(timeUnit))));
            }
            logger.fine(sb2.toString());
        }
    }

    private static io.grpc.t v(io.grpc.t tVar, io.grpc.t tVar2) {
        return tVar == null ? tVar2 : tVar2 == null ? tVar : tVar.h(tVar2);
    }

    static void w(io.grpc.s0 s0Var, io.grpc.v vVar, io.grpc.o oVar, boolean z10) {
        s0Var.i(GrpcUtil.f42349h);
        s0.i<String> iVar = GrpcUtil.f42345d;
        s0Var.i(iVar);
        if (oVar != l.b.f43352a) {
            s0Var.t(iVar, oVar.a());
        }
        s0.i<byte[]> iVar2 = GrpcUtil.f42346e;
        s0Var.i(iVar2);
        byte[] a10 = io.grpc.e0.a(vVar);
        if (a10.length != 0) {
            s0Var.t(iVar2, a10);
        }
        s0Var.i(GrpcUtil.f42347f);
        s0.i<byte[]> iVar3 = GrpcUtil.f42348g;
        s0Var.i(iVar3);
        if (z10) {
            s0Var.t(iVar3, f42931u);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        this.f42937f.r(this.f42946o);
        ScheduledFuture<?> scheduledFuture = this.f42938g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }

    private void y(ReqT reqt) {
        com.google.common.base.o.A(this.f42941j != null, "Not started");
        com.google.common.base.o.A(!this.f42943l, "call was cancelled");
        com.google.common.base.o.A(!this.f42944m, "call was half-closed");
        try {
            q qVar = this.f42941j;
            if (qVar instanceof z1) {
                ((z1) qVar).j0(reqt);
            } else {
                qVar.h(this.f42932a.l(reqt));
            }
            if (this.f42939h) {
                return;
            }
            this.f42941j.flush();
        } catch (Error e10) {
            this.f42941j.e(Status.f41705g.r("Client sendMessage() failed with Error"));
            throw e10;
        } catch (RuntimeException e11) {
            this.f42941j.e(Status.f41705g.q(e11).r("Failed to stream message"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p<ReqT, RespT> A(io.grpc.v vVar) {
        this.f42949r = vVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p<ReqT, RespT> B(boolean z10) {
        this.f42948q = z10;
        return this;
    }

    @Override // io.grpc.g
    public void a(String str, Throwable th2) {
        qh.c.h("ClientCall.cancel", this.f42933b);
        try {
            q(str, th2);
        } finally {
            qh.c.j("ClientCall.cancel", this.f42933b);
        }
    }

    @Override // io.grpc.g
    public void b() {
        qh.c.h("ClientCall.halfClose", this.f42933b);
        try {
            t();
        } finally {
            qh.c.j("ClientCall.halfClose", this.f42933b);
        }
    }

    @Override // io.grpc.g
    public void c(int i9) {
        qh.c.h("ClientCall.request", this.f42933b);
        try {
            boolean z10 = true;
            com.google.common.base.o.A(this.f42941j != null, "Not started");
            if (i9 < 0) {
                z10 = false;
            }
            com.google.common.base.o.e(z10, "Number requested must be non-negative");
            this.f42941j.b(i9);
        } finally {
            qh.c.j("ClientCall.request", this.f42933b);
        }
    }

    @Override // io.grpc.g
    public void d(ReqT reqt) {
        qh.c.h("ClientCall.sendMessage", this.f42933b);
        try {
            y(reqt);
        } finally {
            qh.c.j("ClientCall.sendMessage", this.f42933b);
        }
    }

    @Override // io.grpc.g
    public void e(g.a<RespT> aVar, io.grpc.s0 s0Var) {
        qh.c.h("ClientCall.start", this.f42933b);
        try {
            D(aVar, s0Var);
        } finally {
            qh.c.j("ClientCall.start", this.f42933b);
        }
    }

    public String toString() {
        return com.google.common.base.j.c(this).d(PushConstants.MZ_PUSH_MESSAGE_METHOD, this.f42932a).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p<ReqT, RespT> z(io.grpc.p pVar) {
        this.f42950s = pVar;
        return this;
    }
}
