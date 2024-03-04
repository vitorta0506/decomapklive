package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.y;
/* loaded from: classes5.dex */
public class l implements r0 {

    /* renamed from: g  reason: collision with root package name */
    private static final e f44325g = new b();

    /* renamed from: a  reason: collision with root package name */
    private final y f44326a;

    /* renamed from: b  reason: collision with root package name */
    private final y.c f44327b;

    /* renamed from: c  reason: collision with root package name */
    private m0 f44328c;

    /* renamed from: d  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.m f44329d;

    /* renamed from: e  reason: collision with root package name */
    private float f44330e;

    /* renamed from: f  reason: collision with root package name */
    private int f44331f;

    /* loaded from: classes5.dex */
    class a extends z {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void c(Http2Stream http2Stream) {
            http2Stream.d(l.this.f44327b, l.f44325g);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void f(Http2Stream http2Stream) {
            try {
                try {
                    e E = l.this.E(http2Stream);
                    int f10 = E.f();
                    if (l.this.f44329d != null && f10 > 0 && l.this.B(E, f10)) {
                        l.this.f44329d.flush();
                    }
                } catch (Http2Exception e10) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
                }
            } finally {
                http2Stream.d(l.this.f44327b, l.f44325g);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void g(Http2Stream http2Stream) {
            y.c cVar = l.this.f44327b;
            l lVar = l.this;
            http2Stream.d(cVar, new d(http2Stream, lVar.f44331f));
        }
    }

