package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.b1;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.v0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.y;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes5.dex */
public class m implements v0 {

    /* renamed from: h  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44345h = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(m.class);

    /* renamed from: a  reason: collision with root package name */
    private final y f44346a;

    /* renamed from: b  reason: collision with root package name */
    private final y.c f44347b;

    /* renamed from: c  reason: collision with root package name */
    private final b1 f44348c;

    /* renamed from: d  reason: collision with root package name */
    private final b f44349d;

    /* renamed from: e  reason: collision with root package name */
    private int f44350e;

    /* renamed from: f  reason: collision with root package name */
    private d f44351f;

    /* renamed from: g  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.m f44352g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends z {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void a(Http2Stream http2Stream) {
            if (Http2Stream.State.HALF_CLOSED_LOCAL == http2Stream.h()) {
                m.this.K(http2Stream).e(Http2Error.STREAM_CLOSED, null);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void c(Http2Stream http2Stream) {
            http2Stream.d(m.this.f44347b, new b(http2Stream));
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void f(Http2Stream http2Stream) {
            m.this.K(http2Stream).e(Http2Error.STREAM_CLOSED, null);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void g(Http2Stream http2Stream) {
            m.this.f44351f.k(m.this.K(http2Stream), m.this.f44350e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b implements b1.a {

        /* renamed from: a  reason: collision with root package name */
        private final Http2Stream f44354a;

        /* renamed from: b  reason: collision with root package name */
        private final Deque<v0.a> f44355b = new ArrayDeque(2);

        /* renamed from: c  reason: collision with root package name */
        private int f44356c;

        /* renamed from: d  reason: collision with root package name */
        private long f44357d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f44358e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f44359f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f44360g;

        b(Http2Stream http2Stream) {
            this.f44354a = http2Stream;
        }

        private void f(int i9) {
            int i10 = -i9;
            try {
                m.this.f44349d.k(i10);
                k(i10);
            } catch (Http2Exception e10) {
                throw new IllegalStateException("Invalid window state when writing frame: " + e10.getMessage(), e10);
            }
        }

        private void g(int i9, boolean z10) {
            j(-i9, z10);
        }

        private void i(v0.a aVar) {
            this.f44355b.offer(aVar);
            j(aVar.size(), true);
        }

        private void j(int i9, boolean z10) {
            this.f44357d += i9;
            m.this.f44351f.e(i9);
            if (z10) {
                m.this.f44348c.c(this);
            }
        }

        private v0.a o() {
            return this.f44355b.peek();
        }

        private int q() {
            return Math.min(this.f44356c, m.this.E());
        }

