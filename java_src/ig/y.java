package ig;

import ig.b;
import ig.m0;
import ig.z;
import io.grpc.ChannelLogger;
import io.grpc.Status;
import io.grpc.StatusException;
import io.grpc.StatusRuntimeException;
import io.grpc.c0;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.c1;
import io.grpc.internal.p2;
import io.grpc.internal.r;
import io.grpc.internal.r0;
import io.grpc.internal.v0;
import io.grpc.internal.w0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2FrameLogger;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.StreamBufferingEncoder;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.p0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.t0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.x0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.y;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.z0;
import io.grpc.netty.shaded.io.netty.handler.logging.LogLevel;
import io.grpc.s0;
import java.nio.channels.ClosedChannelException;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class y extends ig.b {
    private static final Logger Q = Logger.getLogger(y.class.getName());
    static final Object R = new Object();

    /* renamed from: a1  reason: collision with root package name */
    private static final Status f41322a1 = Status.f41719u.r("Stream IDs have been exhausted");
    private final y.c C;
    private final ig.d D;
    private final c1 E;
    private final com.google.common.base.w<com.google.common.base.u> F;
    private final p2 G;
    private final io.grpc.a H;
    private final String I;
    private final w0<Http2Stream> J;
    private o0 K;
    private v0 L;
    private io.grpc.a M;
    private c0.c N;
    private Status O;
    private Status P;

    /* loaded from: classes5.dex */
    class a extends w0<Http2Stream> {
        a() {
        }

        @Override // io.grpc.internal.w0
        protected void b() {
            y.this.D.d(true);
        }

        @Override // io.grpc.internal.w0
        protected void c() {
            y.this.D.d(false);
        }
    }

    /* loaded from: classes5.dex */
    class b extends io.grpc.netty.shaded.io.netty.handler.codec.http2.z {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f41324a;

        b(Runnable runnable) {
            this.f41324a = runnable;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void e(int i9, long j10, kg.j jVar) {
            byte[] r10 = kg.n.r(jVar);
            y.this.d1(j10, r10);
            if (j10 == Http2Error.ENHANCE_YOUR_CALM.code()) {
                String str = new String(r10, io.grpc.netty.shaded.io.netty.util.h.f45016d);
                y.Q.log(Level.WARNING, "Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: {0}", str);
                if ("too_many_pings".equals(str)) {
                    this.f41324a.run();
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void f(Http2Stream http2Stream) {
            y.this.J.e(http2Stream, false);
            if (y.this.f0().n() != 0 || y.this.E == null) {
                return;
            }
            y.this.E.p();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void g(Http2Stream http2Stream) {
            if (y.this.f0().n() != 1 || y.this.E == null) {
                return;
            }
            y.this.E.o();
        }
    }

    /* loaded from: classes5.dex */
    class c implements z0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Status f41326a;

        c(Status status) {
            this.f41326a = status;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z0
        public boolean a(Http2Stream http2Stream) throws Http2Exception {
            z.c W0 = y.this.W0(http2Stream);
            if (W0 != null) {
                W0.P(this.f41326a, false, new s0());
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41328a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ z.c f41329b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f41330c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.y f41331d;

        d(int i9, z.c cVar, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f41328a = i9;
            this.f41329b = cVar;
            this.f41330c = z10;
            this.f41331d = yVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            if (iVar.p0()) {
                Http2Stream c10 = y.this.f0().c(this.f41328a);
                if (c10 != null) {
                    this.f41329b.l().c();
                    c10.d(y.this.C, this.f41329b);
                    if (this.f41330c) {
                        y.this.J.e(c10, true);
                    }
                    this.f41329b.b0(c10);
                }
                this.f41331d.m();
                return;
            }
            Throwable L = iVar.L();
            if (L instanceof StreamBufferingEncoder.Http2GoAwayException) {
                StreamBufferingEncoder.Http2GoAwayException http2GoAwayException = (StreamBufferingEncoder.Http2GoAwayException) L;
                Status r12 = y.this.r1(Status.Code.UNAVAILABLE, "GOAWAY closed buffered stream", http2GoAwayException.errorCode(), http2GoAwayException.debugData());
                StatusRuntimeException d10 = r12.d();
                this.f41329b.O(r12, ClientStreamListener.RpcProgress.MISCARRIED, true, new s0());
                L = d10;
            } else if (L instanceof StreamBufferingEncoder.Http2ChannelClosedException) {
                Status a10 = y.this.D.a();
                if (a10 == null) {
                    a10 = Status.f41719u.q(L).r("Connection closed while stream is buffered");
                }
                this.f41329b.O(a10, ClientStreamListener.RpcProgress.MISCARRIED, true, new s0());
            }
            this.f41331d.u(L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v0 f41333a;

        e(v0 v0Var) {
            this.f41333a = v0Var;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            if (iVar.p0()) {
                y.this.G.b();
                return;
            }
            Throwable L = iVar.L();
            if ((L instanceof ClosedChannelException) && (L = y.this.D.b()) == null) {
                L = Status.f41706h.r("Ping failed but for unknown reason.").q(iVar.L()).c();
            }
            this.f41333a.f(L);
            if (y.this.L == this.f41333a) {
                y.this.L = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements z0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ig.h f41335a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f41336b;

        f(ig.h hVar, io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f41335a = hVar;
            this.f41336b = mVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z0
        public boolean a(Http2Stream http2Stream) throws Http2Exception {
            z.c W0 = y.this.W0(http2Stream);
            qh.d tag = W0 != null ? W0.tag() : qh.c.a();
            qh.c.h("NettyClientHandler.forcefulClose", tag);
            qh.c.e(this.f41335a.c());
            if (W0 != null) {
                try {
                    W0.P(this.f41335a.d(), true, new s0());
                    y.this.d(this.f41336b, http2Stream.G(), Http2Error.CANCEL.code(), this.f41336b.F());
                } finally {
                    qh.c.j("NettyClientHandler.forcefulClose", tag);
                }
            }
            http2Stream.close();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class g implements z0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41338a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f41339b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Status f41340c;

        g(int i9, boolean z10, Status status) {
            this.f41338a = i9;
            this.f41339b = z10;
            this.f41340c = status;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z0
        public boolean a(Http2Stream http2Stream) throws Http2Exception {
            ClientStreamListener.RpcProgress rpcProgress;
            if (http2Stream.G() > this.f41338a) {
                z.c W0 = y.this.W0(http2Stream);
                if (W0 != null) {
                    if (this.f41339b) {
                        rpcProgress = ClientStreamListener.RpcProgress.PROCESSED;
                    } else {
                        rpcProgress = ClientStreamListener.RpcProgress.REFUSED;
                    }
                    W0.O(this.f41340c, rpcProgress, false, new s0());
                }
                http2Stream.close();
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class i extends io.grpc.netty.shaded.io.netty.handler.codec.http2.c implements b.d {

        /* renamed from: b  reason: collision with root package name */
        private int f41344b;

        public i(io.grpc.netty.shaded.io.netty.handler.codec.http2.m0 m0Var) {
            super(m0Var);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
        public io.grpc.netty.shaded.io.netty.channel.i B(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f41344b = 0;
            return super.B(mVar, i9, http2Headers, i10, s10, z10, i11, z11, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.e0
        public io.grpc.netty.shaded.io.netty.channel.i b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            if (jVar.j1()) {
                this.f41344b = 0;
            }
            return super.b(mVar, i9, jVar, i10, z10, yVar);
        }

        @Override // ig.b.d
        public boolean c() {
            return this.f41344b < 2;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
        public io.grpc.netty.shaded.io.netty.channel.i i1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f41344b = 0;
            return super.i1(mVar, i9, http2Headers, i10, z10, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
        public io.grpc.netty.shaded.io.netty.channel.i k0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f41344b = 0;
            return super.k0(mVar, i9, i10, yVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
        public io.grpc.netty.shaded.io.netty.channel.i s0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            if (!z10) {
                this.f41344b++;
            }
            return super.s0(mVar, z10, j10, yVar);
        }
    }

    private y(io.grpc.netty.shaded.io.netty.handler.codec.http2.a0 a0Var, io.grpc.netty.shaded.io.netty.handler.codec.http2.b0 b0Var, x0 x0Var, ChannelLogger channelLogger, ig.d dVar, c1 c1Var, com.google.common.base.w<com.google.common.base.u> wVar, Runnable runnable, p2 p2Var, io.grpc.a aVar, String str, boolean z10, b.d dVar2) {
        super(null, a0Var, b0Var, x0Var, channelLogger, z10, dVar2);
        this.J = new a();
        this.D = dVar;
        this.E = c1Var;
        this.F = wVar;
        this.G = (p2) com.google.common.base.o.s(p2Var);
        this.H = aVar;
        this.I = str;
        this.M = io.grpc.a.c().d(r0.f43016b, aVar).a();
        g0().S(new h(this, null));
        io.grpc.netty.shaded.io.netty.handler.codec.http2.y connection = b0Var.connection();
        this.C = connection.a();
        connection.g(new b(runnable));
    }

    private void U0(Throwable th2) {
        v0 v0Var = this.L;
        if (v0Var != null) {
            v0Var.f(th2);
            this.L = null;
        }
    }

    private void V0(io.grpc.netty.shaded.io.netty.channel.m mVar, ig.c cVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        z.c f10 = cVar.f();
        qh.c.h("NettyClientHandler.cancelStream", f10.tag());
        qh.c.e(cVar.c());
        try {
            Status d10 = cVar.d();
            if (d10 != null) {
                f10.P(d10, true, new s0());
            }
            if (!cVar.f().a0()) {
                i0().F1(mVar, f10.G(), Http2Error.CANCEL.code(), yVar);
            } else {
                yVar.m();
            }
        } finally {
            qh.c.j("NettyClientHandler.cancelStream", f10.tag());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public z.c W0(Http2Stream http2Stream) {
        if (http2Stream == null) {
            return null;
        }
        return (z.c) http2Stream.a(this.C);
    }

    private void X0(ig.e eVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        if (this.D.b() != null) {
            eVar.h().d0();
            eVar.h().O(this.D.a(), ClientStreamListener.RpcProgress.MISCARRIED, true, new s0());
            yVar.u(this.D.b());
            return;
        }
        try {
            int f12 = f1();
            if (f0().o()) {
                Status status = this.O;
                int A = f0().f().A();
                int t10 = f0().f().t();
                if (status == null) {
                    status = Status.f41718t.r("Failed due to abrupt GOAWAY, but can't find GOAWAY details");
                } else if (f12 > t10) {
                    status = status.f("stream id: " + f12 + ", GOAWAY Last-Stream-ID:" + t10);
                } else if (f0().f().n() == A) {
                    status = status.f("At MAX_CONCURRENT_STREAMS limit. limit: " + A);
                }
                if (f12 > t10 || f0().f().n() == A) {
                    eVar.h().d0();
                    eVar.h().O(status, ClientStreamListener.RpcProgress.MISCARRIED, true, new s0());
                    yVar.u(status.d());
                    return;
                }
            }
            z.c h10 = eVar.h();
            Http2Headers d10 = eVar.d();
            h10.c0(f12);
            qh.c.h("NettyClientHandler.createStream", h10.tag());
            qh.c.e(eVar.c());
            try {
                Y0(f12, h10, d10, eVar.f(), eVar.g(), yVar);
            } finally {
                qh.c.j("NettyClientHandler.createStream", h10.tag());
            }
        } catch (StatusException e10) {
            eVar.h().d0();
            yVar.u(e10);
            if (f0().e()) {
                return;
            }
            Q.fine("Stream IDs have been exhausted for this connection. Initiating graceful shutdown of the connection.");
            this.D.f(e10.getStatus());
            l(D0(), D0().F());
        }
    }

    private void Y0(int i9, z.c cVar, Http2Headers http2Headers, boolean z10, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        i0().i1(D0(), i9, http2Headers, 0, z10, D0().F()).c((ug.r<? extends ug.q<? super Void>>) new d(i9, cVar, z11, yVar));
    }

    private void Z0(io.grpc.netty.shaded.io.netty.channel.m mVar, ig.h hVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        f0().l(new f(hVar, mVar));
        l(mVar, yVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d1(long j10, byte[] bArr) {
        Status.Code code = Status.Code.UNAVAILABLE;
        Status r12 = r1(code, "GOAWAY shut down transport", j10, bArr);
        this.D.c(r12);
        this.O = r1(code, "Abrupt GOAWAY closed unsent stream", j10, bArr);
        Status r13 = r1(null, "Abrupt GOAWAY closed sent stream", j10, bArr);
        boolean z10 = j10 != Http2Error.NO_ERROR.code();
        this.K.b();
        if (this.D.f(r12)) {
            this.P = r1(null, "Connection closed after GOAWAY", j10, bArr);
        }
        try {
            f0().l(new g(f0().f().t(), z10, r13));
        } catch (Http2Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    private void e1(io.grpc.netty.shaded.io.netty.channel.m mVar, ig.i iVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        this.D.f(iVar.d());
        n(mVar);
        l(mVar, yVar);
    }

    private int f1() throws StatusException {
        int y10 = f0().f().y();
        if (y10 >= 0) {
            return y10;
        }
        Q.fine("Stream IDs have been exhausted for this connection. Initiating graceful shutdown of the connection.");
        throw f41322a1.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y g1(ig.d dVar, c1 c1Var, boolean z10, int i9, int i10, com.google.common.base.w<com.google.common.base.u> wVar, Runnable runnable, p2 p2Var, io.grpc.a aVar, String str, ChannelLogger channelLogger) {
        com.google.common.base.o.e(i10 > 0, "maxHeaderListSize must be positive");
        io.grpc.netty.shaded.io.netty.handler.codec.http2.g gVar = new io.grpc.netty.shaded.io.netty.handler.codec.http2.g(new k(i10));
        io.grpc.netty.shaded.io.netty.handler.codec.http2.h hVar = new io.grpc.netty.shaded.io.netty.handler.codec.http2.h();
        io.grpc.netty.shaded.io.netty.handler.codec.http2.d dVar2 = new io.grpc.netty.shaded.io.netty.handler.codec.http2.d(false);
        io.grpc.netty.shaded.io.netty.handler.codec.http2.c1 c1Var2 = new io.grpc.netty.shaded.io.netty.handler.codec.http2.c1(dVar2);
        c1Var2.j(16384);
        dVar2.b().o(new io.grpc.netty.shaded.io.netty.handler.codec.http2.m(dVar2, c1Var2));
        return h1(dVar2, gVar, hVar, dVar, c1Var, z10, i9, i10, wVar, runnable, p2Var, aVar, str, channelLogger);
    }

    static y h1(io.grpc.netty.shaded.io.netty.handler.codec.http2.y yVar, io.grpc.netty.shaded.io.netty.handler.codec.http2.j0 j0Var, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0 m0Var, ig.d dVar, c1 c1Var, boolean z10, int i9, int i10, com.google.common.base.w<com.google.common.base.u> wVar, Runnable runnable, p2 p2Var, io.grpc.a aVar, String str, ChannelLogger channelLogger) {
        com.google.common.base.o.t(yVar, "connection");
        com.google.common.base.o.t(j0Var, "frameReader");
        com.google.common.base.o.t(dVar, "lifecycleManager");
        com.google.common.base.o.e(i9 > 0, "flowControlWindow must be positive");
        com.google.common.base.o.e(i10 > 0, "maxHeaderListSize must be positive");
        com.google.common.base.o.t(wVar, "stopwatchFactory");
        com.google.common.base.o.t(runnable, "tooManyPingsRunnable");
        com.google.common.base.o.t(aVar, "eagAttributes");
        com.google.common.base.o.t(str, "authority");
        Http2FrameLogger http2FrameLogger = new Http2FrameLogger(LogLevel.DEBUG, y.class);
        p0 p0Var = new p0(j0Var, http2FrameLogger);
        i iVar = new i(new t0(m0Var, http2FrameLogger));
        StreamBufferingEncoder streamBufferingEncoder = new StreamBufferingEncoder(new io.grpc.netty.shaded.io.netty.handler.codec.http2.f(yVar, iVar));
        yVar.f().o(new io.grpc.netty.shaded.io.netty.handler.codec.http2.l(yVar, 0.5f, true));
        io.grpc.netty.shaded.io.netty.handler.codec.http2.e eVar = new io.grpc.netty.shaded.io.netty.handler.codec.http2.e(yVar, streamBufferingEncoder, p0Var);
        p2Var.g(new m0.g(yVar));
        x0 x0Var = new x0();
        x0Var.I(false);
        x0Var.A(i9);
        x0Var.C(0L);
        x0Var.G(i10);
        return new y(eVar, streamBufferingEncoder, x0Var, channelLogger, dVar, c1Var, wVar, runnable, p2Var, aVar, str, z10, iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i1(int i9, kg.j jVar, int i10, boolean z10) {
        E0().d(jVar.P1(), i10);
        z.c W0 = W0(l1(i9));
        qh.c.d("NettyClientHandler.onDataRead", W0.tag());
        W0.f0(jVar, z10);
        c1 c1Var = this.E;
        if (c1Var != null) {
            c1Var.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j1(int i9, Http2Headers http2Headers, boolean z10) {
        if (i9 != 1) {
            z.c W0 = W0(l1(i9));
            qh.c.d("NettyClientHandler.onHeadersRead", W0.tag());
            W0.g0(http2Headers, z10);
        }
        c1 c1Var = this.E;
        if (c1Var != null) {
            c1Var.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1(int i9, long j10) {
        z.c W0 = W0(f0().c(i9));
        if (W0 != null) {
            qh.c.d("NettyClientHandler.onRstStreamRead", W0.tag());
            W0.O(r1(null, "RST_STREAM closed stream", j10, null), j10 == Http2Error.REFUSED_STREAM.code() ? ClientStreamListener.RpcProgress.REFUSED : ClientStreamListener.RpcProgress.PROCESSED, false, new s0());
            c1 c1Var = this.E;
            if (c1Var != null) {
                c1Var.n();
            }
        }
    }

    private Http2Stream l1(int i9) {
        Http2Stream c10 = f0().c(i9);
        if (c10 != null) {
            return c10;
        }
        throw new AssertionError("Stream does not exist: " + i9);
    }

    private void n1(io.grpc.netty.shaded.io.netty.channel.m mVar, i0 i0Var, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        qh.c.h("NettyClientHandler.sendGrpcFrame", i0Var.n().tag());
        qh.c.e(i0Var.k());
        try {
            i0().b(mVar, i0Var.n().G(), i0Var.content(), 0, i0Var.j(), yVar);
        } finally {
            qh.c.j("NettyClientHandler.sendGrpcFrame", i0Var.n().tag());
        }
    }

    private void o1(io.grpc.netty.shaded.io.netty.channel.m mVar, j0 j0Var, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        qh.c.g("NettyClientHandler.sendPingFrame");
        qh.c.e(j0Var.c());
        try {
            p1(mVar, j0Var, yVar);
        } finally {
            qh.c.i("NettyClientHandler.sendPingFrame");
        }
    }

    private void p1(io.grpc.netty.shaded.io.netty.channel.m mVar, j0 j0Var, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        r.a d10 = j0Var.d();
        Executor f10 = j0Var.f();
        if (this.L != null) {
            yVar.m();
            this.L.a(d10, f10);
            return;
        }
        yVar.m();
        io.grpc.netty.shaded.io.netty.channel.y F = D0().F();
        com.google.common.base.u uVar = this.F.get();
        uVar.g();
        v0 v0Var = new v0(1111L, uVar);
        this.L = v0Var;
        v0Var.a(d10, f10);
        i0().s0(mVar, false, 1111L, F);
        mVar.flush();
        F.c((ug.r<? extends ug.q<? super Void>>) new e(this.L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Status r1(Status.Code code, String str, long j10, byte[] bArr) {
        String str2;
        Status statusForCode = GrpcUtil.Http2Error.statusForCode((int) j10);
        if (code == null) {
            code = statusForCode.n();
        }
        if (bArr == null || bArr.length <= 0) {
            str2 = "";
        } else {
            str2 = ", debug data: " + new String(bArr, io.grpc.netty.shaded.io.netty.util.h.f45016d);
        }
        return code.toStatus().r(str + ". " + statusForCode.o() + str2);
    }

    static void s1(io.grpc.netty.shaded.io.netty.channel.e eVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "channel");
        io.grpc.netty.shaded.io.netty.channel.m W = eVar.J().W(n0.class);
        if (W == null) {
            return;
        }
        ((n0) W.z()).w(W);
    }

    @Override // ig.j
    public void A0(io.grpc.a aVar, c0.c cVar) {
        this.M = this.M.d().e(aVar).a();
        this.N = cVar;
        super.A0(aVar, cVar);
        s1(D0().d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.a a1() {
        return this.M;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ig.d b1() {
        return this.D;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0 c1() {
        return this.K;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0, io.grpc.netty.shaded.io.netty.channel.t
    public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        if (obj instanceof ig.e) {
            X0((ig.e) obj, yVar);
        } else if (obj instanceof i0) {
            n1(mVar, (i0) obj, yVar);
        } else if (obj instanceof ig.c) {
            V0(mVar, (ig.c) obj, yVar);
        } else if (obj instanceof j0) {
            o1(mVar, (j0) obj, yVar);
        } else if (obj instanceof ig.i) {
            e1(mVar, (ig.i) obj, yVar);
        } else if (obj instanceof ig.h) {
            Z0(mVar, (ig.h) obj, yVar);
        } else if (obj == R) {
            mVar.c(kg.s0.f53902d, yVar);
        } else {
            throw new AssertionError("Write called for unexpected type: " + obj.getClass().getName());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0, io.grpc.netty.shaded.io.netty.channel.t
    public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        Q.fine("Network channel being closed by the application.");
        if (mVar.d().isActive()) {
            this.D.f(Status.f41719u.r("Transport closed for unknown reason"));
        }
        super.l(mVar, yVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m1(Http2Stream http2Stream, int i9) {
        try {
            g0().m().m(http2Stream, i9);
        } catch (Http2Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0
    protected boolean n0() {
        return super.n0() && ((StreamBufferingEncoder) i0()).p() == 0;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0
    protected void p0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, Throwable th2, Http2Exception http2Exception) {
        Q.log(Level.FINE, "Caught a connection error", th2);
        this.D.f(m0.s(th2));
        super.p0(mVar, z10, th2, http2Exception);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q1(io.grpc.netty.shaded.io.netty.channel.e eVar) {
        this.K = new o0(eVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0
    protected void r0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, Throwable th2, Http2Exception.StreamException streamException) {
        z.c W0 = W0(f0().c(streamException.streamId()));
        if (W0 != null) {
            W0.P(m0.s(th2), false, new s0());
        } else {
            Logger logger = Q;
            Level level = Level.FINE;
            logger.log(level, "Stream error for unknown stream " + streamException.streamId(), th2);
        }
        super.r0(mVar, z10, th2, streamException);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0, pg.a, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void t(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        try {
            Q.fine("Network channel is closed");
            Status r10 = Status.f41719u.r("Network closed for unknown reason");
            this.D.f(r10);
            Status status = this.P;
            if (status == null) {
                status = this.D.a();
            }
            U0(this.D.b());
            f0().l(new c(status));
            this.D.g(r10);
        } finally {
            super.t(mVar);
            c1 c1Var = this.E;
            if (c1Var != null) {
                c1Var.r();
            }
        }
    }

    @Override // ig.j
    public String x0() {
        return this.I;
    }

    @Override // ig.j
    public io.grpc.a y0() {
        return this.H;
    }

    /* loaded from: classes5.dex */
    private class h extends io.grpc.netty.shaded.io.netty.handler.codec.http2.h0 {

        /* renamed from: a  reason: collision with root package name */
        private boolean f41342a;

        private h() {
            this.f41342a = true;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void b(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var) {
            if (this.f41342a) {
                this.f41342a = false;
                y.this.D.e();
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public int d(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10) throws Http2Exception {
            y.this.i1(i9, jVar, i10, z10);
            return i10;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void f(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10) throws Http2Exception {
            y.this.k1(i9, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void h(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) throws Http2Exception {
            v0 v0Var = y.this.L;
            if (j10 == y.this.E0().e()) {
                y.this.E0().i();
                Logger logger = y.Q;
                Level level = Level.FINE;
                if (logger.isLoggable(level)) {
                    y.Q.log(level, String.format("Window: %d", Integer.valueOf(y.this.g0().m().e(y.this.f0().d()))));
                }
            } else if (v0Var != null) {
                if (v0Var.h() == j10) {
                    v0Var.d();
                    y.this.L = null;
                } else {
                    y.Q.log(Level.WARNING, String.format("Received unexpected ping ack. Expecting %d, got %d", Long.valueOf(v0Var.h()), Long.valueOf(j10)));
                }
            } else {
                y.Q.warning("Received unexpected ping ack. No ping outstanding");
            }
            if (y.this.E != null) {
                y.this.E.n();
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void i(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) throws Http2Exception {
            if (y.this.E != null) {
                y.this.E.n();
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11) throws Http2Exception {
            y.this.j1(i9, http2Headers, z11);
        }

        /* synthetic */ h(y yVar, a aVar) {
            this();
        }
    }
}
