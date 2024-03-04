package ig;

import com.facebook.internal.ServerProtocol;
import ig.g0;
import io.grpc.ChannelLogger;
import io.grpc.HttpConnectProxiedSocketAddress;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.c1;
import io.grpc.internal.g2;
import io.grpc.internal.h;
import io.grpc.internal.h1;
import io.grpc.internal.p1;
import io.grpc.internal.p2;
import io.grpc.internal.s;
import io.grpc.netty.shaded.io.grpc.netty.NegotiationType;
import io.grpc.netty.shaded.io.netty.channel.w0;
import io.grpc.r0;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLException;
/* loaded from: classes5.dex */
public final class v extends io.grpc.internal.b<v> {

    /* renamed from: q  reason: collision with root package name */
    private static final boolean f41277q;

    /* renamed from: r  reason: collision with root package name */
    private static final long f41278r = TimeUnit.DAYS.toNanos(1000);

    /* renamed from: s  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> f41279s = new w0(m0.f41225q);

    /* renamed from: t  reason: collision with root package name */
    private static final p1<? extends io.grpc.netty.shaded.io.netty.channel.m0> f41280t = g2.c(m0.f41223o);

    /* renamed from: b  reason: collision with root package name */
    private final h1 f41281b;

    /* renamed from: c  reason: collision with root package name */
    private p2.b f41282c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<io.grpc.netty.shaded.io.netty.channel.r<?>, Object> f41283d;

    /* renamed from: e  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> f41284e;

    /* renamed from: f  reason: collision with root package name */
    private p1<? extends io.grpc.netty.shaded.io.netty.channel.m0> f41285f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f41286g;

    /* renamed from: h  reason: collision with root package name */
    private int f41287h;

    /* renamed from: i  reason: collision with root package name */
    private int f41288i;

    /* renamed from: j  reason: collision with root package name */
    private long f41289j;

    /* renamed from: k  reason: collision with root package name */
    private long f41290k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f41291l;

    /* renamed from: m  reason: collision with root package name */
    private g0.a f41292m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f41293n;

    /* renamed from: o  reason: collision with root package name */
    private c f41294o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f41295p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41296a;

