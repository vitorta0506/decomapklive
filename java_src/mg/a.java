package mg;

import io.grpc.netty.shaded.io.netty.channel.i;
import io.grpc.netty.shaded.io.netty.channel.p0;
import io.grpc.netty.shaded.io.netty.channel.q;
import io.grpc.netty.shaded.io.netty.channel.s;
import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.channel.w;
import io.grpc.netty.shaded.io.netty.util.internal.b0;
import java.io.IOException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import kg.j;
import mg.b;
/* loaded from: classes5.dex */
public abstract class a extends mg.b {
    private static final q D = new q(false, 16);
    private static final String E = " (expected: " + b0.l(j.class) + ", " + b0.l(p0.class) + ')';
    private final Runnable B;
    private boolean C;

    /* renamed from: mg.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0572a implements Runnable {
        RunnableC0572a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ((b.AbstractC0573b) a.this.k0()).r();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public class b extends b.AbstractC0573b {
        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
            super();
        }

        private void E(w wVar) {
            if (!a.this.g1()) {
                if (a.f1(a.this.b0())) {
                    a.this.j1();
                    wVar.s(ng.a.f55362a);
                    return;
                }
                L(N());
                return;
            }
            a.this.C = true;
            wVar.s(ng.b.f55363a);
        }

        private void F(w wVar, j jVar, Throwable th2, boolean z10, v0.c cVar) {
            if (jVar != null) {
                if (jVar.j1()) {
                    a.this.f55080v = false;
                    wVar.p(jVar);
                } else {
                    jVar.release();
                }
            }
            cVar.d();
            wVar.k();
            wVar.v(th2);
            if (z10 || (th2 instanceof OutOfMemoryError) || (th2 instanceof IOException)) {
                E(wVar);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
            r5.release();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
            if (r7.k() >= 0) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
            r8 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
            if (r8 == false) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
            r9.f55076g.f55080v = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x004d, code lost:
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x004e, code lost:
            r5 = r1;
            r4 = null;
            r6 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
            r4 = r8;
         */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0094 A[DONT_GENERATE] */
        /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
        @Override // mg.b.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void read() {
            /*
                r9 = this;
                mg.a r0 = mg.a.this
                io.grpc.netty.shaded.io.netty.channel.f r0 = r0.b0()
                mg.a r1 = mg.a.this
                boolean r1 = r1.i1(r0)
                if (r1 == 0) goto L14
                mg.a r0 = mg.a.this
                r0.L0()
                return
            L14:
                mg.a r1 = mg.a.this
                io.grpc.netty.shaded.io.netty.channel.w r3 = r1.J()
                kg.k r1 = r0.a()
                io.grpc.netty.shaded.io.netty.channel.v0$c r7 = r9.R()
                r7.c(r0)
            L25:
                r2 = 0
                r4 = 0
                kg.j r5 = r7.a(r1)     // Catch: java.lang.Throwable -> L86
                mg.a r6 = mg.a.this     // Catch: java.lang.Throwable -> L81
                int r6 = r6.Z0(r5)     // Catch: java.lang.Throwable -> L81
                r7.h(r6)     // Catch: java.lang.Throwable -> L81
                int r6 = r7.k()     // Catch: java.lang.Throwable -> L81
                r8 = 1
                if (r6 > 0) goto L54
                r5.release()     // Catch: java.lang.Throwable -> L81
                int r1 = r7.k()     // Catch: java.lang.Throwable -> L86
                if (r1 >= 0) goto L45
                goto L46
            L45:
                r8 = 0
            L46:
                if (r8 == 0) goto L52
                mg.a r1 = mg.a.this     // Catch: java.lang.Throwable -> L4d
                r1.f55080v = r4     // Catch: java.lang.Throwable -> L4d
                goto L52
            L4d:
                r1 = move-exception
                r5 = r1
                r4 = r2
                r6 = r8
                goto L8a
            L52:
                r4 = r8
                goto L64
            L54:
                r7.e(r8)     // Catch: java.lang.Throwable -> L81
                mg.a r6 = mg.a.this     // Catch: java.lang.Throwable -> L81
                r6.f55080v = r4     // Catch: java.lang.Throwable -> L81
                r3.p(r5)     // Catch: java.lang.Throwable -> L81
                boolean r5 = r7.g()     // Catch: java.lang.Throwable -> L86
                if (r5 != 0) goto L25
            L64:
                r7.d()     // Catch: java.lang.Throwable -> L7c
                r3.k()     // Catch: java.lang.Throwable -> L7c
                if (r4 == 0) goto L6f
                r9.E(r3)     // Catch: java.lang.Throwable -> L7c
            L6f:
                mg.a r1 = mg.a.this
                boolean r1 = r1.f55080v
                if (r1 != 0) goto L9d
                boolean r0 = r0.l()
                if (r0 != 0) goto L9d
                goto L9a
            L7c:
                r1 = move-exception
                r5 = r1
                r6 = r4
                r4 = r2
                goto L8a
            L81:
                r1 = move-exception
                r4 = r5
                r6 = 0
                r5 = r1
                goto L8a
            L86:
                r1 = move-exception
                r5 = r1
                r4 = r2
                r6 = 0
            L8a:
                r2 = r9
                r2.F(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L9e
                mg.a r1 = mg.a.this
                boolean r1 = r1.f55080v
                if (r1 != 0) goto L9d
                boolean r0 = r0.l()
                if (r0 != 0) goto L9d
            L9a:
                r9.D()
            L9d:
                return
            L9e:
                r1 = move-exception
                mg.a r2 = mg.a.this
                boolean r2 = r2.f55080v
                if (r2 != 0) goto Lae
                boolean r0 = r0.l()
                if (r0 != 0) goto Lae
                r9.D()
            Lae:
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: mg.a.b.read():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(io.grpc.netty.shaded.io.netty.channel.e eVar, SelectableChannel selectableChannel) {
        super(eVar, selectableChannel, 1);
        this.B = new RunnableC0572a();
    }

    private int d1(s sVar, Object obj) throws Exception {
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (!jVar.j1()) {
                sVar.x();
                return 0;
            }
            int b12 = b1(jVar);
            if (b12 > 0) {
                sVar.w(b12);
                if (!jVar.j1()) {
                    sVar.x();
                }
                return 1;
            }
            return Integer.MAX_VALUE;
        } else if (obj instanceof p0) {
            p0 p0Var = (p0) obj;
            if (p0Var.d() >= p0Var.count()) {
                sVar.x();
                return 0;
            }
            long c12 = c1(p0Var);
            if (c12 > 0) {
                sVar.w(c12);
                if (p0Var.d() >= p0Var.count()) {
                    sVar.x();
                }
                return 1;
            }
            return Integer.MAX_VALUE;
        } else {
            throw new Error();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f1(io.grpc.netty.shaded.io.netty.channel.f fVar) {
        return (fVar instanceof ng.j) && ((ng.j) fVar).e();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public q R() {
        return D;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Y0() {
        SelectionKey T0 = T0();
        if (T0.isValid()) {
            int interestOps = T0.interestOps();
            if ((interestOps & 4) != 0) {
                T0.interestOps(interestOps & (-5));
            }
        }
    }

    protected abstract int Z0(j jVar) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a1(s sVar) throws Exception {
        if (sVar.g() == null) {
            return 0;
        }
        return d1(sVar, sVar.g());
    }

    protected abstract int b1(j jVar) throws Exception;

    protected abstract long c1(p0 p0Var) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e1(boolean z10) {
        if (z10) {
            h1();
            return;
        }
        Y0();
        a0().execute(this.B);
    }

    protected abstract boolean g1();

    protected final void h1() {
        SelectionKey T0 = T0();
        if (T0.isValid()) {
            int interestOps = T0.interestOps();
            if ((interestOps & 4) == 0) {
                T0.interestOps(interestOps | 4);
            }
        }
    }

    final boolean i1(io.grpc.netty.shaded.io.netty.channel.f fVar) {
        return g1() && (this.C || !f1(fVar));
    }

    protected abstract i j1();

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected final Object r0(Object obj) {
        if (obj instanceof j) {
            j jVar = (j) obj;
            return jVar.h1() ? obj : S0(jVar);
        } else if (obj instanceof p0) {
            return obj;
        } else {
            throw new UnsupportedOperationException("unsupported message type: " + b0.m(obj) + E);
        }
    }
}
