package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http.HttpStatusClass;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.j0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.n0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.y;
import java.util.List;
/* loaded from: classes5.dex */
public class e implements a0 {

    /* renamed from: k  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44243k = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(e.class);

    /* renamed from: a  reason: collision with root package name */
    private i0 f44244a;

    /* renamed from: b  reason: collision with root package name */
    private final y f44245b;

    /* renamed from: c  reason: collision with root package name */
    private q0 f44246c;

    /* renamed from: d  reason: collision with root package name */
    private final b0 f44247d;

    /* renamed from: e  reason: collision with root package name */
    private final j0 f44248e;

    /* renamed from: f  reason: collision with root package name */
    private i0 f44249f;

    /* renamed from: g  reason: collision with root package name */
    private final u0 f44250g;

    /* renamed from: h  reason: collision with root package name */
    private final y0 f44251h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f44252i;

    /* renamed from: j  reason: collision with root package name */
    private final y.c f44253j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44254a;

        static {
            int[] iArr = new int[Http2Stream.State.values().length];
            f44254a = iArr;
            try {
                iArr[Http2Stream.State.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44254a[Http2Stream.State.HALF_CLOSED_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44254a[Http2Stream.State.HALF_CLOSED_REMOTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f44254a[Http2Stream.State.CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f44254a[Http2Stream.State.RESERVED_REMOTE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f44254a[Http2Stream.State.IDLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final long f44255a;

        /* renamed from: b  reason: collision with root package name */
        private long f44256b;

        b(long j10) {
            this.f44255a = j10;
        }

        void a(boolean z10, int i9, int i10, boolean z11) throws Http2Exception {
            long j10 = this.f44256b + i10;
            this.f44256b = j10;
            if (j10 >= 0) {
                long j11 = this.f44255a;
                if (j10 > j11) {
                    throw Http2Exception.streamError(i9, Http2Error.PROTOCOL_ERROR, "Received amount of data %d does not match content-length header %d", Long.valueOf(j10), Long.valueOf(this.f44255a));
                }
                if (z11) {
                    if ((j10 != 0 || z10) && j11 > j10) {
                        throw Http2Exception.streamError(i9, Http2Error.PROTOCOL_ERROR, "Received amount of data %d does not match content-length header %d", Long.valueOf(j10), Long.valueOf(this.f44255a));
                    }
                    return;
                }
                return;
            }
            throw Http2Exception.streamError(i9, Http2Error.PROTOCOL_ERROR, "Received amount of data did overflow and so not match content-length header %d", Long.valueOf(this.f44255a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c implements i0 {
        private c() {
        }

        private void n(x0 x0Var) throws Http2Exception {
            Boolean J = x0Var.J();
            j0.a configuration = e.this.f44248e.configuration();
            n0.a a10 = configuration.a();
            k0 c10 = configuration.c();
            if (J != null) {
                if (!e.this.f44245b.m()) {
                    e.this.f44245b.f().s(J.booleanValue());
                } else {
                    throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Server sending SETTINGS frame with ENABLE_PUSH specified", new Object[0]);
                }
            }
            Long D = x0Var.D();
            if (D != null) {
                e.this.f44245b.b().u((int) Math.min(D.longValue(), 2147483647L));
            }
            Long z10 = x0Var.z();
            if (z10 != null) {
                a10.a(z10.longValue());
            }
            Long H = x0Var.H();
            if (H != null) {
                a10.e(H.longValue(), e.this.v(H.longValue()));
            }
            Integer F = x0Var.F();
            if (F != null) {
                c10.d(F.intValue());
            }
            Integer B = x0Var.B();
            if (B != null) {
                e.this.m().j(B.intValue());
            }
        }

        private boolean o(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Stream http2Stream, String str) throws Http2Exception {
            String str2;
            if (http2Stream == null) {
                if (p(i9)) {
                    e.f44243k.info("{} ignoring {} frame for stream {}. Stream sent after GOAWAY sent", mVar.d(), str, Integer.valueOf(i9));
                    return true;
                }
                q(i9);
                throw Http2Exception.streamError(i9, Http2Error.STREAM_CLOSED, "Received %s frame for an unknown stream %d", str, Integer.valueOf(i9));
            } else if (http2Stream.g() || p(i9)) {
                if (e.f44243k.isInfoEnabled()) {
                    io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = e.f44243k;
                    Object[] objArr = new Object[3];
                    objArr[0] = mVar.d();
                    objArr[1] = str;
                    if (http2Stream.g()) {
                        str2 = "RST_STREAM sent.";
                    } else {
                        str2 = "Stream created after GOAWAY sent. Last known stream by peer " + e.this.f44245b.b().t();
                    }
                    objArr[2] = str2;
                    bVar.info("{} ignoring {} frame for stream {}", objArr);
                }
                return true;
            } else {
                return false;
            }
        }

        private boolean p(int i9) {
            y.a<v0> b10 = e.this.f44245b.b();
            return e.this.f44245b.e() && b10.r(i9) && i9 > b10.t();
        }

        private void q(int i9) throws Http2Exception {
            if (!e.this.f44245b.k(i9)) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Stream %d does not exist", Integer.valueOf(i9));
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void a(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10) throws Http2Exception {
            l(mVar, i9, http2Headers, 0, (short) 16, false, i10, z10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void b(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var) throws Http2Exception {
            if (e.this.f44251h == null) {
                e.this.f44247d.N1(mVar, mVar.F());
                e.this.f44247d.G1(x0Var);
            } else {
                e.this.f44251h.a(x0Var);
            }
            e.this.f44249f.b(mVar, x0Var);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void c(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, Http2Headers http2Headers, int i11) throws Http2Exception {
            if (!e.this.connection().m()) {
                Http2Stream c10 = e.this.f44245b.c(i9);
                if (o(mVar, i9, c10, "PUSH_PROMISE")) {
                    return;
                }
                int i12 = a.f44254a[c10.h().ordinal()];
                if (i12 != 1 && i12 != 2) {
                    throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Stream %d in unexpected state for receiving push promise: %s", Integer.valueOf(c10.G()), c10.h());
                }
                if (e.this.f44250g.a(mVar, http2Headers)) {
                    if (e.this.f44250g.b(http2Headers)) {
                        if (e.this.f44250g.c(http2Headers)) {
                            e.this.f44245b.b().w(i10, c10);
                            e.this.f44249f.c(mVar, i9, i10, http2Headers, i11);
                            return;
                        }
                        throw Http2Exception.streamError(i10, Http2Error.PROTOCOL_ERROR, "Promised request on stream %d for promised stream %d is not known to be safe", Integer.valueOf(i9), Integer.valueOf(i10));
                    }
                    throw Http2Exception.streamError(i10, Http2Error.PROTOCOL_ERROR, "Promised request on stream %d for promised stream %d is not known to be cacheable", Integer.valueOf(i9), Integer.valueOf(i10));
                }
                throw Http2Exception.streamError(i10, Http2Error.PROTOCOL_ERROR, "Promised request on stream %d for promised stream %d is not authoritative", Integer.valueOf(i9), Integer.valueOf(i10));
            }
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "A client cannot push.", new Object[0]);
        }

        /* JADX WARN: Finally extract failed */
        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public int d(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10) throws Http2Exception {
            Http2Stream c10 = e.this.f44245b.c(i9);
            r0 m10 = e.this.m();
            int P1 = jVar.P1();
            int i11 = P1 + i10;
            try {
                if (o(mVar, i9, c10, "DATA")) {
                    m10.i(c10, jVar, i10, z10);
                    m10.m(c10, i11);
                    q(i9);
                    return i11;
                }
                Http2Exception http2Exception = null;
                int i12 = a.f44254a[c10.h().ordinal()];
                if (i12 != 1 && i12 != 2) {
                    if (i12 != 3 && i12 != 4) {
                        http2Exception = Http2Exception.streamError(c10.G(), Http2Error.PROTOCOL_ERROR, "Stream %d in unexpected state: %s", Integer.valueOf(c10.G()), c10.h());
                    } else {
                        http2Exception = Http2Exception.streamError(c10.G(), Http2Error.STREAM_CLOSED, "Stream %d in unexpected state: %s", Integer.valueOf(c10.G()), c10.h());
                    }
                }
                int A = e.this.A(c10);
                try {
                    try {
                        m10.i(c10, jVar, i10, z10);
                        int A2 = e.this.A(c10);
                        try {
                            if (http2Exception == null) {
                                e.this.C(c10, P1, z10);
                                int d10 = e.this.f44249f.d(mVar, i9, jVar, i10, z10);
                                if (z10) {
                                    e.this.f44246c.m(c10, mVar.m());
                                }
                                m10.m(c10, d10);
                                return d10;
                            }
                            throw http2Exception;
                        } catch (Http2Exception e10) {
                            e = e10;
                            A = A2;
                            int A3 = i11 - (A - e.this.A(c10));
                            throw e;
                        } catch (RuntimeException e11) {
                            e = e11;
                            A = A2;
                            int A4 = i11 - (A - e.this.A(c10));
                            throw e;
                        }
                    } catch (Throwable th2) {
                        m10.m(c10, i11);
                        throw th2;
                    }
                } catch (Http2Exception e12) {
                    e = e12;
                } catch (RuntimeException e13) {
                    e = e13;
                }
            } catch (Http2Exception e14) {
                m10.i(c10, jVar, i10, z10);
                m10.m(c10, i11);
                throw e14;
            } catch (Throwable th3) {
                throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, th3, "Unhandled error on data stream id %d", Integer.valueOf(i9));
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, short s10, boolean z10) throws Http2Exception {
            e.this.f44247d.m().b(i9, i10, s10, z10);
            e.this.f44249f.e(mVar, i9, i10, s10, z10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void f(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10) throws Http2Exception {
            Http2Stream c10 = e.this.f44245b.c(i9);
            if (c10 == null) {
                q(i9);
                return;
            }
            int i10 = a.f44254a[c10.h().ordinal()];
            if (i10 != 4) {
                if (i10 == 6) {
                    throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "RST_STREAM received for IDLE stream %d", Integer.valueOf(i9));
                }
                e.this.f44249f.f(mVar, i9, j10);
                e.this.f44246c.k(c10, mVar.m());
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void g(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Http2Exception {
            x0 O = e.this.f44247d.O();
            if (O != null) {
                n(O);
            }
            e.this.f44249f.g(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void h(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) throws Http2Exception {
            e.this.f44249f.h(mVar, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void i(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) throws Http2Exception {
            if (e.this.f44252i) {
                e.this.f44247d.s0(mVar, true, j10, mVar.F());
            }
            e.this.f44249f.i(mVar, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void j(io.grpc.netty.shaded.io.netty.channel.m mVar, byte b10, int i9, f0 f0Var, kg.j jVar) throws Http2Exception {
            e.this.y(mVar, b10, i9, f0Var, jVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void k(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10) throws Http2Exception {
            Http2Stream c10 = e.this.f44245b.c(i9);
            if (c10 != null && c10.h() != Http2Stream.State.CLOSED && !p(i9)) {
                e.this.f44247d.m().l(c10, i10);
                e.this.f44249f.k(mVar, i9, i10);
                return;
            }
            q(i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11) throws Http2Exception {
            Http2Stream http2Stream;
            boolean z12;
            boolean z13;
            io.grpc.netty.shaded.io.netty.util.c cVar;
            List<CharSequence> d02;
            Http2Stream c10 = e.this.f44245b.c(i9);
            if (c10 != null || e.this.f44245b.k(i9)) {
                if (c10 != null) {
                    http2Stream = c10;
                    z12 = c10.e();
                } else {
                    http2Stream = c10;
                    z12 = false;
                }
                z13 = false;
            } else {
                Http2Stream z14 = e.this.f44245b.b().z(i9, z11);
                z13 = z14.h() == Http2Stream.State.HALF_CLOSED_REMOTE;
                http2Stream = z14;
                z12 = false;
            }
            if (o(mVar, i9, http2Stream, "HEADERS")) {
                return;
            }
            boolean z15 = !e.this.f44245b.m() && HttpStatusClass.valueOf(http2Headers.t()) == HttpStatusClass.INFORMATIONAL;
            if (((!z15 && z11) || !http2Stream.e()) && !http2Stream.f()) {
                int i12 = a.f44254a[http2Stream.h().ordinal()];
                if (i12 != 1 && i12 != 2) {
                    if (i12 != 3) {
                        if (i12 == 4) {
                            throw Http2Exception.streamError(http2Stream.G(), Http2Error.STREAM_CLOSED, "Stream %d in unexpected state: %s", Integer.valueOf(http2Stream.G()), http2Stream.h());
                        }
                        if (i12 == 5) {
                            http2Stream.m(z11);
                        } else {
                            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Stream %d in unexpected state: %s", Integer.valueOf(http2Stream.G()), http2Stream.h());
                        }
                    } else if (!z13) {
                        throw Http2Exception.streamError(http2Stream.G(), Http2Error.STREAM_CLOSED, "Stream %d in unexpected state: %s", Integer.valueOf(http2Stream.G()), http2Stream.h());
                    }
                }
                if (!z12 && (d02 = http2Headers.d0((cVar = io.grpc.netty.shaded.io.netty.handler.codec.http.r.f44024w))) != null && !d02.isEmpty()) {
                    try {
                        long j10 = io.grpc.netty.shaded.io.netty.handler.codec.http.i0.j(d02, false, true);
                        if (j10 != -1) {
                            http2Headers.K0(cVar, j10);
                            http2Stream.d(e.this.f44253j, new b(j10));
                        }
                    } catch (IllegalArgumentException e10) {
                        throw Http2Exception.streamError(http2Stream.G(), Http2Error.PROTOCOL_ERROR, e10, "Multiple content-length headers received", new Object[0]);
                    }
                }
                http2Stream.o(z15);
                e.this.C(http2Stream, 0, z11);
                e.this.f44247d.m().b(i9, i10, s10, z10);
                e.this.f44249f.l(mVar, i9, http2Headers, i10, s10, z10, i11, z11);
                if (z11) {
                    e.this.f44246c.m(http2Stream, mVar.m());
                    return;
                }
                return;
            }
            throw Http2Exception.streamError(i9, Http2Error.PROTOCOL_ERROR, "Stream %d received too many headers EOS: %s state: %s", Integer.valueOf(i9), Boolean.valueOf(z11), http2Stream.h());
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void m(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar) throws Http2Exception {
            e.this.w(mVar, i9, j10, jVar);
        }

        /* synthetic */ c(e eVar, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private final class d implements i0 {
        private d() {
        }

        private void n() throws Http2Exception {
            if (!e.this.X0()) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Received non-SETTINGS as first frame.", new Object[0]);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void a(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10) throws Http2Exception {
            n();
            e.this.f44244a.a(mVar, i9, http2Headers, i10, z10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void b(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var) throws Http2Exception {
            if (!e.this.X0()) {
                e eVar = e.this;
                eVar.f44244a = new c(eVar, null);
            }
            e.this.f44244a.b(mVar, x0Var);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void c(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, Http2Headers http2Headers, int i11) throws Http2Exception {
            n();
            e.this.f44244a.c(mVar, i9, i10, http2Headers, i11);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public int d(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10) throws Http2Exception {
            n();
            return e.this.f44244a.d(mVar, i9, jVar, i10, z10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, short s10, boolean z10) throws Http2Exception {
            n();
            e.this.f44244a.e(mVar, i9, i10, s10, z10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void f(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10) throws Http2Exception {
            n();
            e.this.f44244a.f(mVar, i9, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void g(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Http2Exception {
            n();
            e.this.f44244a.g(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void h(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) throws Http2Exception {
            n();
            e.this.f44244a.h(mVar, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void i(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) throws Http2Exception {
            n();
            e.this.f44244a.i(mVar, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void j(io.grpc.netty.shaded.io.netty.channel.m mVar, byte b10, int i9, f0 f0Var, kg.j jVar) throws Http2Exception {
            e.this.y(mVar, b10, i9, f0Var, jVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void k(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10) throws Http2Exception {
            n();
            e.this.f44244a.k(mVar, i9, i10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11) throws Http2Exception {
            n();
            e.this.f44244a.l(mVar, i9, http2Headers, i10, s10, z10, i11, z11);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void m(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar) throws Http2Exception {
            e.this.w(mVar, i9, j10, jVar);
        }

        /* synthetic */ d(e eVar, a aVar) {
            this();
        }
    }

    public e(y yVar, b0 b0Var, j0 j0Var) {
        this(yVar, b0Var, j0Var, u0.f44451a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int A(Http2Stream http2Stream) {
        return m().h(http2Stream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Http2Stream http2Stream, int i9, boolean z10) throws Http2Exception {
        b bVar = (b) http2Stream.a(this.f44253j);
        if (bVar != null) {
            try {
                bVar.a(this.f44245b.m(), http2Stream.G(), i9, z10);
            } finally {
                if (z10) {
                    http2Stream.l(this.f44253j);
                }
            }
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.a0
    public x0 H1() {
        x0 x0Var = new x0();
        j0.a configuration = this.f44248e.configuration();
        n0.a a10 = configuration.a();
        k0 c10 = configuration.c();
        x0Var.A(m().a());
        x0Var.C(this.f44245b.b().A());
        x0Var.y(a10.c());
        x0Var.E(c10.e());
        x0Var.G(a10.b());
        if (!this.f44245b.m()) {
            x0Var.I(this.f44245b.f().x());
        }
        return x0Var;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.a0
    public void S(i0 i0Var) {
        this.f44249f = (i0) io.grpc.netty.shaded.io.netty.util.internal.s.h(i0Var, "listener");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.a0
    public boolean X0() {
        return c.class == this.f44244a.getClass();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f44248e.close();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.a0
    public y connection() {
        return this.f44245b;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.a0
    public void f(q0 q0Var) {
        this.f44246c = (q0) io.grpc.netty.shaded.io.netty.util.internal.s.h(q0Var, "lifecycleManager");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.a0
    public final r0 m() {
        return this.f44245b.f().m();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.a0
    public void n0(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Http2Exception {
        this.f44248e.T0(mVar, jVar, this.f44244a);
    }

    protected long v(long j10) {
        return x.a(j10);
    }

    void w(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar) throws Http2Exception {
        this.f44249f.m(mVar, i9, j10, jVar);
        this.f44245b.j(i9, j10, jVar);
    }

    void y(io.grpc.netty.shaded.io.netty.channel.m mVar, byte b10, int i9, f0 f0Var, kg.j jVar) throws Http2Exception {
        this.f44249f.j(mVar, b10, i9, f0Var, jVar);
    }

    public e(y yVar, b0 b0Var, j0 j0Var, u0 u0Var) {
        this(yVar, b0Var, j0Var, u0Var, true);
    }

    public e(y yVar, b0 b0Var, j0 j0Var, u0 u0Var, boolean z10) {
        this(yVar, b0Var, j0Var, u0Var, z10, true);
    }

    public e(y yVar, b0 b0Var, j0 j0Var, u0 u0Var, boolean z10, boolean z11) {
        this.f44244a = new d(this, null);
        this.f44252i = z11;
        if (z10) {
            this.f44251h = null;
        } else if (b0Var instanceof y0) {
            this.f44251h = (y0) b0Var;
        } else {
            throw new IllegalArgumentException("disabling autoAckSettings requires the encoder to be a " + y0.class);
        }
        y yVar2 = (y) io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, "connection");
        this.f44245b = yVar2;
        this.f44253j = yVar2.a();
        this.f44248e = (j0) io.grpc.netty.shaded.io.netty.util.internal.s.h(j0Var, "frameReader");
        this.f44247d = (b0) io.grpc.netty.shaded.io.netty.util.internal.s.h(b0Var, "encoder");
        this.f44250g = (u0) io.grpc.netty.shaded.io.netty.util.internal.s.h(u0Var, "requestVerifier");
        if (yVar.f().m() == null) {
            yVar.f().o(new l(yVar));
        }
        yVar.f().m().f(b0Var.Y0());
    }
}