        static {
            int[] iArr = new int[NegotiationType.values().length];
            f41296a = iArr;
            try {
                iArr[NegotiationType.PLAINTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41296a[NegotiationType.PLAINTEXT_UPGRADE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41296a[NegotiationType.TLS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static class c {
        public SocketAddress a(SocketAddress socketAddress, io.grpc.a aVar) {
            return null;
        }
    }

    /* loaded from: classes5.dex */
    private final class d implements h1.b {
        private d() {
        }

        @Override // io.grpc.internal.h1.b
        public int a() {
            return v.this.f41292m.a();
        }

        /* synthetic */ d(v vVar, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private final class e implements h1.c {
        private e() {
        }

        @Override // io.grpc.internal.h1.c
        public io.grpc.internal.s a() {
            return v.this.B();
        }

        /* synthetic */ e(v vVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class f implements io.grpc.internal.s {

        /* renamed from: a  reason: collision with root package name */
        private final g0 f41302a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> f41303b;

        /* renamed from: c  reason: collision with root package name */
        private final Map<io.grpc.netty.shaded.io.netty.channel.r<?>, ?> f41304c;

        /* renamed from: d  reason: collision with root package name */
        private final p1<? extends io.grpc.netty.shaded.io.netty.channel.m0> f41305d;

        /* renamed from: e  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.channel.m0 f41306e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f41307f;

        /* renamed from: g  reason: collision with root package name */
        private final int f41308g;

        /* renamed from: h  reason: collision with root package name */
        private final int f41309h;

        /* renamed from: i  reason: collision with root package name */
        private final int f41310i;

        /* renamed from: j  reason: collision with root package name */
        private final long f41311j;

        /* renamed from: k  reason: collision with root package name */
        private final io.grpc.internal.h f41312k;

        /* renamed from: l  reason: collision with root package name */
        private final long f41313l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f41314m;

        /* renamed from: n  reason: collision with root package name */
        private final p2.b f41315n;

        /* renamed from: o  reason: collision with root package name */
        private final c f41316o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f41317p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f41318q;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h.b f41319a;

            a(h.b bVar) {
                this.f41319a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f41319a.a();
            }
        }

        f(g0 g0Var, io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> hVar, Map<io.grpc.netty.shaded.io.netty.channel.r<?>, ?> map, p1<? extends io.grpc.netty.shaded.io.netty.channel.m0> p1Var, boolean z10, int i9, int i10, int i11, long j10, long j11, boolean z11, p2.b bVar, c cVar, boolean z12) {
            this.f41302a = (g0) com.google.common.base.o.t(g0Var, "protocolNegotiator");
            this.f41303b = hVar;
            this.f41304c = new HashMap(map);
            this.f41305d = p1Var;
            this.f41306e = p1Var.a();
            this.f41307f = z10;
            this.f41308g = i9;
            this.f41309h = i10;
            this.f41310i = i11;
            this.f41311j = j10;
            this.f41312k = new io.grpc.internal.h("keepalive time nanos", j10);
            this.f41313l = j11;
            this.f41314m = z11;
            this.f41315n = bVar;
            this.f41316o = cVar != null ? cVar : new c();
            this.f41317p = z12;
        }

        @Override // io.grpc.internal.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f41318q) {
                return;
            }
            this.f41318q = true;
            this.f41302a.close();
            this.f41305d.b(this.f41306e);
        }

        @Override // io.grpc.internal.s
        public io.grpc.internal.u h1(SocketAddress socketAddress, s.a aVar, ChannelLogger channelLogger) {
            InetSocketAddress inetSocketAddress;
            g0 g0Var;
            com.google.common.base.o.A(!this.f41318q, "The transport factory is closed.");
            g0 g0Var2 = this.f41302a;
            HttpConnectProxiedSocketAddress c10 = aVar.c();
            if (c10 != null) {
                InetSocketAddress targetAddress = c10.getTargetAddress();
                inetSocketAddress = targetAddress;
                g0Var = h0.c(c10.getProxyAddress(), c10.getUsername(), c10.getPassword(), this.f41302a);
            } else {
                inetSocketAddress = socketAddress;
                g0Var = g0Var2;
            }
            h.b d10 = this.f41312k.d();
            return new a0(inetSocketAddress, this.f41303b, this.f41304c, this.f41306e, g0Var, this.f41307f, this.f41308g, this.f41309h, this.f41310i, d10.b(), this.f41313l, this.f41314m, aVar.a(), aVar.d(), new a(d10), this.f41315n.a(), aVar.b(), this.f41316o, channelLogger, this.f41317p);
        }

        @Override // io.grpc.internal.s
        public ScheduledExecutorService o0() {
            return this.f41306e;
        }
    }

    static {
        String str = System.getenv("GRPC_EXPERIMENTAL_AUTOFLOWCONTROL");
        if (str == null) {
            str = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
        }
        f41277q = Boolean.parseBoolean(str);
    }

    v(String str) {
        this.f41282c = p2.a();
        this.f41283d = new HashMap();
        this.f41284e = f41279s;
        this.f41285f = f41280t;
        this.f41286g = f41277q;
        this.f41287h = 1048576;
        this.f41288i = 8192;
        this.f41289j = Long.MAX_VALUE;
        this.f41290k = GrpcUtil.f42354m;
        this.f41292m = new b(this, null);
        this.f41295p = false;
        this.f41281b = new h1(str, new e(this, null), new d(this, null));
        this.f41293n = false;
    }

    static g0 E(NegotiationType negotiationType, io.grpc.netty.shaded.io.netty.handler.ssl.p1 p1Var, p1<? extends Executor> p1Var2) {
        int i9 = a.f41296a[negotiationType.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    return h0.j(p1Var, p1Var2);
                }
                throw new IllegalArgumentException("Unsupported negotiationType: " + negotiationType);
            }
            return h0.h();
        }
        return h0.f();
    }

    public static v H(String str, int i9) {
        return I(GrpcUtil.b(str, i9));
    }

    public static v I(String str) {
        return new v(str);
    }

    void A() {
        io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> hVar = this.f41284e;
        io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> hVar2 = f41279s;
        boolean z10 = true;
        boolean z11 = (hVar == hVar2 || this.f41285f == f41280t) ? false : true;
        boolean z12 = hVar == hVar2 && this.f41285f == f41280t;
        if (!z11 && !z12) {
            z10 = false;
        }
        com.google.common.base.o.A(z10, "Both EventLoopGroup and ChannelType should be provided or neither should be");
    }

    io.grpc.internal.s B() {
        A();
        return new f(this.f41292m.b(), this.f41284e, this.f41283d, this.f41285f, this.f41286g, this.f41287h, this.f42426a, this.f41288i, this.f41289j, this.f41290k, this.f41291l, this.f41282c, this.f41294o, false);
    }

    public v C(io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> hVar) {
        this.f41284e = (io.grpc.netty.shaded.io.netty.channel.h) com.google.common.base.o.t(hVar, "channelFactory");
        return this;
    }

    public v D(Class<? extends io.grpc.netty.shaded.io.netty.channel.e> cls) {
        com.google.common.base.o.t(cls, "channelType");
        return C(new w0(cls));
    }

    public v F(io.grpc.netty.shaded.io.netty.channel.m0 m0Var) {
        if (m0Var != null) {
            return G(new io.grpc.internal.h0(m0Var));
        }
        return G(f41280t);
    }

    v G(p1<? extends io.grpc.netty.shaded.io.netty.channel.m0> p1Var) {
        this.f41285f = (p1) com.google.common.base.o.t(p1Var, "eventLoopGroupPool");
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: J */
    public v i(long j10, TimeUnit timeUnit) {
        com.google.common.base.o.e(j10 > 0, "keepalive time must be positive");
        long nanos = timeUnit.toNanos(j10);
        this.f41289j = nanos;
        long l10 = c1.l(nanos);
        this.f41289j = l10;
        if (l10 >= f41278r) {
            this.f41289j = Long.MAX_VALUE;
        }
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: K */
    public v j(long j10, TimeUnit timeUnit) {
        com.google.common.base.o.e(j10 > 0, "keepalive timeout must be positive");
        long nanos = timeUnit.toNanos(j10);
        this.f41290k = nanos;
        this.f41290k = c1.m(nanos);
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: L */
    public v k(boolean z10) {
        this.f41291l = z10;
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: M */
    public v l(int i9) {
        com.google.common.base.o.e(i9 >= 0, "negative max");
        this.f42426a = i9;
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: N */
    public v m(int i9) {
        com.google.common.base.o.e(i9 > 0, "maxInboundMetadataSize must be > 0");
        this.f41288i = i9;
        return this;
    }

    public v O(NegotiationType negotiationType) {
        com.google.common.base.o.A(!this.f41293n, "Cannot change security when using ChannelCredentials");
        g0.a aVar = this.f41292m;
        if (aVar instanceof b) {
            ((b) aVar).f41297a = negotiationType;
            return this;
        }
        return this;
    }

    public v P() {
        O(NegotiationType.PLAINTEXT);
        return this;
    }

    @Override // io.grpc.internal.b
    protected r0<?> q() {
        return this.f41281b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b implements g0.a {

        /* renamed from: a  reason: collision with root package name */
        private NegotiationType f41297a;

        /* renamed from: b  reason: collision with root package name */
        private io.grpc.netty.shaded.io.netty.handler.ssl.p1 f41298b;

        private b() {
            this.f41297a = NegotiationType.TLS;
        }

        @Override // ig.g0.a
        public int a() {
            int i9 = a.f41296a[this.f41297a.ordinal()];
            if (i9 == 1 || i9 == 2) {
                return 80;
            }
            if (i9 == 3) {
                return 443;
            }
            throw new AssertionError(this.f41297a + " not handled");
        }

        @Override // ig.g0.a
        public g0 b() {
            io.grpc.netty.shaded.io.netty.handler.ssl.p1 p1Var = this.f41298b;
            if (this.f41297a == NegotiationType.TLS && p1Var == null) {
                try {
                    p1Var = o.f().b();
                } catch (SSLException e10) {
                    throw new RuntimeException(e10);
                }
            }
            return v.E(this.f41297a, p1Var, v.this.f41281b.x());
        }

        /* synthetic */ b(v vVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(String str, io.grpc.e eVar, io.grpc.b bVar, g0.a aVar) {
        this.f41282c = p2.a();
        this.f41283d = new HashMap();
        this.f41284e = f41279s;
        this.f41285f = f41280t;
        this.f41286g = f41277q;
        this.f41287h = 1048576;
        this.f41288i = 8192;
        this.f41289j = Long.MAX_VALUE;
        this.f41290k = GrpcUtil.f42354m;
        this.f41292m = new b(this, null);
        this.f41295p = false;
        this.f41281b = new h1(str, eVar, bVar, new e(this, null), new d(this, null));
        this.f41292m = (g0.a) com.google.common.base.o.t(aVar, "negotiator");
        this.f41293n = true;
    }
}
