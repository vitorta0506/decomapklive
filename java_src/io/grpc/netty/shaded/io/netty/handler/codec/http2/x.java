package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.b1;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public static final CharSequence f44459a = io.grpc.netty.shaded.io.netty.util.c.g("HTTP2-Settings");

    /* renamed from: b  reason: collision with root package name */
    public static final CharSequence f44460b = "h2c";

    /* renamed from: c  reason: collision with root package name */
    public static final CharSequence f44461c = "h2";

    /* renamed from: d  reason: collision with root package name */
    private static final kg.j f44462d = kg.s0.i(kg.s0.g(24).A2("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n".getBytes(io.grpc.netty.shaded.io.netty.util.h.f45016d))).B();

    /* renamed from: e  reason: collision with root package name */
    public static final long f44463e = TimeUnit.MILLISECONDS.convert(30, TimeUnit.SECONDS);

    /* loaded from: classes5.dex */
    static final class a extends io.grpc.netty.shaded.io.netty.channel.f0 {

        /* renamed from: o  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.channel.y f44464o;

        /* renamed from: p  reason: collision with root package name */
        private int f44465p;

        /* renamed from: q  reason: collision with root package name */
        private int f44466q;

        /* renamed from: r  reason: collision with root package name */
        private Throwable f44467r;

        /* renamed from: s  reason: collision with root package name */
        private boolean f44468s;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.grpc.netty.shaded.io.netty.channel.y yVar, io.grpc.netty.shaded.io.netty.channel.e eVar, ug.j jVar) {
            super(eVar, jVar);
            this.f44464o = yVar;
        }

        private boolean n0() {
            return this.f44466q == this.f44465p && this.f44468s;
        }

        private boolean r0() {
            return t0() || this.f44465p == 0;
        }

        private boolean t0() {
            return this.f44466q < this.f44465p;
        }

        private void w0(Throwable th2) {
            if (this.f44467r == null) {
                this.f44467r = th2;
            }
        }

        private io.grpc.netty.shaded.io.netty.channel.y x0() {
            Throwable th2 = this.f44467r;
            if (th2 == null) {
                this.f44464o.m();
                return super.m0(null);
            }
            this.f44464o.u(th2);
            return super.u(this.f44467r);
        }

        private boolean y0() {
            Throwable th2 = this.f44467r;
            if (th2 == null) {
                this.f44464o.I();
                return super.B(null);
            }
            this.f44464o.z(th2);
            return super.z(this.f44467r);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.f0, io.grpc.netty.shaded.io.netty.channel.y
        public io.grpc.netty.shaded.io.netty.channel.y u(Throwable th2) {
            if (r0()) {
                this.f44466q++;
                w0(th2);
                if (n0()) {
                    return x0();
                }
            }
            return this;
        }

        public io.grpc.netty.shaded.io.netty.channel.y u0() {
            if (!this.f44468s) {
                this.f44468s = true;
                int i9 = this.f44466q;
                int i10 = this.f44465p;
                if (i9 == i10 || i10 == 0) {
                    return x0();
                }
            }
            return this;
        }

        public io.grpc.netty.shaded.io.netty.channel.y v0() {
            this.f44465p++;
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.f0, ug.h, ug.x
        /* renamed from: x */
        public io.grpc.netty.shaded.io.netty.channel.y m0(Void r12) {
            if (t0()) {
                this.f44466q++;
                if (n0()) {
                    x0();
                }
            }
            return this;
        }

        @Override // ug.h, ug.x
        public boolean z(Throwable th2) {
            if (r0()) {
                this.f44466q++;
                w0(th2);
                if (n0()) {
                    return y0();
                }
                return true;
            }
            return false;
        }

        @Override // ug.h, ug.x
        /* renamed from: z0 */
        public boolean B(Void r22) {
            if (t0()) {
                this.f44466q++;
                if (n0()) {
                    return y0();
                }
                return true;
            }
            return false;
        }
    }

    public static long a(long j10) {
        return j10 + (j10 >>> 2);
    }

    public static kg.j b() {
        return f44462d.V1();
    }

    public static Http2Exception c(Throwable th2) {
        while (th2 != null) {
            if (th2 instanceof Http2Exception) {
                return (Http2Exception) th2;
            }
            th2 = th2.getCause();
        }
        return null;
    }

    public static void d(int i9, long j10, boolean z10) throws Http2Exception {
        throw Http2Exception.headerListSizeError(i9, Http2Error.PROTOCOL_ERROR, z10, "Header size exceeded max allowed size (%d)", Long.valueOf(j10));
    }

    public static void e(long j10) throws Http2Exception {
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header size exceeded max allowed size (%d)", Long.valueOf(j10));
    }

    public static boolean f(int i9) {
        return i9 >= 16384 && i9 <= 16777215;
    }

    public static int g(kg.j jVar) {
        return jVar.E1() & Integer.MAX_VALUE;
    }

    public static int h(b1.a aVar) {
        return Math.max(0, (int) Math.min(aVar.a(), aVar.b()));
    }

    public static kg.j i(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) {
        if (th2 != null && th2.getMessage() != null) {
            return kg.n.f0(mVar.P(), th2.getMessage());
        }
        return kg.s0.f53902d;
    }

    public static void j(int i9) {
        if (i9 < 0 || i9 > 256) {
            throw new IllegalArgumentException(String.format("Invalid padding '%d'. Padding must be between 0 and %d (inclusive).", Integer.valueOf(i9), 256));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(kg.j jVar, int i9, byte b10, f0 f0Var, int i10) {
        jVar.H2(i9);
        jVar.u2(b10);
        jVar.u2(f0Var.o());
        jVar.E2(i10);
    }
}