    /* loaded from: classes5.dex */
    static class b implements e {
        b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public int a() {
            return 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public int b() {
            return 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void c(int i9) throws Http2Exception {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void d(int i9) {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void e(boolean z10) {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public int f() {
            return 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void g(int i9) throws Http2Exception {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public boolean h() throws Http2Exception {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public boolean i(int i9) throws Http2Exception {
            return false;
        }
    }

    /* loaded from: classes5.dex */
    private final class c extends d {
        c(Http2Stream http2Stream, int i9) {
            super(http2Stream, i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.d, io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void c(int i9) throws Http2Exception {
            super.c(i9);
            super.i(i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.d, io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public boolean i(int i9) throws Http2Exception {
            return false;
        }
    }

    /* loaded from: classes5.dex */
    private class d implements e {

        /* renamed from: a  reason: collision with root package name */
        private final Http2Stream f44334a;

        /* renamed from: b  reason: collision with root package name */
        private int f44335b;

        /* renamed from: c  reason: collision with root package name */
        private int f44336c;

        /* renamed from: d  reason: collision with root package name */
        private int f44337d;

        /* renamed from: e  reason: collision with root package name */
        private float f44338e;

        /* renamed from: f  reason: collision with root package name */
        private int f44339f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f44340g;

        d(Http2Stream http2Stream, int i9) {
            this.f44334a = http2Stream;
            k(i9);
            this.f44338e = l.this.f44330e;
        }

        private void j(int i9) throws Http2Exception {
            int i10 = this.f44336c;
            if (i10 - i9 >= this.f44335b) {
                this.f44336c = i10 - i9;
                return;
            }
            throw Http2Exception.streamError(this.f44334a.G(), Http2Error.INTERNAL_ERROR, "Attempting to return too many bytes for stream %d", Integer.valueOf(this.f44334a.G()));
        }

        private void l() throws Http2Exception {
            int i9 = this.f44337d - this.f44336c;
            try {
                g(i9);
                l.this.f44328c.k0(l.this.f44329d, this.f44334a.G(), i9, l.this.f44329d.F());
            } catch (Throwable th2) {
                throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, th2, "Attempting to return too many bytes for stream %d", Integer.valueOf(this.f44334a.G()));
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public int a() {
            return this.f44337d;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public int b() {
            return this.f44335b;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void c(int i9) throws Http2Exception {
            int i10 = this.f44335b - i9;
            this.f44335b = i10;
            if (i10 < this.f44339f) {
                throw Http2Exception.streamError(this.f44334a.G(), Http2Error.FLOW_CONTROL_ERROR, "Flow control window exceeded for stream: %d", Integer.valueOf(this.f44334a.G()));
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void d(int i9) {
            int min = (int) Math.min(2147483647L, Math.max(0L, this.f44337d + i9));
            int i10 = this.f44337d;
            this.f44337d = i10 + (min - i10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void e(boolean z10) {
            this.f44340g = z10;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public int f() {
            return this.f44336c - this.f44335b;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public void g(int i9) throws Http2Exception {
            if (i9 > 0 && this.f44335b > Integer.MAX_VALUE - i9) {
                throw Http2Exception.streamError(this.f44334a.G(), Http2Error.FLOW_CONTROL_ERROR, "Flow control window overflowed for stream: %d", Integer.valueOf(this.f44334a.G()));
            }
            this.f44335b += i9;
            this.f44336c += i9;
            this.f44339f = Math.min(i9, 0);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public boolean h() throws Http2Exception {
            if (!this.f44340g && this.f44337d > 0 && !l.D(this.f44334a)) {
                if (this.f44336c <= ((int) (this.f44337d * this.f44338e))) {
                    l();
                    return true;
                }
            }
            return false;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.l.e
        public boolean i(int i9) throws Http2Exception {
            j(i9);
            return h();
        }

        public void k(int i9) {
            this.f44337d = i9;
            this.f44336c = i9;
            this.f44335b = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface e {
        int a();

        int b();

        void c(int i9) throws Http2Exception;

        void d(int i9);

        void e(boolean z10);

        int f();

        void g(int i9) throws Http2Exception;

        boolean h() throws Http2Exception;

        boolean i(int i9) throws Http2Exception;
    }

    /* loaded from: classes5.dex */
    private final class f implements z0 {

        /* renamed from: a  reason: collision with root package name */
        private Http2Exception.CompositeStreamException f44342a;

        /* renamed from: b  reason: collision with root package name */
        private final int f44343b;

        f(int i9) {
            this.f44343b = i9;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z0
        public boolean a(Http2Stream http2Stream) throws Http2Exception {
            try {
                e E = l.this.E(http2Stream);
                E.g(this.f44343b);
                E.d(this.f44343b);
                return true;
            } catch (Http2Exception.StreamException e10) {
                if (this.f44342a == null) {
                    this.f44342a = new Http2Exception.CompositeStreamException(e10.error(), 4);
                }
                this.f44342a.add(e10);
                return true;
            }
        }

        public void b() throws Http2Exception.CompositeStreamException {
            Http2Exception.CompositeStreamException compositeStreamException = this.f44342a;
            if (compositeStreamException != null) {
                throw compositeStreamException;
            }
        }
    }

    public l(y yVar) {
        this(yVar, 0.5f, false);
    }

    private e A() {
        return (e) this.f44326a.d().a(this.f44327b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean B(e eVar, int i9) throws Http2Exception {
        return eVar.i(i9) | A().i(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean D(Http2Stream http2Stream) {
        return http2Stream.h() == Http2Stream.State.CLOSED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e E(Http2Stream http2Stream) {
        return (e) http2Stream.a(this.f44327b);
    }

    private static void z(float f10) {
        double d10 = f10;
        if (Double.compare(d10, 0.0d) <= 0 || Double.compare(d10, 1.0d) >= 0) {
            throw new IllegalArgumentException("Invalid ratio: " + f10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.r0
    /* renamed from: C */
    public l f(m0 m0Var) {
        this.f44328c = (m0) io.grpc.netty.shaded.io.netty.util.internal.s.h(m0Var, "frameWriter");
        return this;
    }

    public void F(float f10) {
        z(f10);
        this.f44330e = f10;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g0
    public int a() {
        return this.f44331f;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g0
    public void d(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        this.f44329d = (io.grpc.netty.shaded.io.netty.channel.m) io.grpc.netty.shaded.io.netty.util.internal.s.h(mVar, "ctx");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.r0
    public int e(Http2Stream http2Stream) {
        return E(http2Stream).a();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.r0
    public int h(Http2Stream http2Stream) {
        return E(http2Stream).f();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.r0
    public void i(Http2Stream http2Stream, kg.j jVar, int i9, boolean z10) throws Http2Exception {
        int P1 = jVar.P1() + i9;
        e A = A();
        A.c(P1);
        if (http2Stream == null || D(http2Stream)) {
            if (P1 > 0) {
                A.i(P1);
                return;
            }
            return;
        }
        e E = E(http2Stream);
        E.e(z10);
        E.c(P1);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g0
    public void j(int i9) throws Http2Exception {
        this.f44331f = i9;
        f fVar = new f(i9 - this.f44331f);
        this.f44326a.l(fVar);
        fVar.b();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g0
    public int k(Http2Stream http2Stream) {
        return E(http2Stream).b();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g0
    public void l(Http2Stream http2Stream, int i9) throws Http2Exception {
        e E = E(http2Stream);
        E.d(i9);
        E.h();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.r0
    public boolean m(Http2Stream http2Stream, int i9) throws Http2Exception {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "numBytes");
        if (i9 == 0 || http2Stream == null || D(http2Stream)) {
            return false;
        }
        if (http2Stream.G() != 0) {
            return B(E(http2Stream), i9);
        }
        throw new UnsupportedOperationException("Returning bytes for the connection window is not supported");
    }

    public l(y yVar, float f10, boolean z10) {
        Object dVar;
        this.f44331f = 65535;
        this.f44326a = (y) io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, "connection");
        F(f10);
        y.c a10 = yVar.a();
        this.f44327b = a10;
        if (z10) {
            dVar = new c(yVar.d(), this.f44331f);
        } else {
            dVar = new d(yVar.d(), this.f44331f);
        }
        yVar.d().d(a10, dVar);
        yVar.g(new a());
    }
}
