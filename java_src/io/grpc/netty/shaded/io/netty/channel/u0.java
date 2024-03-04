package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.util.internal.r;
/* loaded from: classes5.dex */
public final class u0 {

    /* renamed from: h  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43785h = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(u0.class);

    /* renamed from: i  reason: collision with root package name */
    private static final int f43786i = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.transport.pendingWriteSizeOverhead", 64);

    /* renamed from: a  reason: collision with root package name */
    private final v f43787a;

    /* renamed from: b  reason: collision with root package name */
    private final ug.j f43788b;

    /* renamed from: c  reason: collision with root package name */
    private final t0 f43789c;

    /* renamed from: d  reason: collision with root package name */
    private b f43790d;

    /* renamed from: e  reason: collision with root package name */
    private b f43791e;

    /* renamed from: f  reason: collision with root package name */
    private int f43792f;

    /* renamed from: g  reason: collision with root package name */
    private long f43793g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: f  reason: collision with root package name */
        private static final io.grpc.netty.shaded.io.netty.util.internal.r<b> f43794f = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

        /* renamed from: a  reason: collision with root package name */
        private final r.a<b> f43795a;

        /* renamed from: b  reason: collision with root package name */
        private b f43796b;

        /* renamed from: c  reason: collision with root package name */
        private long f43797c;

        /* renamed from: d  reason: collision with root package name */
        private y f43798d;

        /* renamed from: e  reason: collision with root package name */
        private Object f43799e;

        /* loaded from: classes5.dex */
        static class a implements r.b<b> {
            a() {
            }

            @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
            /* renamed from: b */
            public b a(r.a<b> aVar) {
                return new b(aVar);
            }
        }

        static b g(Object obj, int i9, y yVar) {
            b a10 = f43794f.a();
            a10.f43797c = i9;
            a10.f43799e = obj;
            a10.f43798d = yVar;
            return a10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            this.f43797c = 0L;
            this.f43796b = null;
            this.f43799e = null;
            this.f43798d = null;
            this.f43795a.a(this);
        }

        private b(r.a<b> aVar) {
            this.f43795a = aVar;
        }
    }

    public u0(m mVar) {
        this.f43789c = t0.c(mVar.d());
        this.f43787a = mVar;
        this.f43788b = mVar.m0();
    }

    private void b() {
    }

    private void e(b bVar, boolean z10) {
        b bVar2 = bVar.f43796b;
        long j10 = bVar.f43797c;
        if (z10) {
            if (bVar2 == null) {
                this.f43791e = null;
                this.f43790d = null;
                this.f43792f = 0;
                this.f43793g = 0L;
            } else {
                this.f43790d = bVar2;
                this.f43792f--;
                this.f43793g -= j10;
            }
        }
        bVar.h();
        this.f43789c.a(j10);
    }

    private static void i(y yVar, Throwable th2) {
        if ((yVar instanceof e1) || yVar.z(th2)) {
            return;
        }
        f43785h.warn("Failed to mark a promise as failure because it's done already: {}", yVar, th2);
    }

    private int k(Object obj) {
        int size = this.f43789c.size(obj);
        if (size < 0) {
            size = 0;
        }
        return size + f43786i;
    }

    public void a(Object obj, y yVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(obj, "msg");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, "promise");
        int k10 = k(obj);
        b g10 = b.g(obj, k10, yVar);
        b bVar = this.f43791e;
        if (bVar == null) {
            this.f43790d = g10;
            this.f43791e = g10;
        } else {
            bVar.f43796b = g10;
            this.f43791e = g10;
        }
        this.f43792f++;
        this.f43793g += k10;
        this.f43789c.b(g10.f43797c);
    }

    public Object c() {
        b bVar = this.f43790d;
        if (bVar == null) {
            return null;
        }
        return bVar.f43799e;
    }

    public boolean d() {
        return this.f43790d == null;
    }

    public y f() {
        b bVar = this.f43790d;
        if (bVar == null) {
            return null;
        }
        y yVar = bVar.f43798d;
        io.grpc.netty.shaded.io.netty.util.r.c(bVar.f43799e);
        e(bVar, true);
        return yVar;
    }

    public void g(Throwable th2) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(th2, "cause");
        while (true) {
            b bVar = this.f43790d;
            if (bVar != null) {
                this.f43791e = null;
                this.f43790d = null;
                this.f43792f = 0;
                this.f43793g = 0L;
                while (bVar != null) {
                    b bVar2 = bVar.f43796b;
                    io.grpc.netty.shaded.io.netty.util.r.c(bVar.f43799e);
                    y yVar = bVar.f43798d;
                    e(bVar, false);
                    i(yVar, th2);
                    bVar = bVar2;
                }
            } else {
                b();
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[EDGE_INSN: B:22:0x0043->B:14:0x0043 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0019 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:6:0x0015, B:8:0x0019, B:10:0x0026, B:12:0x0039, B:13:0x003c, B:14:0x0043), top: B:20:0x0015 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.grpc.netty.shaded.io.netty.channel.i h() {
        /*
            r8 = this;
            boolean r0 = r8.d()
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            io.grpc.netty.shaded.io.netty.channel.v r0 = r8.f43787a
            io.grpc.netty.shaded.io.netty.channel.y r0 = r0.F()
            ug.y r2 = new ug.y
            ug.j r3 = r8.f43788b
            r2.<init>(r3)
        L15:
            io.grpc.netty.shaded.io.netty.channel.u0$b r3 = r8.f43790d     // Catch: java.lang.Throwable -> L47
            if (r3 == 0) goto L43
            r8.f43791e = r1     // Catch: java.lang.Throwable -> L47
            r8.f43790d = r1     // Catch: java.lang.Throwable -> L47
            r4 = 0
            r8.f43792f = r4     // Catch: java.lang.Throwable -> L47
            r5 = 0
            r8.f43793g = r5     // Catch: java.lang.Throwable -> L47
        L24:
            if (r3 == 0) goto L15
            io.grpc.netty.shaded.io.netty.channel.u0$b r5 = io.grpc.netty.shaded.io.netty.channel.u0.b.a(r3)     // Catch: java.lang.Throwable -> L47
            java.lang.Object r6 = io.grpc.netty.shaded.io.netty.channel.u0.b.d(r3)     // Catch: java.lang.Throwable -> L47
            io.grpc.netty.shaded.io.netty.channel.y r7 = io.grpc.netty.shaded.io.netty.channel.u0.b.e(r3)     // Catch: java.lang.Throwable -> L47
            r8.e(r3, r4)     // Catch: java.lang.Throwable -> L47
            boolean r3 = r7 instanceof io.grpc.netty.shaded.io.netty.channel.e1     // Catch: java.lang.Throwable -> L47
            if (r3 != 0) goto L3c
            r2.j(r7)     // Catch: java.lang.Throwable -> L47
        L3c:
            io.grpc.netty.shaded.io.netty.channel.v r3 = r8.f43787a     // Catch: java.lang.Throwable -> L47
            r3.c(r6, r7)     // Catch: java.lang.Throwable -> L47
            r3 = r5
            goto L24
        L43:
            r2.m(r0)     // Catch: java.lang.Throwable -> L47
            goto L4b
        L47:
            r1 = move-exception
            r0.u(r1)
        L4b:
            r8.b()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.u0.h():io.grpc.netty.shaded.io.netty.channel.i");
    }

    public int j() {
        return this.f43792f;
    }
}
