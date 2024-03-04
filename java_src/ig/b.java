package ig;

import io.grpc.ChannelLogger;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.r0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.x0;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class b extends j {
    private io.grpc.netty.shaded.io.netty.channel.m A;
    private boolean B;

    /* renamed from: x  reason: collision with root package name */
    private final int f41128x;

    /* renamed from: y  reason: collision with root package name */
    private final c f41129y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f41130z;

    /* renamed from: ig.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0458b implements d {
        private C0458b() {
        }

        @Override // ig.b.d
        public boolean c() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        private final d f41131a;

        /* renamed from: b  reason: collision with root package name */
        private int f41132b;

        /* renamed from: c  reason: collision with root package name */
        private int f41133c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f41134d;

        /* renamed from: e  reason: collision with root package name */
        private int f41135e;

        /* renamed from: f  reason: collision with root package name */
        private float f41136f;

        /* renamed from: g  reason: collision with root package name */
        private long f41137g;

        public c(d dVar) {
            com.google.common.base.o.t(dVar, "pingLimiter");
            this.f41131a = dVar;
        }

        private void b(int i9) {
            g(a() + i9);
        }

        private boolean c() {
            return this.f41134d;
        }

        private void f(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            g(0);
            this.f41137g = System.nanoTime();
            b.this.i0().s0(mVar, false, 1234L, mVar.F());
            this.f41132b++;
        }

        private void g(int i9) {
            this.f41135e = i9;
        }

        private void h(boolean z10) {
            this.f41134d = z10;
        }

        int a() {
            return this.f41135e;
        }

        public void d(int i9, int i10) {
            if (b.this.f41130z) {
                if (!c() && this.f41131a.c()) {
                    h(true);
                    f(b.this.D0());
                }
                b(i9 + i10);
            }
        }

        public long e() {
            return 1234L;
        }

        public void i() throws Http2Exception {
            if (b.this.f41130z) {
                this.f41133c++;
                long nanoTime = System.nanoTime() - this.f41137g;
                if (nanoTime == 0) {
                    nanoTime = 1;
                }
                long a10 = (a() * TimeUnit.SECONDS.toNanos(1L)) / nanoTime;
                r0 m10 = b.this.g0().m();
                int min = Math.min(a() * 2, 8388608);
                h(false);
                int e10 = m10.e(b.this.f0().d());
                if (min > e10) {
                    float f10 = (float) a10;
                    if (f10 > this.f41136f) {
                        this.f41136f = f10;
                        m10.l(b.this.f0().d(), min - e10);
                        m10.j(min);
                        x0 x0Var = new x0();
                        x0Var.A(min);
                        b.this.j0().m0(b.this.D0(), x0Var, b.this.D0().F());
                    }
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface d {
        boolean c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(io.grpc.netty.shaded.io.netty.channel.y yVar, io.grpc.netty.shaded.io.netty.handler.codec.http2.a0 a0Var, io.grpc.netty.shaded.io.netty.handler.codec.http2.b0 b0Var, x0 x0Var, ChannelLogger channelLogger, boolean z10, d dVar) {
        super(yVar, a0Var, b0Var, x0Var, channelLogger);
        this.B = false;
        l0(-1L);
        this.f41128x = x0Var.B() == null ? -1 : x0Var.B().intValue();
        this.f41130z = z10;
        this.f41129y = new c(dVar == null ? new C0458b() : dVar);
    }

    private void F0() throws Http2Exception {
        if (this.B || !this.A.d().isActive()) {
            return;
        }
        Http2Stream d10 = f0().d();
        g0().m().l(d10, this.f41128x - f0().f().m().k(d10));
        this.B = true;
        this.A.flush();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0, io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void A(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        this.A = mVar;
        super.A(mVar);
        F0();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void D(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        super.D(mVar);
        F0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final io.grpc.netty.shaded.io.netty.channel.m D0() {
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c E0() {
        return this.f41129y;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c0, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k, io.grpc.netty.shaded.io.netty.channel.o
    public final void a(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) throws Exception {
        if (io.grpc.netty.shaded.io.netty.handler.codec.http2.x.c(th2) == null) {
            c(mVar, false, th2);
        } else {
            super.a(mVar, th2);
        }
    }
}
