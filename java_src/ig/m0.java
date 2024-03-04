package ig;

import androidx.webkit.ProxyConfig;
import com.facebook.internal.ServerProtocol;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import io.grpc.Status;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.f2;
import io.grpc.internal.n2;
import io.grpc.internal.p2;
import io.grpc.netty.shaded.io.netty.channel.w0;
import io.grpc.netty.shaded.io.netty.channel.z0;
import io.grpc.netty.shaded.io.netty.handler.codec.DecoderException;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.s0;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.UnresolvedAddressException;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class m0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f41209a;

    /* renamed from: b  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41210b;

    /* renamed from: c  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41211c;

    /* renamed from: d  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41212d;

    /* renamed from: e  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41213e;

    /* renamed from: f  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41214f;

    /* renamed from: g  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41215g;

    /* renamed from: h  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41216h;

    /* renamed from: i  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41217i;

    /* renamed from: j  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41218j;

    /* renamed from: k  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.util.c f41219k;

    /* renamed from: l  reason: collision with root package name */
    public static final f2.d<io.grpc.netty.shaded.io.netty.channel.m0> f41220l;

    /* renamed from: m  reason: collision with root package name */
    public static final f2.d<io.grpc.netty.shaded.io.netty.channel.m0> f41221m;

    /* renamed from: n  reason: collision with root package name */
    public static final f2.d<io.grpc.netty.shaded.io.netty.channel.m0> f41222n;

    /* renamed from: o  reason: collision with root package name */
    public static final f2.d<io.grpc.netty.shaded.io.netty.channel.m0> f41223o;

    /* renamed from: p  reason: collision with root package name */
    public static final io.grpc.netty.shaded.io.netty.channel.h<? extends z0> f41224p;

    /* renamed from: q  reason: collision with root package name */
    public static final Class<? extends io.grpc.netty.shaded.io.netty.channel.e> f41225q;

    /* renamed from: r  reason: collision with root package name */
    private static final Constructor<? extends io.grpc.netty.shaded.io.netty.channel.m0> f41226r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements io.grpc.netty.shaded.io.netty.channel.h<z0> {
        a() {
        }

        @Override // jg.e
        /* renamed from: b */
        public z0 a() {
            return new og.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41227a;

        static {
            int[] iArr = new int[f.values().length];
            f41227a = iArr;
            try {
                iArr[f.NIO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41227a[f.EPOLL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes5.dex */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        private static final kg.k f41228a = m0.h(true);
    }

    /* loaded from: classes5.dex */
    private static final class d {

        /* renamed from: a  reason: collision with root package name */
        private static final kg.k f41229a = m0.h(false);
    }

    /* loaded from: classes5.dex */
    private static final class e implements f2.d<io.grpc.netty.shaded.io.netty.channel.m0> {

        /* renamed from: a  reason: collision with root package name */
        private final String f41230a;

        /* renamed from: b  reason: collision with root package name */
        private final int f41231b;

        /* renamed from: c  reason: collision with root package name */
        private final f f41232c;

        e(int i9, String str, f fVar) {
            this.f41230a = str;
            if (i9 == 0 && System.getProperty("io.grpc.netty.shaded.io.netty.eventLoopThreads") == null) {
                this.f41231b = io.grpc.netty.shaded.io.netty.util.p.a();
            } else {
                this.f41231b = i9;
            }
            this.f41232c = fVar;
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: c */
        public void b(io.grpc.netty.shaded.io.netty.channel.m0 m0Var) {
            m0Var.z0(0L, 0L, TimeUnit.SECONDS);
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: d */
        public io.grpc.netty.shaded.io.netty.channel.m0 a() {
            ug.i iVar = new ug.i(this.f41230a, true);
            int i9 = b.f41227a[this.f41232c.ordinal()];
            if (i9 != 1) {
                if (i9 == 2) {
                    return m0.i(this.f41231b, iVar);
                }
                throw new AssertionError("Unknown/Unsupported EventLoopGroupType: " + this.f41232c);
            }
            return new mg.e(this.f41231b, iVar);
        }

        public String toString() {
            return this.f41230a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum f {
        NIO,
        EPOLL
    }

    /* loaded from: classes5.dex */
    static final class g implements p2.c {

        /* renamed from: a  reason: collision with root package name */
        private final Http2Stream f41236a;

        /* renamed from: b  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.handler.codec.http2.g0 f41237b;

        /* renamed from: c  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.handler.codec.http2.g0 f41238c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(io.grpc.netty.shaded.io.netty.handler.codec.http2.y yVar) {
            this.f41237b = yVar.f().m();
            this.f41238c = yVar.b().m();
            this.f41236a = yVar.d();
        }
    }

    static {
        Logger logger = Logger.getLogger(m0.class.getName());
        f41209a = logger;
        f41210b = io.grpc.netty.shaded.io.netty.util.c.z(BasicPushStatus.SUCCESS_CODE);
        f41211c = io.grpc.netty.shaded.io.netty.util.c.z("POST");
        f41212d = io.grpc.netty.shaded.io.netty.util.c.z("GET");
        f41213e = io.grpc.netty.shaded.io.netty.util.c.z(ProxyConfig.MATCH_HTTPS);
        f41214f = io.grpc.netty.shaded.io.netty.util.c.z("http");
        f41215g = io.grpc.netty.shaded.io.netty.util.c.z(GrpcUtil.f42350i.d());
        f41216h = io.grpc.netty.shaded.io.netty.util.c.z("application/grpc");
        f41217i = io.grpc.netty.shaded.io.netty.util.c.z(GrpcUtil.f42351j.d());
        f41218j = io.grpc.netty.shaded.io.netty.util.c.z("trailers");
        f41219k = io.grpc.netty.shaded.io.netty.util.c.z(GrpcUtil.f42352k.d());
        f fVar = f.NIO;
        e eVar = new e(1, "grpc-nio-boss-ELG", fVar);
        f41220l = eVar;
        e eVar2 = new e(0, "grpc-nio-worker-ELG", fVar);
        f41221m = eVar2;
        if (p()) {
            f41225q = j();
            f41224p = new w0(l());
            f41226r = k();
            f fVar2 = f.EPOLL;
            f41222n = new e(1, "grpc-default-boss-ELG", fVar2);
            f41223o = new e(0, "grpc-default-worker-ELG", fVar2);
            return;
        }
        logger.log(Level.FINE, "Epoll is not available, using Nio.", o());
        f41224p = r();
        f41225q = og.d.class;
        f41222n = eVar;
        f41223o = eVar2;
        f41226r = null;
    }

    private m0() {
    }

    private static byte[] c(CharSequence charSequence) {
        if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
            io.grpc.netty.shaded.io.netty.util.c cVar = (io.grpc.netty.shaded.io.netty.util.c) charSequence;
            return cVar.w() ? cVar.a() : cVar.F();
        }
        return charSequence.toString().getBytes(io.grpc.netty.shaded.io.netty.util.h.f45016d);
    }

    public static Http2Headers d(s0 s0Var, io.grpc.netty.shaded.io.netty.util.c cVar, io.grpc.netty.shaded.io.netty.util.c cVar2, io.grpc.netty.shaded.io.netty.util.c cVar3, io.grpc.netty.shaded.io.netty.util.c cVar4, io.grpc.netty.shaded.io.netty.util.c cVar5) {
        com.google.common.base.o.t(cVar2, "defaultPath");
        com.google.common.base.o.t(cVar3, "authority");
        com.google.common.base.o.t(cVar4, PushConstants.MZ_PUSH_MESSAGE_METHOD);
        s0Var.i(GrpcUtil.f42350i);
        s0Var.i(GrpcUtil.f42351j);
        s0Var.i(GrpcUtil.f42352k);
        return n.u(n2.d(s0Var), cVar3, cVar2, cVar4, cVar, cVar5);
    }

    public static s0 e(Http2Headers http2Headers) {
        if (http2Headers instanceof l) {
            l lVar = (l) http2Headers;
            return io.grpc.h0.c(lVar.I(), lVar.G());
        }
        return io.grpc.h0.d(f(http2Headers));
    }

    private static byte[][] f(Http2Headers http2Headers) {
        byte[][] bArr = new byte[http2Headers.size() * 2];
        int i9 = 0;
        for (Map.Entry<CharSequence, CharSequence> entry : http2Headers) {
            int i10 = i9 + 1;
            bArr[i9] = c(entry.getKey());
            i9 = i10 + 1;
            bArr[i10] = c(entry.getValue());
        }
        return n2.e(bArr);
    }

    public static s0 g(Http2Headers http2Headers) {
        if (http2Headers instanceof l) {
            l lVar = (l) http2Headers;
            return io.grpc.h0.c(lVar.I(), lVar.G());
        }
        return io.grpc.h0.d(f(http2Headers));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static kg.k h(boolean z10) {
        int i9;
        Logger logger = f41209a;
        Level level = Level.FINE;
        logger.log(level, "Creating allocator, preferDirect=" + z10);
        if (System.getProperty("io.grpc.netty.shaded.io.netty.allocator.maxOrder") == null) {
            logger.log(level, "Forcing maxOrder=8");
            i9 = 8;
        } else {
            int B = kg.d0.B();
            logger.log(level, "Using default maxOrder=" + B);
            i9 = B;
        }
        return new kg.d0(z10, kg.d0.E(), z10 ? kg.d0.D() : 0, kg.d0.F(), i9, kg.d0.H(), kg.d0.C(), kg.d0.I());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static io.grpc.netty.shaded.io.netty.channel.m0 i(int i9, ThreadFactory threadFactory) {
        Constructor<? extends io.grpc.netty.shaded.io.netty.channel.m0> constructor = f41226r;
        com.google.common.base.o.A(constructor != null, "Epoll is not available");
        try {
            return constructor.newInstance(Integer.valueOf(i9), threadFactory);
        } catch (Exception e10) {
            throw new RuntimeException("Cannot create Epoll EventLoopGroup", e10);
        }
    }

    private static Class<? extends io.grpc.netty.shaded.io.netty.channel.e> j() {
        try {
            return Class.forName("io.grpc.netty.shaded.io.netty.channel.epoll.o").asSubclass(io.grpc.netty.shaded.io.netty.channel.e.class);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("Cannot load EpollSocketChannel", e10);
        }
    }

    private static Constructor<? extends io.grpc.netty.shaded.io.netty.channel.m0> k() {
        try {
            return Class.forName("io.grpc.netty.shaded.io.netty.channel.epoll.i").asSubclass(io.grpc.netty.shaded.io.netty.channel.m0.class).getConstructor(Integer.TYPE, ThreadFactory.class);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("Cannot load EpollEventLoopGroup", e10);
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException("EpollEventLoopGroup constructor not found", e11);
        }
    }

    private static Class<? extends z0> l() {
        try {
            return Class.forName("io.grpc.netty.shaded.io.netty.channel.epoll.m").asSubclass(z0.class);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("Cannot load EpollServerSocketChannel", e10);
        }
    }

    public static kg.k m(boolean z10) {
        if (Boolean.parseBoolean(System.getProperty("io.grpc.netty.shaded.io.grpc.netty.useCustomAllocator", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE))) {
            boolean G = kg.d0.G();
            f41209a.log(Level.FINE, String.format("Using custom allocator: forceHeapBuffer=%s, defaultPreferDirect=%s", Boolean.valueOf(z10), Boolean.valueOf(G)));
            if (!z10 && G) {
                return c.f41228a;
            }
            return d.f41229a;
        }
        f41209a.log(Level.FINE, "Using default allocator");
        return kg.k.f53822a;
    }

    private static <T> io.grpc.netty.shaded.io.netty.channel.r<T> n(String str) {
        if (p()) {
            try {
                return (io.grpc.netty.shaded.io.netty.channel.r) Class.forName("lg.b").getField(str).get(null);
            } catch (Exception e10) {
                throw new RuntimeException("ChannelOption(" + str + ") is not available", e10);
            }
        }
        return null;
    }

    private static Throwable o() {
        try {
            int i9 = lg.a.f54326b;
            return (Throwable) lg.a.class.getDeclaredMethod("unavailabilityCause", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e10) {
            return e10;
        }
    }

    static boolean p() {
        try {
            int i9 = lg.a.f54326b;
            return ((Boolean) lg.a.class.getDeclaredMethod("isAvailable", new Class[0]).invoke(null, new Object[0])).booleanValue();
        } catch (ClassNotFoundException unused) {
            return false;
        } catch (Exception e10) {
            throw new RuntimeException("Exception while checking Epoll availability", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static io.grpc.netty.shaded.io.netty.channel.r<Integer> q() {
        return n("TCP_USER_TIMEOUT");
    }

    private static io.grpc.netty.shaded.io.netty.channel.h<z0> r() {
        return new a();
    }

    public static Status s(Throwable th2) {
        Status l10 = Status.l(th2);
        if (l10.n() != Status.Code.UNKNOWN) {
            return l10;
        }
        if (th2 instanceof ClosedChannelException) {
            ClosedChannelException closedChannelException = new ClosedChannelException();
            closedChannelException.initCause(th2);
            return Status.f41706h.r("channel closed").q(closedChannelException);
        } else if ((th2 instanceof DecoderException) && (th2.getCause() instanceof SSLException)) {
            return Status.f41719u.r("ssl exception").q(th2);
        } else {
            if (th2 instanceof IOException) {
                return Status.f41719u.r("io exception").q(th2);
            }
            if (th2 instanceof UnresolvedAddressException) {
                return Status.f41719u.r("unresolved address").q(th2);
            }
            return th2 instanceof Http2Exception ? Status.f41718t.r("http2 exception").q(th2) : l10;
        }
    }
}
