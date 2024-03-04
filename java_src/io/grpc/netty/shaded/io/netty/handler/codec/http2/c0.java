package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import java.net.SocketAddress;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class c0 extends pg.a implements q0, io.grpc.netty.shaded.io.netty.channel.t {

    /* renamed from: s  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44130s = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(c0.class);

    /* renamed from: t  reason: collision with root package name */
    private static final Http2Headers f44131t = a1.x(false, io.grpc.netty.shaded.io.netty.handler.codec.http.h0.C4.b(), new io.grpc.netty.shaded.io.netty.util.c[0]);

    /* renamed from: u  reason: collision with root package name */
    private static final kg.j f44132u = kg.s0.i(kg.s0.k(new byte[]{72, 84, 84, 80, 47, 49, 46})).B();

    /* renamed from: l  reason: collision with root package name */
    private final a0 f44133l;

    /* renamed from: m  reason: collision with root package name */
    private final b0 f44134m;

    /* renamed from: n  reason: collision with root package name */
    private final x0 f44135n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f44136o;

    /* renamed from: p  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.j f44137p;

    /* renamed from: q  reason: collision with root package name */
    private g f44138q;

    /* renamed from: r  reason: collision with root package name */
    private long f44139r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.j f44140a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.j f44141b;

        a(io.grpc.netty.shaded.io.netty.channel.j jVar, io.grpc.netty.shaded.io.netty.channel.j jVar2) {
            this.f44140a = jVar;
            this.f44141b = jVar2;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            try {
                this.f44140a.e(iVar);
            } finally {
                this.f44141b.e(iVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements io.grpc.netty.shaded.io.netty.channel.j {
        b() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            c0.this.c0(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44144a;

        c(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f44144a = mVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            c0.this.e0(this.f44144a, iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44146a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Http2Stream f44147b;

        d(io.grpc.netty.shaded.io.netty.channel.m mVar, Http2Stream http2Stream) {
            this.f44146a = mVar;
            this.f44147b = http2Stream;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            c0.this.u0(this.f44146a, this.f44147b, iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44149a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f44150b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f44151c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kg.j f44152d;

        e(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar) {
            this.f44149a = mVar;
            this.f44150b = i9;
            this.f44151c = j10;
            this.f44152d = jVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            c0.t0(this.f44149a, this.f44150b, this.f44151c, this.f44152d, iVar);
        }
    }

    /* loaded from: classes5.dex */
    static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44154a;

        static {
            int[] iArr = new int[Http2Stream.State.values().length];
            f44154a = iArr;
            try {
                iArr[Http2Stream.State.HALF_CLOSED_LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44154a[Http2Stream.State.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44154a[Http2Stream.State.HALF_CLOSED_REMOTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public abstract class g {
        private g() {
        }

        public void a(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        }

        public void b(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            c0.this.i0().close();
            c0.this.g0().close();
            c0.this.f0().i(mVar.N());
        }

        public abstract void c(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception;

        public void d(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        }

        public boolean e() {
            return true;
        }

        /* synthetic */ g(c0 c0Var, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private final class i extends g {
        private i() {
            super(c0.this, null);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0.g
        public void c(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
            try {
                c0.this.f44133l.n0(mVar, jVar, list);
            } catch (Throwable th2) {
                c0.this.c(mVar, false, th2);
            }
        }

        /* synthetic */ i(c0 c0Var, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private final class j extends g {

        /* renamed from: b  reason: collision with root package name */
        private kg.j f44162b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f44163c;

        j(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            super(c0.this, null);
            this.f44162b = c0.d0(c0.this.f44134m.connection());
            h(mVar);
        }

        private void f() {
            kg.j jVar = this.f44162b;
            if (jVar != null) {
                jVar.release();
                this.f44162b = null;
            }
        }

        private boolean g(kg.j jVar) throws Http2Exception {
            kg.j jVar2 = this.f44162b;
            if (jVar2 == null) {
                return true;
            }
            int min = Math.min(jVar.P1(), jVar2.P1());
            if (min != 0) {
                int Q1 = jVar.Q1();
                kg.j jVar3 = this.f44162b;
                if (kg.n.n(jVar, Q1, jVar3, jVar3.Q1(), min)) {
                    jVar.l2(min);
                    this.f44162b.l2(min);
                    if (this.f44162b.j1()) {
                        return false;
                    }
                    this.f44162b.release();
                    this.f44162b = null;
                    return true;
                }
            }
            int y10 = kg.n.y(c0.f44132u, jVar.n2(jVar.Q1(), Math.min(jVar.P1(), 1024)));
            if (y10 != -1) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Unexpected HTTP/1.x request: %s", jVar.o2(jVar.Q1(), y10 - jVar.Q1(), io.grpc.netty.shaded.io.netty.util.h.f45018f));
            }
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "HTTP/2 client preface string missing or corrupt. Hex dump for received bytes: %s", kg.n.w(jVar, jVar.Q1(), Math.min(jVar.P1(), this.f44162b.P1())));
        }

        private void h(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            if (this.f44163c || !mVar.d().isActive()) {
                return;
            }
            this.f44163c = true;
            boolean m10 = true ^ c0.this.f0().m();
            if (m10) {
                mVar.c0(x.b()).c((ug.r<? extends ug.q<? super Void>>) io.grpc.netty.shaded.io.netty.channel.j.f43708i3);
            }
            c0.this.f44134m.m0(mVar, c0.this.f44135n, mVar.F()).c((ug.r<? extends ug.q<? super Void>>) io.grpc.netty.shaded.io.netty.channel.j.f43708i3);
            if (m10) {
                c0.this.X(mVar, d0.f44242a);
            }
        }

        private boolean i(kg.j jVar) throws Http2Exception {
            if (jVar.P1() < 5) {
                return false;
            }
            short R0 = jVar.R0(jVar.Q1() + 3);
            short R02 = jVar.R0(jVar.Q1() + 4);
            if (R0 == 4 && (R02 & 1) == 0) {
                return true;
            }
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "First received frame was not SETTINGS. Hex dump for first 5 bytes: %s", kg.n.w(jVar, jVar.Q1(), 5));
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0.g
        public void a(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            h(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0.g
        public void b(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            f();
            super.b(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0.g
        public void c(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
            try {
                if (mVar.d().isActive() && g(jVar) && i(jVar)) {
                    c0 c0Var = c0.this;
                    c0Var.f44138q = new i(c0Var, null);
                    c0.this.f44138q.c(mVar, jVar, list);
                }
            } catch (Throwable th2) {
                c0.this.c(mVar, false, th2);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0.g
        public void d(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
            f();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0.g
        public boolean e() {
            return this.f44163c;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c0(a0 a0Var, b0 b0Var, x0 x0Var) {
        this(a0Var, b0Var, x0Var, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(io.grpc.netty.shaded.io.netty.channel.i iVar) {
        if (this.f44137p == null || !n0()) {
            return;
        }
        io.grpc.netty.shaded.io.netty.channel.j jVar = this.f44137p;
        this.f44137p = null;
        try {
            jVar.e(iVar);
        } catch (Exception e10) {
            throw new IllegalStateException("Close listener threw an unexpected exception", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static kg.j d0(y yVar) {
        if (yVar.m()) {
            return x.b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.i iVar) {
        if (iVar.p0()) {
            return;
        }
        p0(mVar, true, iVar.L(), null);
    }

    private void h0(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.i iVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        io.grpc.netty.shaded.io.netty.channel.j o02 = o0(mVar, yVar);
        if (n0()) {
            iVar.c((ug.r<? extends ug.q<? super Void>>) o02);
            return;
        }
        io.grpc.netty.shaded.io.netty.channel.j jVar = this.f44137p;
        if (jVar == null) {
            this.f44137p = o02;
        } else if (yVar != null) {
            this.f44137p = new a(jVar, o02);
        }
    }

    private io.grpc.netty.shaded.io.netty.channel.i k0(io.grpc.netty.shaded.io.netty.channel.m mVar, Http2Exception http2Exception, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return b(mVar, (http2Exception == null || http2Exception.shutdownHint() != Http2Exception.ShutdownHint.HARD_SHUTDOWN) ? f0().b().v() : Integer.MAX_VALUE, (http2Exception != null ? http2Exception.error() : Http2Error.NO_ERROR).code(), x.i(mVar, http2Exception), yVar);
    }

    private io.grpc.netty.shaded.io.netty.channel.j o0(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        long j10 = this.f44139r;
        return j10 < 0 ? new h(mVar, yVar) : new h(mVar, yVar, j10, TimeUnit.MILLISECONDS);
    }

    private boolean s0() {
        g gVar = this.f44138q;
        return gVar != null && gVar.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void t0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar, io.grpc.netty.shaded.io.netty.channel.i iVar) {
        try {
            if (iVar.p0()) {
                if (j10 != Http2Error.NO_ERROR.code()) {
                    io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f44130s;
                    if (bVar.isDebugEnabled()) {
                        bVar.debug("{} Sent GOAWAY: lastStreamId '{}', errorCode '{}', debugData '{}'. Forcing shutdown of the connection.", mVar.d(), Integer.valueOf(i9), Long.valueOf(j10), jVar.p2(io.grpc.netty.shaded.io.netty.util.h.f45016d), iVar.L());
                    }
                    mVar.close();
                }
            } else {
                io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar2 = f44130s;
                if (bVar2.isDebugEnabled()) {
                    bVar2.debug("{} Sending GOAWAY failed: lastStreamId '{}', errorCode '{}', debugData '{}'. Forcing shutdown of the connection.", mVar.d(), Integer.valueOf(i9), Long.valueOf(j10), jVar.p2(io.grpc.netty.shaded.io.netty.util.h.f45016d), iVar.L());
                }
                mVar.close();
            }
        } finally {
            jVar.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(io.grpc.netty.shaded.io.netty.channel.m mVar, Http2Stream http2Stream, io.grpc.netty.shaded.io.netty.channel.i iVar) {
        if (iVar.p0()) {
            k(http2Stream, iVar);
        } else {
            p0(mVar, true, iVar.L(), null);
        }
    }

    private io.grpc.netty.shaded.io.netty.channel.i v0(io.grpc.netty.shaded.io.netty.channel.m mVar, Http2Stream http2Stream, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        io.grpc.netty.shaded.io.netty.channel.i m10;
        io.grpc.netty.shaded.io.netty.channel.y f02 = yVar.f0();
        if (http2Stream.g()) {
            return f02.m();
        }
        http2Stream.c();
        if (http2Stream.h() != Http2Stream.State.IDLE && (!f0().f().q(http2Stream) || http2Stream.i() || http2Stream.k())) {
            m10 = j0().F1(mVar, http2Stream.G(), j10, f02);
        } else {
            m10 = f02.m();
        }
        if (m10.isDone()) {
            u0(mVar, http2Stream, m10);
        } else {
            m10.c((ug.r<? extends ug.q<? super Void>>) new d(mVar, http2Stream));
        }
        return m10;
    }

    private io.grpc.netty.shaded.io.netty.channel.i w0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        io.grpc.netty.shaded.io.netty.channel.i F1 = j0().F1(mVar, i9, j10, yVar);
        if (F1.isDone()) {
            e0(mVar, F1);
        } else {
            F1.c((ug.r<? extends ug.q<? super Void>>) new c(mVar));
        }
        return F1;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void A(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        this.f44134m.f(this);
        this.f44133l.f(this);
        this.f44134m.m().d(mVar);
        this.f44133l.m().d(mVar);
        this.f44138q = new j(mVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void C(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        try {
            if (mVar.d().q0()) {
                n(mVar);
            }
            this.f44134m.m().o();
        } finally {
            super.C(mVar);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void D(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        if (this.f44138q == null) {
            this.f44138q = new j(mVar);
        }
        this.f44138q.a(mVar);
        super.D(mVar);
    }

    @Override // pg.a
    protected void I(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        g gVar = this.f44138q;
        if (gVar != null) {
            gVar.d(mVar);
            this.f44138q = null;
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void V(io.grpc.netty.shaded.io.netty.channel.m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        mVar.Q(socketAddress, socketAddress2, yVar);
    }

    @Override // pg.a, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void Z(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        try {
            b0(mVar);
        } finally {
            n(mVar);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k, io.grpc.netty.shaded.io.netty.channel.o
    public void a(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) throws Exception {
        if (x.c(th2) != null) {
            c(mVar, false, th2);
        } else {
            super.a(mVar, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.q0
    public io.grpc.netty.shaded.io.netty.channel.i b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        io.grpc.netty.shaded.io.netty.channel.y f02 = yVar.f0();
        try {
            if (!f0().h(i9, j10, jVar)) {
                jVar.release();
                f02.I();
                return f02;
            }
            jVar.retain();
            io.grpc.netty.shaded.io.netty.channel.i S0 = j0().S0(mVar, i9, j10, jVar, f02);
            if (S0.isDone()) {
                t0(mVar, i9, j10, jVar, S0);
            } else {
                S0.c((ug.r<? extends ug.q<? super Void>>) new e(mVar, i9, j10, jVar));
            }
            return S0;
        } catch (Throwable th2) {
            jVar.release();
            f02.z(th2);
            return f02;
        }
    }

    final void b0(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        B();
        if (!mVar.d().b0().l()) {
            mVar.read();
        }
        mVar.k();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.q0
    public void c(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, Throwable th2) {
        Http2Exception c10 = x.c(th2);
        if (Http2Exception.isStreamError(c10)) {
            r0(mVar, z10, th2, (Http2Exception.StreamException) c10);
        } else if (c10 instanceof Http2Exception.CompositeStreamException) {
            Iterator<Http2Exception.StreamException> it = ((Http2Exception.CompositeStreamException) c10).iterator();
            while (it.hasNext()) {
                r0(mVar, z10, th2, it.next());
            }
        } else {
            p0(mVar, z10, th2, c10);
        }
        mVar.flush();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.q0
    public io.grpc.netty.shaded.io.netty.channel.i d(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        Http2Stream c10 = f0().c(i9);
        if (c10 == null) {
            return w0(mVar, i9, j10, yVar.f0());
        }
        return v0(mVar, c10, j10, yVar);
    }

    public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        mVar.c(obj, yVar);
    }

    public y f0() {
        return this.f44134m.connection();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.q0
    public void g(Http2Stream http2Stream, io.grpc.netty.shaded.io.netty.channel.i iVar) {
        int i9 = f.f44154a[http2Stream.h().ordinal()];
        if (i9 != 1 && i9 != 2) {
            k(http2Stream, iVar);
        } else {
            http2Stream.n();
        }
    }

    public a0 g0() {
        return this.f44133l;
    }

    public b0 i0() {
        return this.f44134m;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void j(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        mVar.M(yVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m0 j0() {
        return i0().Y0();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.q0
    public void k(Http2Stream http2Stream, io.grpc.netty.shaded.io.netty.channel.i iVar) {
        http2Stream.close();
        if (iVar.isDone()) {
            c0(iVar);
        } else {
            iVar.c((ug.r<? extends ug.q<? super Void>>) new b());
        }
    }

    public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        if (this.f44136o) {
            mVar.L(yVar);
            return;
        }
        io.grpc.netty.shaded.io.netty.channel.y f02 = yVar.f0();
        if (mVar.d().isActive() && s0()) {
            io.grpc.netty.shaded.io.netty.channel.i c02 = f0().e() ? mVar.c0(kg.s0.f53902d) : k0(mVar, null, mVar.F());
            mVar.flush();
            h0(mVar, c02, f02);
            return;
        }
        mVar.L(f02);
    }

    public void l0(long j10) {
        if (j10 >= -1) {
            this.f44139r = j10;
            return;
        }
        throw new IllegalArgumentException("gracefulShutdownTimeoutMillis: " + j10 + " (expected: -1 for indefinite or >= 0)");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.q0
    public void m(Http2Stream http2Stream, io.grpc.netty.shaded.io.netty.channel.i iVar) {
        int i9 = f.f44154a[http2Stream.h().ordinal()];
        if (i9 != 2 && i9 != 3) {
            k(http2Stream, iVar);
        } else {
            http2Stream.b();
        }
    }

    protected void m0(io.grpc.netty.shaded.io.netty.channel.m mVar, Http2Stream http2Stream) {
        i0().i1(mVar, http2Stream.G(), f44131t, 0, true, mVar.F());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void n(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        try {
            this.f44134m.m().g();
            mVar.flush();
        } catch (Http2Exception e10) {
            c(mVar, true, e10);
        } catch (Throwable th2) {
            c(mVar, true, Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, th2, "Error flushing", new Object[0]));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean n0() {
        return f0().n() == 0;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void o(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        mVar.read();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, Throwable th2, Http2Exception http2Exception) {
        if (http2Exception == null) {
            http2Exception = new Http2Exception(Http2Error.INTERNAL_ERROR, th2.getMessage(), th2);
        }
        io.grpc.netty.shaded.io.netty.channel.y F = mVar.F();
        io.grpc.netty.shaded.io.netty.channel.i k02 = k0(mVar, http2Exception, mVar.F());
        if (http2Exception.shutdownHint() == Http2Exception.ShutdownHint.GRACEFUL_SHUTDOWN) {
            h0(mVar, k02, F);
        } else {
            k02.c((ug.r<? extends ug.q<? super Void>>) o0(mVar, F));
        }
    }

    public void q0() throws Http2Exception {
        if (!f0().m()) {
            if (s0()) {
                if (!this.f44133l.X0()) {
                    f0().f().z(1, true);
                    return;
                }
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "HTTP upgrade must occur before HTTP/2 preface is received", new Object[0]);
            }
            throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, "HTTP upgrade must occur after preface was sent", new Object[0]);
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Client-side HTTP upgrade requested for a server", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, Throwable th2, Http2Exception.StreamException streamException) {
        int streamId = streamException.streamId();
        Http2Stream c10 = f0().c(streamId);
        if ((streamException instanceof Http2Exception.HeaderListSizeException) && ((Http2Exception.HeaderListSizeException) streamException).duringDecode() && f0().m()) {
            if (c10 == null) {
                try {
                    c10 = this.f44134m.connection().b().z(streamId, true);
                } catch (Http2Exception unused) {
                    w0(mVar, streamId, streamException.error().code(), mVar.F());
                    return;
                }
            }
            if (c10 != null && !c10.i()) {
                try {
                    m0(mVar, c10);
                } catch (Throwable th3) {
                    c(mVar, z10, Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, th3, "Error DecodeSizeError", new Object[0]));
                }
            }
        }
        Http2Stream http2Stream = c10;
        if (http2Stream == null) {
            if (!z10 || f0().f().p(streamId)) {
                w0(mVar, streamId, streamException.error().code(), mVar.F());
                return;
            }
            return;
        }
        v0(mVar, http2Stream, streamException.error().code(), mVar.F());
    }

    @Override // pg.a, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void t(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        super.t(mVar);
        g gVar = this.f44138q;
        if (gVar != null) {
            gVar.b(mVar);
            this.f44138q = null;
        }
    }

    @Override // pg.a
    protected void x(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
        this.f44138q.c(mVar, jVar, list);
    }

    protected c0(a0 a0Var, b0 b0Var, x0 x0Var, boolean z10) {
        this.f44135n = (x0) io.grpc.netty.shaded.io.netty.util.internal.s.h(x0Var, "initialSettings");
        this.f44133l = (a0) io.grpc.netty.shaded.io.netty.util.internal.s.h(a0Var, "decoder");
        this.f44134m = (b0) io.grpc.netty.shaded.io.netty.util.internal.s.h(b0Var, "encoder");
        this.f44136o = z10;
        if (b0Var.connection() != a0Var.connection()) {
            throw new IllegalArgumentException("Encoder and Decoder do not share the same connection object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class h implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.channel.m f44156a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.channel.y f44157b;

        /* renamed from: c  reason: collision with root package name */
        private final ug.q<?> f44158c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f44159d;

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                h.this.b();
            }
        }

        h(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f44156a = mVar;
            this.f44157b = yVar;
            this.f44158c = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (this.f44159d) {
                return;
            }
            this.f44159d = true;
            io.grpc.netty.shaded.io.netty.channel.y yVar = this.f44157b;
            if (yVar == null) {
                this.f44156a.close();
            } else {
                this.f44156a.L(yVar);
            }
        }

        @Override // ug.r
        /* renamed from: c */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) {
            ug.q<?> qVar = this.f44158c;
            if (qVar != null) {
                qVar.cancel(false);
            }
            b();
        }

        h(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar, long j10, TimeUnit timeUnit) {
            this.f44156a = mVar;
            this.f44157b = yVar;
            this.f44158c = mVar.m0().schedule((Runnable) new a(), j10, timeUnit);
        }
    }
}
