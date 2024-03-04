package io.grpc.netty.shaded.io.netty.channel;

import java.util.ArrayDeque;
/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: d  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43550d = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(c.class);

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<Object> f43551a;

    /* renamed from: b  reason: collision with root package name */
    private final t0 f43552b;

    /* renamed from: c  reason: collision with root package name */
    private int f43553c;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(e eVar, int i9) {
        this.f43551a = new ArrayDeque<>(i9);
        this.f43552b = eVar == null ? null : t0.c(eVar);
    }

    private void d(kg.j jVar, j jVar2) {
        if (jVar2 != null) {
            this.f43551a.addFirst(jVar2);
        }
        this.f43551a.addFirst(jVar);
        l(jVar.P1());
    }

    private void k(int i9) {
        this.f43553c -= i9;
        t0 t0Var = this.f43552b;
        if (t0Var != null) {
            t0Var.a(i9);
        }
    }

    private void l(int i9) {
        int i10 = this.f43553c;
        int i11 = i10 + i9;
        if (i11 >= i10) {
            this.f43553c = i11;
            t0 t0Var = this.f43552b;
            if (t0Var != null) {
                t0Var.b(i9);
                return;
            }
            return;
        }
        throw new IllegalStateException("buffer queue length overflow: " + this.f43553c + " + " + i9);
    }

    private void o(i iVar) {
        Throwable th2 = null;
        while (true) {
            Object poll = this.f43551a.poll();
            if (poll == null) {
                break;
            }
            try {
                if (poll instanceof kg.j) {
                    kg.j jVar = (kg.j) poll;
                    k(jVar.P1());
                    io.grpc.netty.shaded.io.netty.util.r.c(jVar);
                } else {
                    ((j) poll).e(iVar);
                }
            } catch (Throwable th3) {
                if (th2 == null) {
                    th2 = th3;
                } else {
                    f43550d.info("Throwable being suppressed because Throwable {} is already pending", th2, th3);
                }
            }
        }
        if (th2 != null) {
            throw new IllegalStateException(th2);
        }
    }

    private static j u(y yVar) {
        if (yVar.N()) {
            return null;
        }
        return new k0(yVar);
    }

    public final void a(kg.j jVar) {
        b(jVar, null);
    }

    public final void b(kg.j jVar, j jVar2) {
        this.f43551a.add(jVar);
        if (jVar2 != null) {
            this.f43551a.add(jVar2);
        }
        l(jVar.P1());
    }

    public final void c(kg.j jVar, y yVar) {
        b(jVar, u(yVar));
    }

    public final void e(kg.j jVar, y yVar) {
        d(jVar, u(yVar));
    }

    protected abstract kg.j f(kg.k kVar, kg.j jVar, kg.j jVar2);

    protected kg.j g(kg.k kVar, kg.j jVar) {
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final kg.j h(kg.k kVar, kg.j jVar, kg.j jVar2) {
        kg.o m10 = kVar.m(t() + 2);
        try {
            m10.I3(true, jVar);
            m10.I3(true, jVar2);
        } catch (Throwable th2) {
            m10.release();
            io.grpc.netty.shaded.io.netty.util.r.c(jVar2);
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(th2);
        }
        return m10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final kg.j i(kg.k kVar, kg.j jVar, kg.j jVar2) {
        kg.j d10 = kVar.d(jVar.P1() + jVar2.P1());
        try {
            d10.x2(jVar).x2(jVar2);
        } catch (Throwable th2) {
            d10.release();
            io.grpc.netty.shaded.io.netty.util.r.c(jVar2);
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(th2);
        }
        jVar.release();
        jVar2.release();
        return d10;
    }

    public final void j(c cVar) {
        cVar.f43551a.addAll(this.f43551a);
        cVar.l(this.f43553c);
    }

    public final boolean m() {
        return this.f43551a.isEmpty();
    }

    public final int n() {
        return this.f43553c;
    }

    public final void p(v vVar, Throwable th2) {
        o(vVar.B(th2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
        r5.f43551a.addFirst(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
        if (r1 <= 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
        r0 = r3.I1(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
        if (r2 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
        r6 = g(r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
        r6 = f(r6, r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
        r2 = r6;
        r1 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kg.j q(kg.k r6, int r7, io.grpc.netty.shaded.io.netty.channel.y r8) {
        /*
            r5 = this;
            java.lang.String r0 = "bytes"
            io.grpc.netty.shaded.io.netty.util.internal.s.n(r7, r0)
            java.lang.String r0 = "aggregatePromise"
            io.grpc.netty.shaded.io.netty.util.internal.s.h(r8, r0)
            java.util.ArrayDeque<java.lang.Object> r0 = r5.f43551a
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L17
            kg.j r6 = r5.r()
            return r6
        L17:
            int r0 = r5.f43553c
            int r7 = java.lang.Math.min(r7, r0)
            r0 = 0
            r1 = r7
            r2 = r0
        L20:
            java.util.ArrayDeque<java.lang.Object> r3 = r5.f43551a     // Catch: java.lang.Throwable -> L68
            java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L68
            if (r3 != 0) goto L29
            goto L75
        L29:
            boolean r4 = r3 instanceof io.grpc.netty.shaded.io.netty.channel.j     // Catch: java.lang.Throwable -> L68
            if (r4 == 0) goto L33
            io.grpc.netty.shaded.io.netty.channel.j r3 = (io.grpc.netty.shaded.io.netty.channel.j) r3     // Catch: java.lang.Throwable -> L68
            r8.c(r3)     // Catch: java.lang.Throwable -> L68
            goto L20
        L33:
            kg.j r3 = (kg.j) r3     // Catch: java.lang.Throwable -> L68
            int r4 = r3.P1()     // Catch: java.lang.Throwable -> L65
            if (r4 <= r1) goto L54
            java.util.ArrayDeque<java.lang.Object> r0 = r5.f43551a     // Catch: java.lang.Throwable -> L65
            r0.addFirst(r3)     // Catch: java.lang.Throwable -> L65
            if (r1 <= 0) goto L75
            kg.j r0 = r3.I1(r1)     // Catch: java.lang.Throwable -> L65
            if (r2 != 0) goto L4d
            kg.j r6 = r5.g(r6, r0)     // Catch: java.lang.Throwable -> L68
            goto L51
        L4d:
            kg.j r6 = r5.f(r6, r2, r0)     // Catch: java.lang.Throwable -> L68
        L51:
            r2 = r6
            r1 = 0
            goto L75
        L54:
            int r4 = r3.P1()     // Catch: java.lang.Throwable -> L65
            int r1 = r1 - r4
            if (r2 != 0) goto L60
            kg.j r2 = r5.g(r6, r3)     // Catch: java.lang.Throwable -> L65
            goto L20
        L60:
            kg.j r2 = r5.f(r6, r2, r3)     // Catch: java.lang.Throwable -> L65
            goto L20
        L65:
            r6 = move-exception
            r0 = r3
            goto L69
        L68:
            r6 = move-exception
        L69:
            io.grpc.netty.shaded.io.netty.util.r.c(r0)
            io.grpc.netty.shaded.io.netty.util.r.c(r2)
            r8.u(r6)
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(r6)
        L75:
            int r7 = r7 - r1
            r5.k(r7)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.c.q(kg.k, int, io.grpc.netty.shaded.io.netty.channel.y):kg.j");
    }

    protected abstract kg.j r();

    public final kg.j s(y yVar) {
        Object poll = this.f43551a.poll();
        if (poll == null) {
            return null;
        }
        kg.j jVar = (kg.j) poll;
        k(jVar.P1());
        Object peek = this.f43551a.peek();
        if (peek instanceof j) {
            yVar.c((ug.r<? extends ug.q<? super Void>>) ((j) peek));
            this.f43551a.poll();
        }
        return jVar;
    }

    protected final int t() {
        return this.f43551a.size();
    }

    public String toString() {
        return "bytes: " + this.f43553c + " buffers: " + (t() >> 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0064 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(io.grpc.netty.shaded.io.netty.channel.m r7) {
        /*
            r6 = this;
            r0 = 0
            r1 = r0
            r2 = r1
        L3:
            java.util.ArrayDeque<java.lang.Object> r3 = r6.f43551a
            java.lang.Object r3 = r3.poll()
            if (r3 != 0) goto L24
            if (r1 == 0) goto L1b
            int r3 = r1.P1()     // Catch: java.lang.Throwable -> L5f
            r6.k(r3)     // Catch: java.lang.Throwable -> L5f
            io.grpc.netty.shaded.io.netty.channel.y r3 = r7.N()     // Catch: java.lang.Throwable -> L5f
            r7.c(r1, r3)     // Catch: java.lang.Throwable -> L5f
        L1b:
            if (r2 != 0) goto L1e
            return
        L1e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            r7.<init>(r2)
            throw r7
        L24:
            boolean r4 = r3 instanceof kg.j     // Catch: java.lang.Throwable -> L5f
            if (r4 == 0) goto L3c
            if (r1 == 0) goto L38
            int r4 = r1.P1()     // Catch: java.lang.Throwable -> L5f
            r6.k(r4)     // Catch: java.lang.Throwable -> L5f
            io.grpc.netty.shaded.io.netty.channel.y r4 = r7.N()     // Catch: java.lang.Throwable -> L5f
            r7.c(r1, r4)     // Catch: java.lang.Throwable -> L5f
        L38:
            kg.j r3 = (kg.j) r3     // Catch: java.lang.Throwable -> L5f
            r1 = r3
            goto L3
        L3c:
            boolean r4 = r3 instanceof io.grpc.netty.shaded.io.netty.channel.y     // Catch: java.lang.Throwable -> L5f
            if (r4 == 0) goto L4e
            int r4 = r1.P1()     // Catch: java.lang.Throwable -> L5f
            r6.k(r4)     // Catch: java.lang.Throwable -> L5f
            io.grpc.netty.shaded.io.netty.channel.y r3 = (io.grpc.netty.shaded.io.netty.channel.y) r3     // Catch: java.lang.Throwable -> L5f
            r7.c(r1, r3)     // Catch: java.lang.Throwable -> L5f
        L4c:
            r1 = r0
            goto L3
        L4e:
            int r4 = r1.P1()     // Catch: java.lang.Throwable -> L5f
            r6.k(r4)     // Catch: java.lang.Throwable -> L5f
            io.grpc.netty.shaded.io.netty.channel.i r4 = r7.c0(r1)     // Catch: java.lang.Throwable -> L5f
            io.grpc.netty.shaded.io.netty.channel.j r3 = (io.grpc.netty.shaded.io.netty.channel.j) r3     // Catch: java.lang.Throwable -> L5f
            r4.c(r3)     // Catch: java.lang.Throwable -> L5f
            goto L4c
        L5f:
            r3 = move-exception
            if (r2 != 0) goto L64
            r2 = r3
            goto L3
        L64:
            io.grpc.netty.shaded.io.netty.util.internal.logging.b r4 = io.grpc.netty.shaded.io.netty.channel.c.f43550d
            java.lang.String r5 = "Throwable being suppressed because Throwable {} is already pending"
            r4.info(r5, r2, r3)
            goto L3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.c.v(io.grpc.netty.shaded.io.netty.channel.m):void");
    }
}