        private void s(v0.a aVar, Http2Exception http2Exception) {
            g(aVar.size(), true);
            aVar.d(m.this.f44352g, http2Exception);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b1.a
        public long a() {
            return this.f44357d;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b1.a
        public int b() {
            return this.f44356c;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b1.a
        public boolean c() {
            return !this.f44355b.isEmpty();
        }

        void e(Http2Error http2Error, Throwable th2) {
            this.f44360g = true;
            if (this.f44359f) {
                return;
            }
            v0.a poll = this.f44355b.poll();
            if (poll != null) {
                Http2Exception streamError = Http2Exception.streamError(this.f44354a.G(), http2Error, th2, "Stream closed before write could take place", new Object[0]);
                do {
                    s(poll, streamError);
                    poll = this.f44355b.poll();
                } while (poll != null);
                m.this.f44348c.c(this);
                m.this.f44351f.j(this);
            }
            m.this.f44348c.c(this);
            m.this.f44351f.j(this);
        }

        void h(v0.a aVar) {
            v0.a peekLast = this.f44355b.peekLast();
            if (peekLast == null) {
                i(aVar);
                return;
            }
            int size = peekLast.size();
            if (peekLast.b(m.this.f44352g, aVar)) {
                j(peekLast.size() - size, true);
            } else {
                i(aVar);
            }
        }

        int k(int i9) throws Http2Exception {
            if (i9 > 0 && Integer.MAX_VALUE - i9 < this.f44356c) {
                throw Http2Exception.streamError(this.f44354a.G(), Http2Error.FLOW_CONTROL_ERROR, "Window size overflow for stream: %d", Integer.valueOf(this.f44354a.G()));
            }
            this.f44356c += i9;
            m.this.f44348c.c(this);
            return this.f44356c;
        }

        boolean l() {
            return ((long) b()) > a() && !this.f44360g;
        }

        void m(boolean z10) {
            this.f44358e = z10;
        }

        boolean n() {
            return this.f44358e;
        }

        void p(int i9) {
            this.f44356c = i9;
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
            r8.f44359f = r1;
            r9 = r9 - r3;
            g(r9, r1);
            f(r9);
            r9 = r8.f44360g;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int r(int r9) {
            /*
                r8 = this;
                r0 = 1
                r1 = 0
                r2 = 0
                r8.f44359f = r0     // Catch: java.lang.Throwable -> L7c
                r3 = r9
                r4 = 0
            L7:
                boolean r5 = r8.f44360g     // Catch: java.lang.Throwable -> L7a
                if (r5 != 0) goto L51
                io.grpc.netty.shaded.io.netty.handler.codec.http2.v0$a r5 = r8.o()     // Catch: java.lang.Throwable -> L7a
                if (r5 == 0) goto L51
                int r6 = r8.q()     // Catch: java.lang.Throwable -> L7a
                int r6 = java.lang.Math.min(r3, r6)     // Catch: java.lang.Throwable -> L7a
                if (r6 > 0) goto L22
                int r7 = r5.size()     // Catch: java.lang.Throwable -> L7a
                if (r7 <= 0) goto L22
                goto L51
            L22:
                int r4 = r5.size()     // Catch: java.lang.Throwable -> L7a
                io.grpc.netty.shaded.io.netty.handler.codec.http2.m r7 = io.grpc.netty.shaded.io.netty.handler.codec.http2.m.this     // Catch: java.lang.Throwable -> L49
                io.grpc.netty.shaded.io.netty.channel.m r7 = io.grpc.netty.shaded.io.netty.handler.codec.http2.m.z(r7)     // Catch: java.lang.Throwable -> L49
                int r6 = java.lang.Math.max(r1, r6)     // Catch: java.lang.Throwable -> L49
                r5.a(r7, r6)     // Catch: java.lang.Throwable -> L49
                int r6 = r5.size()     // Catch: java.lang.Throwable -> L49
                if (r6 != 0) goto L41
                java.util.Deque<io.grpc.netty.shaded.io.netty.handler.codec.http2.v0$a> r6 = r8.f44355b     // Catch: java.lang.Throwable -> L49
                r6.remove()     // Catch: java.lang.Throwable -> L49
                r5.c()     // Catch: java.lang.Throwable -> L49
            L41:
                int r5 = r5.size()     // Catch: java.lang.Throwable -> L7a
                int r4 = r4 - r5
                int r3 = r3 - r4
                r4 = 1
                goto L7
            L49:
                r6 = move-exception
                int r5 = r5.size()     // Catch: java.lang.Throwable -> L7a
                int r4 = r4 - r5
                int r3 = r3 - r4
                throw r6     // Catch: java.lang.Throwable -> L7a
            L51:
                if (r4 != 0) goto L67
                r0 = -1
                r8.f44359f = r1
                int r9 = r9 - r3
                r8.g(r9, r1)
                r8.f(r9)
                boolean r9 = r8.f44360g
                if (r9 == 0) goto L66
                io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error r9 = io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error.INTERNAL_ERROR
                r8.e(r9, r2)
            L66:
                return r0
            L67:
                r8.f44359f = r1
                int r9 = r9 - r3
                r8.g(r9, r1)
                r8.f(r9)
                boolean r0 = r8.f44360g
                if (r0 == 0) goto L92
                io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error r0 = io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error.INTERNAL_ERROR
                r8.e(r0, r2)
                goto L92
            L7a:
                r4 = move-exception
                goto L7e
            L7c:
                r4 = move-exception
                r3 = r9
            L7e:
                r8.f44360g = r0     // Catch: java.lang.Throwable -> L93
                r8.f44359f = r1
                int r9 = r9 - r3
                r8.g(r9, r1)
                r8.f(r9)
                boolean r0 = r8.f44360g
                if (r0 == 0) goto L92
                io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error r0 = io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error.INTERNAL_ERROR
                r8.e(r0, r4)
            L92:
                return r9
            L93:
                r0 = move-exception
                r8.f44359f = r1
                int r9 = r9 - r3
                r8.g(r9, r1)
                r8.f(r9)
                boolean r9 = r8.f44360g
                if (r9 == 0) goto La6
                io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error r9 = io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Error.INTERNAL_ERROR
                r8.e(r9, r2)
            La6:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.codec.http2.m.b.r(int):int");
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b1.a
        public Http2Stream stream() {
            return this.f44354a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c extends d implements z0 {

        /* renamed from: d  reason: collision with root package name */
        private final v0.b f44362d;

        c(v0.b bVar) {
            super(m.this, null);
            this.f44362d = bVar;
        }

        private void m() throws Http2Exception {
            m.this.f44349d.m(i());
            m.this.f44346a.l(this);
        }

        private void n(b bVar) throws Http2Exception {
            if (i() != m.this.f44349d.n()) {
                m();
            } else if (h(bVar) != bVar.n()) {
                p(bVar);
            }
        }

        private void o(b bVar) throws Http2Exception {
            if (h(bVar) != bVar.n()) {
                if (bVar == m.this.f44349d) {
                    m();
                } else {
                    p(bVar);
                }
            }
        }

        private void p(b bVar) {
            bVar.m(!bVar.n());
            try {
                this.f44362d.a(bVar.f44354a);
            } catch (Throwable th2) {
                m.f44345h.error("Caught Throwable from listener.writabilityChanged", th2);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z0
        public boolean a(Http2Stream http2Stream) throws Http2Exception {
            b K = m.this.K(http2Stream);
            if (h(K) != K.n()) {
                p(K);
                return true;
            }
            return true;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m.d
        void c() throws Http2Exception {
            if (m.this.f44349d.n() != m.this.F()) {
                m();
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m.d
        void d(b bVar, v0.a aVar) throws Http2Exception {
            super.d(bVar, aVar);
            n(bVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m.d
        void f(b bVar, int i9) throws Http2Exception {
            super.f(bVar, i9);
            o(bVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m.d
        void g(int i9) throws Http2Exception {
            super.g(i9);
            if (i()) {
                m();
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m.d
        void j(b bVar) {
            try {
                n(bVar);
            } catch (Http2Exception e10) {
                throw new RuntimeException("Caught unexpected exception from checkAllWritabilityChanged", e10);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m.d
        void k(b bVar, int i9) {
            super.k(bVar, i9);
            try {
                o(bVar);
            } catch (Http2Exception e10) {
                throw new RuntimeException("Caught unexpected exception from window", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class d implements b1.b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f44364a;

        /* renamed from: b  reason: collision with root package name */
        private long f44365b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements z0 {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f44367a;

            a(int i9) {
                this.f44367a = i9;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z0
            public boolean a(Http2Stream http2Stream) throws Http2Exception {
                m.this.K(http2Stream).k(this.f44367a);
                return true;
            }
        }

        private d() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b1.b
        public final void b(Http2Stream http2Stream, int i9) {
            m.this.K(http2Stream).r(i9);
        }

        void c() throws Http2Exception {
        }

        void d(b bVar, v0.a aVar) throws Http2Exception {
            bVar.h(aVar);
        }

        final void e(int i9) {
            this.f44365b += i9;
        }

        void f(b bVar, int i9) throws Http2Exception {
            bVar.k(i9);
        }

        void g(int i9) throws Http2Exception {
            io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "newWindowSize");
            int i10 = i9 - m.this.f44350e;
            m.this.f44350e = i9;
            m.this.f44346a.l(new a(i10));
            if (i10 <= 0 || !m.this.F()) {
                return;
            }
            l();
        }

        final boolean h(b bVar) {
            return i() && bVar.l();
        }

        final boolean i() {
            return ((long) m.this.f44349d.b()) - this.f44365b > 0 && m.this.F();
        }

        void j(b bVar) {
        }

        void k(b bVar, int i9) {
            bVar.p(i9);
        }

        final void l() throws Http2Exception {
            if (this.f44364a) {
                return;
            }
            this.f44364a = true;
            try {
                int L = m.this.L();
                while (m.this.f44348c.a(L, this) && (L = m.this.L()) > 0 && m.this.G()) {
                }
            } finally {
                this.f44364a = false;
            }
        }

        /* synthetic */ d(m mVar, a aVar) {
            this();
        }
    }

    public m(y yVar) {
        this(yVar, (v0.b) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int E() {
        return this.f44349d.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean F() {
        return this.f44352g != null && G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean G() {
        return this.f44352g.d().q0();
    }

    private int I() {
        int min = (int) Math.min(2147483647L, this.f44352g.d().S());
        return Math.min(this.f44349d.b(), min > 0 ? Math.max(min, J()) : 0);
    }

    private int J() {
        return Math.max(this.f44352g.d().b0().d(), 32768);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b K(Http2Stream http2Stream) {
        return (b) http2Stream.a(this.f44347b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int L() {
        return Math.min(E(), I());
    }

    public void H(v0.b bVar) {
        this.f44351f = bVar == null ? new d(this, null) : new c(bVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0
    public void b(int i9, int i10, short s10, boolean z10) {
        this.f44348c.b(i9, i10, s10, z10);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0
    public void c(Http2Stream http2Stream, v0.a aVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(aVar, TypedValues.AttributesType.S_FRAME);
        try {
            this.f44351f.d(K(http2Stream), aVar);
        } catch (Throwable th2) {
            aVar.d(this.f44352g, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g0
    public void d(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Http2Exception {
        this.f44352g = (io.grpc.netty.shaded.io.netty.channel.m) io.grpc.netty.shaded.io.netty.util.internal.s.h(mVar, "ctx");
        o();
        if (F()) {
            g();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0
    public void g() throws Http2Exception {
        this.f44351f.l();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g0
    public void j(int i9) throws Http2Exception {
        this.f44351f.g(i9);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g0
    public void l(Http2Stream http2Stream, int i9) throws Http2Exception {
        this.f44351f.f(K(http2Stream), i9);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0
    public boolean n(Http2Stream http2Stream) {
        return K(http2Stream).c();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0
    public void o() throws Http2Exception {
        this.f44351f.c();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0
    public io.grpc.netty.shaded.io.netty.channel.m p() {
        return this.f44352g;
    }

    public m(y yVar, b1 b1Var) {
        this(yVar, b1Var, null);
    }

    public m(y yVar, v0.b bVar) {
        this(yVar, new c1(yVar), bVar);
    }

    public m(y yVar, b1 b1Var, v0.b bVar) {
        this.f44350e = 65535;
        this.f44346a = (y) io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, "connection");
        this.f44348c = (b1) io.grpc.netty.shaded.io.netty.util.internal.s.h(b1Var, "streamWriteDistributor");
        y.c a10 = yVar.a();
        this.f44347b = a10;
        b bVar2 = new b(yVar.d());
        this.f44349d = bVar2;
        yVar.d().d(a10, bVar2);
        H(bVar);
        this.f44351f.k(bVar2, this.f44350e);
        yVar.g(new a());
    }
}
