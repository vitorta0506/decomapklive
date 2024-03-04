package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.j0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.n0;
/* loaded from: classes5.dex */
public class g implements j0, k0, j0.a {

    /* renamed from: a  reason: collision with root package name */
    private final n0 f44282a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f44284c;

    /* renamed from: d  reason: collision with root package name */
    private byte f44285d;

    /* renamed from: e  reason: collision with root package name */
    private int f44286e;

    /* renamed from: f  reason: collision with root package name */
    private f0 f44287f;

    /* renamed from: g  reason: collision with root package name */
    private int f44288g;

    /* renamed from: h  reason: collision with root package name */
    private e f44289h;

    /* renamed from: b  reason: collision with root package name */
    private boolean f44283b = true;

    /* renamed from: i  reason: collision with root package name */
    private int f44290i = 16384;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends e {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f44291c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44292d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f44293e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ short f44294f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ boolean f44295g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ int f44296h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ f0 f44297i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i9, io.grpc.netty.shaded.io.netty.channel.m mVar, int i10, short s10, boolean z10, int i11, f0 f0Var) {
            super(g.this, null);
            this.f44291c = i9;
            this.f44292d = mVar;
            this.f44293e = i10;
            this.f44294f = s10;
            this.f44295g = z10;
            this.f44296h = i11;
            this.f44297i = f0Var;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g.e
        public int b() {
            return this.f44291c;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g.e
        public void d(boolean z10, kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
            d c10 = c();
            c10.a(jVar, i9, this.f44292d.P(), z10);
            if (z10) {
                i0Var.l(this.f44292d, this.f44291c, c10.d(), this.f44293e, this.f44294f, this.f44295g, this.f44296h, this.f44297i.f());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends e {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f44299c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44300d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f44301e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ f0 f44302f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i9, io.grpc.netty.shaded.io.netty.channel.m mVar, int i10, f0 f0Var) {
            super(g.this, null);
            this.f44299c = i9;
            this.f44300d = mVar;
            this.f44301e = i10;
            this.f44302f = f0Var;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g.e
        public int b() {
            return this.f44299c;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g.e
        public void d(boolean z10, kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
            d c10 = c();
            c10.a(jVar, i9, this.f44300d.P(), z10);
            if (z10) {
                i0Var.a(this.f44300d, this.f44299c, c10.d(), this.f44301e, this.f44302f.f());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c extends e {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f44304c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44305d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f44306e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f44307f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i9, io.grpc.netty.shaded.io.netty.channel.m mVar, int i10, int i11) {
            super(g.this, null);
            this.f44304c = i9;
            this.f44305d = mVar;
            this.f44306e = i10;
            this.f44307f = i11;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g.e
        public int b() {
            return this.f44304c;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.g.e
        public void d(boolean z10, kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
            c().a(jVar, i9, this.f44305d.P(), z10);
            if (z10) {
                i0Var.c(this.f44305d, this.f44304c, this.f44306e, c().d(), this.f44307f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        private kg.j f44309a;

        protected d() {
        }

        private void c() throws Http2Exception {
            b();
            x.e(g.this.f44282a.configuration().f());
        }

        final void a(kg.j jVar, int i9, kg.k kVar, boolean z10) throws Http2Exception {
            if (this.f44309a == null) {
                if (i9 > g.this.f44282a.configuration().f()) {
                    c();
                }
                if (z10) {
                    this.f44309a = jVar.I1(i9);
                    return;
                } else {
                    this.f44309a = kVar.l(i9).y2(jVar, i9);
                    return;
                }
            }
            if (g.this.f44282a.configuration().f() - i9 < this.f44309a.P1()) {
                c();
            }
            if (this.f44309a.k1(i9)) {
                this.f44309a.y2(jVar, i9);
                return;
            }
            kg.j l10 = kVar.l(this.f44309a.P1() + i9);
            l10.x2(this.f44309a).y2(jVar, i9);
            this.f44309a.release();
            this.f44309a = l10;
        }

        void b() {
            kg.j jVar = this.f44309a;
            if (jVar != null) {
                jVar.release();
                this.f44309a = null;
            }
            g.this.f44289h = null;
        }

        Http2Headers d() throws Http2Exception {
            try {
                return g.this.f44282a.d(g.this.f44286e, this.f44309a);
            } finally {
                b();
            }
        }
    }

    public g(n0 n0Var) {
        this.f44282a = n0Var;
    }

    private void A(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
        int i10 = this.f44286e;
        int v10 = v(jVar);
        V(v10);
        this.f44289h = new c(i10, mVar, x.g(jVar), v10);
        this.f44289h.d(this.f44287f.d(), jVar, k(i9 - jVar.Q1(), v10), i0Var);
        L(this.f44287f.d());
    }

    private void C(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, i0 i0Var) throws Http2Exception {
        i0Var.f(mVar, this.f44286e, jVar.M1());
    }

    private void F(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, i0 i0Var) throws Http2Exception {
        if (this.f44287f.b()) {
            i0Var.g(mVar);
            return;
        }
        int i9 = this.f44288g / 6;
        x0 x0Var = new x0();
        for (int i10 = 0; i10 < i9; i10++) {
            char O1 = (char) jVar.O1();
            try {
                x0Var.q(O1, Long.valueOf(jVar.M1()));
            } catch (IllegalArgumentException e10) {
                if (O1 == 4) {
                    throw Http2Exception.connectionError(Http2Error.FLOW_CONTROL_ERROR, e10, e10.getMessage(), new Object[0]);
                }
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, e10, e10.getMessage(), new Object[0]);
            }
        }
        i0Var.b(mVar, x0Var);
    }

    private void I(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
        i0Var.j(mVar, this.f44285d, this.f44286e, this.f44287f, jVar.K1(i9 - jVar.Q1()));
    }

    private void K(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, i0 i0Var) throws Http2Exception {
        int g10 = x.g(jVar);
        if (g10 != 0) {
            i0Var.k(mVar, this.f44286e, g10);
        } else {
            int i9 = this.f44286e;
            throw Http2Exception.streamError(i9, Http2Error.PROTOCOL_ERROR, "Received WINDOW_UPDATE with delta 0 for stream: %d", Integer.valueOf(i9));
        }
    }

    private void L(boolean z10) {
        if (z10) {
            j();
        }
    }

    private void M() throws Http2Exception {
        if (this.f44286e == 0) {
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Frame of type %s must be associated with a stream.", Byte.valueOf(this.f44285d));
        }
    }

    private void N() throws Http2Exception {
        M();
        e eVar = this.f44289h;
        if (eVar != null) {
            if (this.f44286e == eVar.b()) {
                if (this.f44288g < this.f44287f.h()) {
                    throw Http2Exception.streamError(this.f44286e, Http2Error.FRAME_SIZE_ERROR, "Frame length %d too small for padding.", Integer.valueOf(this.f44288g));
                }
                return;
            }
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Continuation stream ID does not match pending headers. Expected %d, but received %d.", Integer.valueOf(this.f44289h.b()), Integer.valueOf(this.f44286e));
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Received %s frame but not currently processing headers.", Byte.valueOf(this.f44285d));
    }

    private void P() throws Http2Exception {
        M();
        U();
        if (this.f44288g < this.f44287f.h()) {
            throw Http2Exception.streamError(this.f44286e, Http2Error.FRAME_SIZE_ERROR, "Frame length %d too small.", Integer.valueOf(this.f44288g));
        }
    }

    private void R() throws Http2Exception {
        U();
        if (this.f44286e == 0) {
            int i9 = this.f44288g;
            if (i9 < 8) {
                throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Frame length %d too small.", Integer.valueOf(i9));
            }
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "A stream ID must be zero.", new Object[0]);
    }

    private void T() throws Http2Exception {
        M();
        U();
        if (this.f44288g >= this.f44287f.h() + this.f44287f.g()) {
            return;
        }
        int i9 = this.f44286e;
        Http2Error http2Error = Http2Error.FRAME_SIZE_ERROR;
        throw Http2Exception.streamError(i9, http2Error, "Frame length too small." + this.f44288g, new Object[0]);
    }

    private void U() throws Http2Exception {
        if (this.f44289h != null) {
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Received frame of type %s while processing headers on stream %d.", Byte.valueOf(this.f44285d), Integer.valueOf(this.f44289h.b()));
        }
    }

    private void V(int i9) throws Http2Exception {
        if (k(this.f44288g, i9) < 0) {
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Frame payload too small for padding.", new Object[0]);
        }
    }

    private void W() throws Http2Exception {
        U();
        if (this.f44286e == 0) {
            int i9 = this.f44288g;
            if (i9 != 8) {
                throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Frame length %d incorrect size for ping.", Integer.valueOf(i9));
            }
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "A stream ID must be zero.", new Object[0]);
    }

    private void X() throws Http2Exception {
        M();
        U();
        int i9 = this.f44288g;
        if (i9 != 5) {
            throw Http2Exception.streamError(this.f44286e, Http2Error.FRAME_SIZE_ERROR, "Invalid frame length %d.", Integer.valueOf(i9));
        }
    }

    private void Y() throws Http2Exception {
        U();
        int h10 = this.f44287f.h() + 4;
        int i9 = this.f44288g;
        if (i9 < h10) {
            throw Http2Exception.streamError(this.f44286e, Http2Error.FRAME_SIZE_ERROR, "Frame length %d too small.", Integer.valueOf(i9));
        }
    }

    private void Z() throws Http2Exception {
        M();
        U();
        int i9 = this.f44288g;
        if (i9 != 4) {
            throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Invalid frame length %d.", Integer.valueOf(i9));
        }
    }

    private void c0() throws Http2Exception {
        U();
        if (this.f44286e == 0) {
            if (this.f44287f.b() && this.f44288g > 0) {
                throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Ack settings frame must have an empty payload.", new Object[0]);
            }
            int i9 = this.f44288g;
            if (i9 % 6 > 0) {
                throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Frame length %d invalid.", Integer.valueOf(i9));
            }
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "A stream ID must be zero.", new Object[0]);
    }

    private static void d0(int i9, String str) throws Http2Exception {
        if (i9 < 0) {
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "%s must be >= 0", str);
        }
    }

    private void f0() throws Http2Exception {
        U();
    }

    private void g0() throws Http2Exception {
        U();
        d0(this.f44286e, "Stream ID");
        int i9 = this.f44288g;
        if (i9 != 4) {
            throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Invalid frame length %d.", Integer.valueOf(i9));
        }
    }

    private void j() {
        e eVar = this.f44289h;
        if (eVar != null) {
            eVar.a();
            this.f44289h = null;
        }
    }

    private static int k(int i9, int i10) {
        return i10 == 0 ? i9 : i9 - (i10 - 1);
    }

    private void o(kg.j jVar) throws Http2Exception {
        if (jVar.P1() < 9) {
            return;
        }
        int N1 = jVar.N1();
        this.f44288g = N1;
        if (N1 <= this.f44290i) {
            this.f44285d = jVar.x1();
            this.f44287f = new f0(jVar.L1());
            this.f44286e = x.g(jVar);
            this.f44283b = false;
            switch (this.f44285d) {
                case 0:
                    P();
                    return;
                case 1:
                    T();
                    return;
                case 2:
                    X();
                    return;
                case 3:
                    Z();
                    return;
                case 4:
                    c0();
                    return;
                case 5:
                    Y();
                    return;
                case 6:
                    W();
                    return;
                case 7:
                    R();
                    return;
                case 8:
                    g0();
                    return;
                case 9:
                    N();
                    return;
                default:
                    f0();
                    return;
            }
        }
        throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Frame length: %d exceeds maximum: %d", Integer.valueOf(N1), Integer.valueOf(this.f44290i));
    }

    private void p(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, i0 i0Var) throws Http2Exception {
        if (jVar.P1() < this.f44288g) {
            return;
        }
        int Q1 = jVar.Q1() + this.f44288g;
        this.f44283b = true;
        switch (this.f44285d) {
            case 0:
                r(mVar, jVar, Q1, i0Var);
                break;
            case 1:
                t(mVar, jVar, Q1, i0Var);
                break;
            case 2:
                y(mVar, jVar, i0Var);
                break;
            case 3:
                C(mVar, jVar, i0Var);
                break;
            case 4:
                F(mVar, jVar, i0Var);
                break;
            case 5:
                A(mVar, jVar, Q1, i0Var);
                break;
            case 6:
                w(mVar, jVar.G1(), i0Var);
                break;
            case 7:
                s(mVar, jVar, Q1, i0Var);
                break;
            case 8:
                K(mVar, jVar, i0Var);
                break;
            case 9:
                q(jVar, Q1, i0Var);
                break;
            default:
                I(mVar, jVar, Q1, i0Var);
                break;
        }
        jVar.R1(Q1);
    }

    private void q(kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
        this.f44289h.d(this.f44287f.d(), jVar, i9 - jVar.Q1(), i0Var);
        L(this.f44287f.d());
    }

    private void r(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
        int v10 = v(jVar);
        V(v10);
        i0Var.d(mVar, this.f44286e, jVar.K1(k(i9 - jVar.Q1(), v10)), v10, this.f44287f.f());
    }

    private static void s(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
        i0Var.m(mVar, x.g(jVar), jVar.M1(), jVar.K1(i9 - jVar.Q1()));
    }

    private void t(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, int i9, i0 i0Var) throws Http2Exception {
        int i10 = this.f44286e;
        f0 f0Var = this.f44287f;
        int v10 = v(jVar);
        V(v10);
        if (this.f44287f.m()) {
            long M1 = jVar.M1();
            boolean z10 = (2147483648L & M1) != 0;
            int i11 = (int) (M1 & 2147483647L);
            int i12 = this.f44286e;
            if (i11 != i12) {
                short L1 = (short) (jVar.L1() + 1);
                int k10 = k(i9 - jVar.Q1(), v10);
                a aVar = new a(i10, mVar, i11, L1, z10, v10, f0Var);
                this.f44289h = aVar;
                aVar.d(this.f44287f.d(), jVar, k10, i0Var);
                L(this.f44287f.d());
                return;
            }
            throw Http2Exception.streamError(i12, Http2Error.PROTOCOL_ERROR, "A stream cannot depend on itself.", new Object[0]);
        }
        this.f44289h = new b(i10, mVar, v10, f0Var);
        this.f44289h.d(this.f44287f.d(), jVar, k(i9 - jVar.Q1(), v10), i0Var);
        L(this.f44287f.d());
    }

    private int v(kg.j jVar) {
        if (this.f44287f.k()) {
            return jVar.L1() + 1;
        }
        return 0;
    }

    private void w(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10, i0 i0Var) throws Http2Exception {
        if (this.f44287f.b()) {
            i0Var.h(mVar, j10);
        } else {
            i0Var.i(mVar, j10);
        }
    }

    private void y(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, i0 i0Var) throws Http2Exception {
        long M1 = jVar.M1();
        boolean z10 = (2147483648L & M1) != 0;
        int i9 = (int) (M1 & 2147483647L);
        int i10 = this.f44286e;
        if (i9 != i10) {
            i0Var.e(mVar, this.f44286e, i9, (short) (jVar.L1() + 1), z10);
            return;
        }
        throw Http2Exception.streamError(i10, Http2Error.PROTOCOL_ERROR, "A stream cannot depend on itself.", new Object[0]);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.j0
    public void T0(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, i0 i0Var) throws Http2Exception {
        if (this.f44284c) {
            jVar.l2(jVar.P1());
            return;
        }
        do {
            try {
                if (this.f44283b) {
                    o(jVar);
                    if (this.f44283b) {
                        return;
                    }
                }
                p(mVar, jVar, i0Var);
                if (!this.f44283b) {
                    return;
                }
            } catch (Http2Exception e10) {
                this.f44284c = !Http2Exception.isStreamError(e10);
                throw e10;
            } catch (RuntimeException e11) {
                this.f44284c = true;
                throw e11;
            } catch (Throwable th2) {
                this.f44284c = true;
                io.grpc.netty.shaded.io.netty.util.internal.t.R0(th2);
                return;
            }
        } while (jVar.j1());
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.j0.a
    public n0.a a() {
        return this.f44282a.configuration();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.j0.a
    public k0 c() {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.j0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        j();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.j0
    public j0.a configuration() {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.k0
    public void d(int i9) throws Http2Exception {
        if (x.f(i9)) {
            this.f44290i = i9;
            return;
        }
        throw Http2Exception.streamError(this.f44286e, Http2Error.FRAME_SIZE_ERROR, "Invalid MAX_FRAME_SIZE specified in sent settings: %d", Integer.valueOf(i9));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.k0
    public int e() {
        return this.f44290i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public abstract class e {

        /* renamed from: a  reason: collision with root package name */
        private final d f44311a;

        private e() {
            this.f44311a = new d();
        }

        final void a() {
            this.f44311a.b();
        }

        abstract int b();

        final d c() {
            return this.f44311a;
        }

        abstract void d(boolean z10, kg.j jVar, int i9, i0 i0Var) throws Http2Exception;

        /* synthetic */ e(g gVar, a aVar) {
            this();
        }
    }
}
