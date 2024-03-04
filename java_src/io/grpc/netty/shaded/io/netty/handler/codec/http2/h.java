package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.m0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.o0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.x;
import tg.b;
/* loaded from: classes5.dex */
public class h implements m0, k0, m0.a {

    /* renamed from: c  reason: collision with root package name */
    private static final kg.j f44313c = kg.s0.i(kg.s0.g(255).J2(255)).B();

    /* renamed from: a  reason: collision with root package name */
    private final o0 f44314a;

    /* renamed from: b  reason: collision with root package name */
    private int f44315b;

    public h() {
        this(new k());
    }

    private static int h(int i9) {
        return i9 - 1;
    }

    private static void i(long j10) {
        if (j10 < 0 || j10 > 4294967295L) {
            throw new IllegalArgumentException("Invalid errorCode: " + j10);
        }
    }

    private static void j(int i9, String str) {
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, str);
    }

    private static void k(int i9, String str) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, str);
    }

    private static void o(short s10) {
        if (s10 < 1 || s10 > 256) {
            throw new IllegalArgumentException("Invalid weight: " + ((int) s10));
        }
    }

    private static void p(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "windowSizeIncrement");
    }

    private io.grpc.netty.shaded.io.netty.channel.i q(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, x.a aVar) {
        f0 f0Var = new f0();
        if (jVar.j1()) {
            int min = Math.min(jVar.P1(), this.f44315b);
            kg.j l10 = mVar.P().l(10);
            x.k(l10, min, (byte) 9, f0Var, i9);
            do {
                int min2 = Math.min(jVar.P1(), this.f44315b);
                Object I1 = jVar.I1(min2);
                if (jVar.j1()) {
                    mVar.c(l10.retain(), aVar.v0());
                } else {
                    f0Var = f0Var.c(true);
                    l10.release();
                    l10 = mVar.P().l(10);
                    x.k(l10, min2, (byte) 9, f0Var, i9);
                    mVar.c(l10, aVar.v0());
                }
                mVar.c(I1, aVar.v0());
            } while (jVar.j1());
            return aVar;
        }
        return aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00df, code lost:
        if (r7 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private io.grpc.netty.shaded.io.netty.channel.i r(io.grpc.netty.shaded.io.netty.channel.m r16, int r17, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers r18, int r19, boolean r20, boolean r21, int r22, short r23, boolean r24, io.grpc.netty.shaded.io.netty.channel.y r25) {
        /*
            r15 = this;
            r1 = r15
            r0 = r16
            r2 = r17
            r3 = r19
            r4 = r21
            r5 = r22
            io.grpc.netty.shaded.io.netty.handler.codec.http2.x$a r6 = new io.grpc.netty.shaded.io.netty.handler.codec.http2.x$a
            io.grpc.netty.shaded.io.netty.channel.e r7 = r16.d()
            ug.j r8 = r16.m0()
            r9 = r25
            r6.<init>(r9, r7, r8)
            r7 = 0
            java.lang.String r8 = "Stream ID"
            j(r2, r8)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r4 == 0) goto L2d
            java.lang.String r8 = "Stream Dependency"
            k(r5, r8)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.grpc.netty.shaded.io.netty.handler.codec.http2.x.j(r19)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            o(r23)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
        L2d:
            kg.k r8 = r16.P()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            kg.j r7 = r8.buffer()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.grpc.netty.shaded.io.netty.handler.codec.http2.o0 r8 = r1.f44314a     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            r9 = r18
            r8.c(r2, r9, r7)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.grpc.netty.shaded.io.netty.handler.codec.http2.f0 r8 = new io.grpc.netty.shaded.io.netty.handler.codec.http2.f0     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            r8.<init>()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            r9 = r20
            io.grpc.netty.shaded.io.netty.handler.codec.http2.f0 r8 = r8.e(r9)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.grpc.netty.shaded.io.netty.handler.codec.http2.f0 r8 = r8.l(r4)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            r9 = 0
            r10 = 1
            if (r3 <= 0) goto L51
            r11 = 1
            goto L52
        L51:
            r11 = 0
        L52:
            io.grpc.netty.shaded.io.netty.handler.codec.http2.f0 r8 = r8.j(r11)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r11 = r8.g()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r11 = r11 + r3
            int r12 = r1.f44315b     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r12 = r12 - r11
            int r13 = r7.P1()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r12 = java.lang.Math.min(r13, r12)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            kg.j r12 = r7.I1(r12)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            boolean r13 = r7.j1()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r13 != 0) goto L72
            r13 = 1
            goto L73
        L72:
            r13 = 0
        L73:
            r8.c(r13)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r13 = r12.P1()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r13 = r13 + r11
            kg.k r11 = r16.P()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            r14 = 15
            kg.j r11 = r11.l(r14)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.grpc.netty.shaded.io.netty.handler.codec.http2.x.k(r11, r13, r10, r8, r2)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            s(r11, r3)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r4 == 0) goto L9f
            if (r24 == 0) goto L97
            r13 = 2147483648(0x80000000, double:1.0609978955E-314)
            long r4 = (long) r5     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            long r4 = r4 | r13
            int r5 = (int) r4     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
        L97:
            r11.E2(r5)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r4 = r23 + (-1)
            r11.u2(r4)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
        L9f:
            io.grpc.netty.shaded.io.netty.channel.y r4 = r6.v0()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            r0.c(r11, r4)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.grpc.netty.shaded.io.netty.channel.y r4 = r6.v0()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            r0.c(r12, r4)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r4 = h(r19)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r4 <= 0) goto Lc4
            kg.j r4 = io.grpc.netty.shaded.io.netty.handler.codec.http2.h.f44313c     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            int r3 = h(r19)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            kg.j r3 = r4.n2(r9, r3)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            io.grpc.netty.shaded.io.netty.channel.y r4 = r6.v0()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            r0.c(r3, r4)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
        Lc4:
            boolean r3 = r8.d()     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            if (r3 != 0) goto Le1
            r15.q(r0, r2, r7, r6)     // Catch: java.lang.Throwable -> Lce io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception -> Ldb
            goto Le1
        Lce:
            r0 = move-exception
            r6.u(r0)     // Catch: java.lang.Throwable -> Le9
            r6.u0()     // Catch: java.lang.Throwable -> Le9
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(r0)     // Catch: java.lang.Throwable -> Le9
            if (r7 == 0) goto Le4
            goto Le1
        Ldb:
            r0 = move-exception
            r6.u(r0)     // Catch: java.lang.Throwable -> Le9
            if (r7 == 0) goto Le4
        Le1:
            r7.release()
        Le4:
            io.grpc.netty.shaded.io.netty.channel.y r0 = r6.u0()
            return r0
        Le9:
            r0 = move-exception
            if (r7 == 0) goto Lef
            r7.release()
        Lef:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.codec.http2.h.r(io.grpc.netty.shaded.io.netty.channel.m, int, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers, int, boolean, boolean, int, short, boolean, io.grpc.netty.shaded.io.netty.channel.y):io.grpc.netty.shaded.io.netty.channel.i");
    }

    private static void s(kg.j jVar, int i9) {
        if (i9 > 0) {
            jVar.u2(i9 - 1);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i B(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return r(mVar, i9, http2Headers, i11, z11, true, i10, s10, z10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i F1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        try {
            j(i9, "Stream ID");
            i(j10);
            kg.j l10 = mVar.P().l(13);
            x.k(l10, 4, (byte) 3, new f0(), i9);
            l10.E2((int) j10);
            return mVar.c(l10, yVar);
        } catch (Throwable th2) {
            return yVar.u(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i N1(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        try {
            kg.j l10 = mVar.P().l(9);
            x.k(l10, 0, (byte) 4, new f0().a(true), 0);
            return mVar.c(l10, yVar);
        } catch (Throwable th2) {
            return yVar.u(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i S0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        x.a aVar = new x.a(yVar, mVar.d(), mVar.m0());
        try {
            k(i9, "Last Stream ID");
            i(j10);
            kg.j l10 = mVar.P().l(17);
            x.k(l10, jVar.P1() + 8, (byte) 7, new f0(), 0);
            l10.E2(i9);
            l10.E2((int) j10);
            mVar.c(l10, aVar.v0());
            try {
                mVar.c(jVar, aVar.v0());
            } catch (Throwable th2) {
                aVar.u(th2);
            }
            return aVar.u0();
        } catch (Throwable th3) {
            try {
                jVar.release();
                return aVar;
            } finally {
                aVar.u(th3);
                aVar.u0();
            }
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0.a
    public o0.c a() {
        return this.f44314a.configuration();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013f A[Catch: all -> 0x0159, TRY_LEAVE, TryCatch #2 {all -> 0x0159, blocks: (B:36:0x00d7, B:42:0x00ff, B:46:0x0106, B:49:0x011c, B:54:0x012e, B:55:0x0139, B:57:0x013f), top: B:82:0x00d7 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x016b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.e0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.grpc.netty.shaded.io.netty.channel.i b(io.grpc.netty.shaded.io.netty.channel.m r17, int r18, kg.j r19, int r20, boolean r21, io.grpc.netty.shaded.io.netty.channel.y r22) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.codec.http2.h.b(io.grpc.netty.shaded.io.netty.channel.m, int, kg.j, int, boolean, io.grpc.netty.shaded.io.netty.channel.y):io.grpc.netty.shaded.io.netty.channel.i");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0.a
    public k0 c() {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public m0.a configuration() {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.k0
    public void d(int i9) throws Http2Exception {
        if (!x.f(i9)) {
            throw Http2Exception.connectionError(Http2Error.FRAME_SIZE_ERROR, "Invalid MAX_FRAME_SIZE specified in sent settings: %d", Integer.valueOf(i9));
        }
        this.f44315b = i9;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.k0
    public int e() {
        return this.f44315b;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i i1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return r(mVar, i9, http2Headers, i10, z10, false, 0, (short) 0, false, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i k0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        try {
            k(i9, "Stream ID");
            p(i10);
            kg.j l10 = mVar.P().l(13);
            x.k(l10, 4, (byte) 8, new f0(), i9);
            l10.E2(i10);
            return mVar.c(l10, yVar);
        } catch (Throwable th2) {
            return yVar.u(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i m0(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        try {
            io.grpc.netty.shaded.io.netty.util.internal.s.h(x0Var, "settings");
            int size = x0Var.size() * 6;
            kg.j l10 = mVar.P().l(size + 9);
            x.k(l10, size, (byte) 4, new f0(), 0);
            for (b.a<Long> aVar : x0Var.entries()) {
                l10.C2(aVar.key());
                l10.E2(aVar.value().intValue());
            }
            return mVar.c(l10, yVar);
        } catch (Throwable th2) {
            return yVar.u(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i s0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        f0 a10 = z10 ? new f0().a(true) : new f0();
        kg.j l10 = mVar.P().l(17);
        x.k(l10, 8, (byte) 6, a10, 0);
        l10.G2(j10);
        return mVar.c(l10, yVar);
    }

    public h(o0 o0Var) {
        this.f44314a = o0Var;
        this.f44315b = 16384;
    }
}
