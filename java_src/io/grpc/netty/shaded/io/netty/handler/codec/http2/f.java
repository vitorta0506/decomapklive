package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http.HttpStatusClass;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.m0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.o0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.v0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.x;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes5.dex */
public class f implements b0, y0 {

    /* renamed from: a  reason: collision with root package name */
    private final m0 f44259a;

    /* renamed from: b  reason: collision with root package name */
    private final y f44260b;

    /* renamed from: c  reason: collision with root package name */
    private q0 f44261c;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<x0> f44262d = new ArrayDeque(4);

    /* renamed from: e  reason: collision with root package name */
    private Queue<x0> f44263e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44264a;

        a(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f44264a = mVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            Throwable L = iVar.L();
            if (L != null) {
                f.this.f44261c.c(this.f44264a, true, L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44266a;

        static {
            int[] iArr = new int[Http2Stream.State.values().length];
            f44266a = iArr;
            try {
                iArr[Http2Stream.State.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44266a[Http2Stream.State.HALF_CLOSED_REMOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44266a[Http2Stream.State.RESERVED_LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public abstract class c implements v0.a, io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        protected final Http2Stream f44267a;

        /* renamed from: b  reason: collision with root package name */
        protected io.grpc.netty.shaded.io.netty.channel.y f44268b;

        /* renamed from: c  reason: collision with root package name */
        protected boolean f44269c;

        /* renamed from: d  reason: collision with root package name */
        protected int f44270d;

        c(Http2Stream http2Stream, int i9, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "padding");
            this.f44270d = i9;
            this.f44269c = z10;
            this.f44267a = http2Stream;
            this.f44268b = yVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public void c() {
            if (this.f44269c) {
                f.this.f44261c.g(this.f44267a, this.f44268b);
            }
        }

        @Override // ug.r
        /* renamed from: f */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            if (iVar.p0()) {
                return;
            }
            d(f.this.m().p(), iVar.L());
        }
    }

    /* loaded from: classes5.dex */
    private final class d extends c {

        /* renamed from: f  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.channel.z f44272f;

        /* renamed from: g  reason: collision with root package name */
        private int f44273g;

        d(Http2Stream http2Stream, kg.j jVar, int i9, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            super(http2Stream, i9, z10, yVar);
            io.grpc.netty.shaded.io.netty.channel.z zVar = new io.grpc.netty.shaded.io.netty.channel.z(yVar.d());
            this.f44272f = zVar;
            zVar.c(jVar, yVar);
            this.f44273g = zVar.n();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v11, types: [io.grpc.netty.shaded.io.netty.channel.y] */
        /* JADX WARN: Type inference failed for: r9v0, types: [io.grpc.netty.shaded.io.netty.channel.y] */
        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public void a(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9) {
            int n9 = this.f44272f.n();
            if (!this.f44269c) {
                if (n9 == 0) {
                    if (this.f44272f.m()) {
                        this.f44273g = 0;
                        this.f44270d = 0;
                        return;
                    }
                    ?? c10 = mVar.F().c((ug.r<? extends ug.q<? super Void>>) this);
                    mVar.c(this.f44272f.x(0, c10), c10);
                    return;
                } else if (i9 == 0) {
                    return;
                }
            }
            int min = Math.min(n9, i9);
            ?? c11 = mVar.F().c((ug.r<? extends ug.q<? super Void>>) this);
            kg.j x10 = this.f44272f.x(min, c11);
            this.f44273g = this.f44272f.n();
            int min2 = Math.min(i9 - min, this.f44270d);
            this.f44270d -= min2;
            f.this.Y0().b(mVar, this.f44267a.G(), x10, min2, this.f44269c && size() == 0, c11);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public boolean b(io.grpc.netty.shaded.io.netty.channel.m mVar, v0.a aVar) {
            if (d.class == aVar.getClass()) {
                d dVar = (d) aVar;
                if (Integer.MAX_VALUE - dVar.size() < size()) {
                    return false;
                }
                dVar.f44272f.j(this.f44272f);
                this.f44273g = this.f44272f.n();
                this.f44270d = Math.max(this.f44270d, dVar.f44270d);
                this.f44269c = dVar.f44269c;
                return true;
            }
            return false;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public void d(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) {
            this.f44272f.w(th2);
            f.this.f44261c.c(mVar, true, th2);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public int size() {
            return this.f44273g + this.f44270d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class e extends c {

        /* renamed from: f  reason: collision with root package name */
        private final Http2Headers f44275f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f44276g;

        /* renamed from: h  reason: collision with root package name */
        private final int f44277h;

        /* renamed from: i  reason: collision with root package name */
        private final short f44278i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f44279j;

        e(Http2Stream http2Stream, Http2Headers http2Headers, boolean z10, int i9, short s10, boolean z11, int i10, boolean z12, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            super(http2Stream, i10, z12, yVar.f0());
            this.f44275f = http2Headers;
            this.f44276g = z10;
            this.f44277h = i9;
            this.f44278i = s10;
            this.f44279j = z11;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public void a(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9) {
            boolean p10 = f.p(this.f44267a, this.f44275f, f.this.f44260b.m(), this.f44269c);
            this.f44268b.c((ug.r<? extends ug.q<? super Void>>) this);
            if (f.o(f.this.f44259a, mVar, this.f44267a.G(), this.f44275f, this.f44276g, this.f44277h, this.f44278i, this.f44279j, this.f44270d, this.f44269c, this.f44268b).L() == null) {
                this.f44267a.p(p10);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public boolean b(io.grpc.netty.shaded.io.netty.channel.m mVar, v0.a aVar) {
            return false;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public void d(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) {
            if (mVar != null) {
                f.this.f44261c.c(mVar, true, th2);
            }
            this.f44268b.z(th2);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.v0.a
        public int size() {
            return 0;
        }
    }

    public f(y yVar, m0 m0Var) {
        this.f44260b = (y) io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, "connection");
        this.f44259a = (m0) io.grpc.netty.shaded.io.netty.util.internal.s.h(m0Var, "frameWriter");
        if (yVar.b().m() == null) {
            yVar.b().o(new m(yVar));
        }
    }

    private void j(io.grpc.netty.shaded.io.netty.channel.i iVar, io.grpc.netty.shaded.io.netty.channel.m mVar) {
        iVar.c((ug.r<? extends ug.q<? super Void>>) new a(mVar));
    }

    private Http2Stream k(int i9) {
        String str;
        Http2Stream c10 = this.f44260b.c(i9);
        if (c10 == null) {
            if (this.f44260b.k(i9)) {
                str = "Stream no longer exists: " + i9;
            } else {
                str = "Stream does not exist: " + i9;
            }
            throw new IllegalArgumentException(str);
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static io.grpc.netty.shaded.io.netty.channel.i o(m0 m0Var, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, boolean z10, int i10, short s10, boolean z11, int i11, boolean z12, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        if (z10) {
            return m0Var.B(mVar, i9, http2Headers, i10, s10, z11, i11, z12, yVar);
        }
        return m0Var.i1(mVar, i9, http2Headers, i11, z12, yVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p(Http2Stream http2Stream, Http2Headers http2Headers, boolean z10, boolean z11) {
        boolean z12 = z10 && HttpStatusClass.valueOf(http2Headers.t()) == HttpStatusClass.INFORMATIONAL;
        if (((z12 || !z11) && http2Stream.i()) || http2Stream.j()) {
            throw new IllegalStateException("Stream " + http2Stream.G() + " sent too many headers EOS: " + z11);
        }
        return z12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    private io.grpc.netty.shaded.io.netty.channel.i q(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, boolean z10, int i10, short s10, boolean z11, int i11, boolean z12, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        int i12;
        Http2Stream http2Stream;
        boolean p10;
        io.grpc.netty.shaded.io.netty.channel.i o10;
        Throwable L;
        Http2Stream http2Stream2;
        io.grpc.netty.shaded.io.netty.channel.y yVar2 = yVar;
        try {
            Http2Stream c10 = this.f44260b.c(i9);
            if (c10 == null) {
                try {
                    c10 = this.f44260b.f().z(i9, false);
                } catch (Http2Exception e10) {
                    if (this.f44260b.b().p(i9)) {
                        yVar2.z(new IllegalStateException("Stream no longer exists: " + i9, e10));
                        return yVar2;
                    }
                    throw e10;
                }
            } else {
                int i13 = b.f44266a[c10.h().ordinal()];
                if (i13 != 1 && i13 != 2) {
                    if (i13 == 3) {
                        c10.m(z12);
                    } else {
                        throw new IllegalStateException("Stream " + c10.G() + " in unexpected state " + c10.h());
                    }
                }
            }
            http2Stream = c10;
            v0 m10 = m();
            if (z12) {
                try {
                    if (m10.n(http2Stream)) {
                        m10.c(http2Stream, new e(http2Stream, http2Headers, z10, i10, s10, z11, i11, true, yVar));
                        return yVar2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    i12 = mVar;
                    this.f44261c.c(i12, true, th);
                    yVar2.z(th);
                    return yVar2;
                }
            }
            yVar2 = yVar.f0();
            p10 = p(http2Stream, http2Headers, this.f44260b.m(), z12);
            i12 = i9;
            o10 = o(this.f44259a, mVar, i12, http2Headers, z10, i10, s10, z11, i11, z12, yVar2);
            L = o10.L();
        } catch (Throwable th3) {
            th = th3;
            i12 = mVar;
        }
        try {
            if (L == null) {
                http2Stream.p(p10);
                if (o10.p0()) {
                    i12 = mVar;
                    http2Stream2 = http2Stream;
                } else {
                    io.grpc.netty.shaded.io.netty.channel.m mVar2 = mVar;
                    http2Stream2 = http2Stream;
                    j(o10, mVar2);
                    i12 = mVar2;
                }
            } else {
                io.grpc.netty.shaded.io.netty.channel.m mVar3 = mVar;
                http2Stream2 = http2Stream;
                this.f44261c.c(mVar3, true, L);
                i12 = mVar3;
            }
            if (z12) {
                this.f44261c.g(http2Stream2, o10);
            }
            return o10;
        } catch (Throwable th4) {
            th = th4;
            this.f44261c.c(i12, true, th);
            yVar2.z(th);
            return yVar2;
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i B(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return q(mVar, i9, http2Headers, true, i10, s10, z10, i11, z11, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i F1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44261c.d(mVar, i9, j10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public void G1(x0 x0Var) throws Http2Exception {
        Boolean J = x0Var.J();
        m0.a configuration = configuration();
        o0.c a10 = configuration.a();
        k0 c10 = configuration.c();
        if (J != null) {
            if (!this.f44260b.m() && J.booleanValue()) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Client received a value of ENABLE_PUSH specified to other than 0", new Object[0]);
            }
            this.f44260b.b().s(J.booleanValue());
        }
        Long D = x0Var.D();
        if (D != null) {
            this.f44260b.f().u((int) Math.min(D.longValue(), 2147483647L));
        }
        Long z10 = x0Var.z();
        if (z10 != null) {
            a10.a((int) Math.min(z10.longValue(), 2147483647L));
        }
        Long H = x0Var.H();
        if (H != null) {
            a10.b(H.longValue());
        }
        Integer F = x0Var.F();
        if (F != null) {
            c10.d(F.intValue());
        }
        Integer B = x0Var.B();
        if (B != null) {
            m().j(B.intValue());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i N1(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        Queue<x0> queue = this.f44263e;
        if (queue == null) {
            return this.f44259a.N1(mVar, yVar);
        }
        x0 poll = queue.poll();
        if (poll == null) {
            return yVar.u(new Http2Exception(Http2Error.INTERNAL_ERROR, "attempted to write a SETTINGS ACK with no  pending SETTINGS"));
        }
        x.a aVar = new x.a(yVar, mVar.d(), mVar.m0());
        this.f44259a.N1(mVar, aVar.v0());
        io.grpc.netty.shaded.io.netty.channel.y v02 = aVar.v0();
        try {
            G1(poll);
            v02.m();
        } catch (Throwable th2) {
            v02.u(th2);
            this.f44261c.c(mVar, true, th2);
        }
        return aVar.u0();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public x0 O() {
        return this.f44262d.poll();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i S0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44261c.b(mVar, i9, j10, jVar, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public m0 Y0() {
        return this.f44259a;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y0
    public void a(x0 x0Var) {
        if (this.f44263e == null) {
            this.f44263e = new ArrayDeque(2);
        }
        this.f44263e.add(x0Var);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.e0
    public io.grpc.netty.shaded.io.netty.channel.i b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        io.grpc.netty.shaded.io.netty.channel.y f02 = yVar.f0();
        try {
            Http2Stream k10 = k(i9);
            int i11 = b.f44266a[k10.h().ordinal()];
            if (i11 != 1 && i11 != 2) {
                throw new IllegalStateException("Stream " + k10.G() + " in unexpected state " + k10.h());
            }
            m().c(k10, new d(k10, jVar, i10, z10, f02));
            return f02;
        } catch (Throwable th2) {
            jVar.release();
            return f02.u(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f44259a.close();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public m0.a configuration() {
        return this.f44259a.configuration();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public y connection() {
        return this.f44260b;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public void f(q0 q0Var) {
        this.f44261c = (q0) io.grpc.netty.shaded.io.netty.util.internal.s.h(q0Var, "lifecycleManager");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i i1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return q(mVar, i9, http2Headers, false, 0, (short) 0, false, i10, z10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i k0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return yVar.u(new UnsupportedOperationException("Use the Http2[Inbound|Outbound]FlowController objects to control window sizes"));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public final v0 m() {
        return connection().b().m();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i m0(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44262d.add(x0Var);
        try {
            if (x0Var.J() != null && this.f44260b.m()) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Server sending SETTINGS frame with ENABLE_PUSH specified", new Object[0]);
            }
            return this.f44259a.m0(mVar, x0Var, yVar);
        } catch (Throwable th2) {
            return yVar.u(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i s0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44259a.s0(mVar, z10, j10, yVar);
    }
}
