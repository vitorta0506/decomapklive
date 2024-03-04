package xg;

import androidx.webkit.ProxyConfig;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.security.CertificateUtil;
import com.google.common.base.w;
import com.google.common.util.concurrent.k0;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.squareup.okhttp.Credentials;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Request;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import io.grpc.HttpConnectProxiedSocketAddress;
import io.grpc.MethodDescriptor;
import io.grpc.SecurityLevel;
import io.grpc.Status;
import io.grpc.StatusException;
import io.grpc.a0;
import io.grpc.c0;
import io.grpc.g0;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.c1;
import io.grpc.internal.d2;
import io.grpc.internal.f2;
import io.grpc.internal.i2;
import io.grpc.internal.k1;
import io.grpc.internal.p2;
import io.grpc.internal.r;
import io.grpc.internal.r0;
import io.grpc.internal.u;
import io.grpc.internal.v0;
import io.grpc.internal.w0;
import io.grpc.okhttp.internal.framed.ErrorCode;
import io.grpc.okhttp.internal.framed.HeadersMode;
import io.grpc.s0;
import java.io.EOFException;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.util.Collections;
import java.util.Deque;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import okio.Timeout;
import org.light.utils.IOUtils;
import xg.b;
import xg.f;
import xg.h;
import yg.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class g implements u, b.a {
    private static final Map<ErrorCode, Status> X = R();
    private static final Logger Y = Logger.getLogger(g.class.getName());
    private static final xg.f[] Z = new xg.f[0];
    private final SocketFactory A;
    private SSLSocketFactory B;
    private HostnameVerifier C;
    private Socket D;
    private final io.grpc.okhttp.internal.a G;
    private yg.b H;
    private ScheduledExecutorService I;
    private c1 J;
    private boolean K;
    private long L;
    private long M;
    private boolean N;
    private final Runnable O;
    private final int P;
    private final boolean Q;
    private final p2 R;
    private c0.c T;
    final HttpConnectProxiedSocketAddress U;
    Runnable V;
    k0<Void> W;

    /* renamed from: a  reason: collision with root package name */
    private final InetSocketAddress f59822a;

    /* renamed from: b  reason: collision with root package name */
    private final String f59823b;

    /* renamed from: c  reason: collision with root package name */
    private final String f59824c;

    /* renamed from: e  reason: collision with root package name */
    private final w<com.google.common.base.u> f59826e;

    /* renamed from: f  reason: collision with root package name */
    private final int f59827f;

    /* renamed from: g  reason: collision with root package name */
    private k1.a f59828g;

    /* renamed from: h  reason: collision with root package name */
    private yg.a f59829h;

    /* renamed from: i  reason: collision with root package name */
    private h f59830i;

    /* renamed from: j  reason: collision with root package name */
    private xg.b f59831j;

    /* renamed from: k  reason: collision with root package name */
    private o f59832k;

    /* renamed from: m  reason: collision with root package name */
    private final g0 f59834m;

    /* renamed from: p  reason: collision with root package name */
    private final Executor f59837p;

    /* renamed from: q  reason: collision with root package name */
    private final d2 f59838q;

    /* renamed from: r  reason: collision with root package name */
    private final int f59839r;

    /* renamed from: s  reason: collision with root package name */
    private int f59840s;

    /* renamed from: t  reason: collision with root package name */
    private f f59841t;

    /* renamed from: u  reason: collision with root package name */
    private io.grpc.a f59842u;

    /* renamed from: v  reason: collision with root package name */
    private Status f59843v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f59844w;

    /* renamed from: x  reason: collision with root package name */
    private v0 f59845x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f59846y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f59847z;

    /* renamed from: d  reason: collision with root package name */
    private final Random f59825d = new Random();

    /* renamed from: l  reason: collision with root package name */
    private final Object f59833l = new Object();

    /* renamed from: o  reason: collision with root package name */
    private final Map<Integer, xg.f> f59836o = new HashMap();
    private int E = 0;
    private final Deque<xg.f> F = new LinkedList();
    private final w0<xg.f> S = new a();

    /* renamed from: n  reason: collision with root package name */
    private int f59835n = 3;

    /* loaded from: classes5.dex */
    class a extends w0<xg.f> {
        a() {
        }

        @Override // io.grpc.internal.w0
        protected void b() {
            g.this.f59828g.c(true);
        }

        @Override // io.grpc.internal.w0
        protected void c() {
            g.this.f59828g.c(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements p2.c {
        b() {
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = g.this.V;
            if (runnable != null) {
                runnable.run();
            }
            g gVar = g.this;
            gVar.f59841t = new f(gVar.f59829h, g.this.f59830i);
            g.this.f59837p.execute(g.this.f59841t);
            synchronized (g.this.f59833l) {
                g.this.E = Integer.MAX_VALUE;
                g.this.n0();
            }
            g.this.W.R(null);
        }
    }

    /* loaded from: classes5.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f59851a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ xg.a f59852b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ yg.h f59853c;

        /* loaded from: classes5.dex */
        class a implements Source {
            a() {
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j10) {
                return -1L;
            }

            @Override // okio.Source
            public Timeout timeout() {
                return Timeout.NONE;
            }
        }

        d(CountDownLatch countDownLatch, xg.a aVar, yg.h hVar) {
            this.f59851a = countDownLatch;
            this.f59852b = aVar;
            this.f59853c = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar;
            f fVar;
            Socket T;
            try {
                this.f59851a.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            BufferedSource buffer = Okio.buffer(new a());
            SSLSession sSLSession = null;
            try {
                try {
                    g gVar2 = g.this;
                    HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress = gVar2.U;
                    if (httpConnectProxiedSocketAddress == null) {
                        T = gVar2.A.createSocket(g.this.f59822a.getAddress(), g.this.f59822a.getPort());
                    } else if (httpConnectProxiedSocketAddress.getProxyAddress() instanceof InetSocketAddress) {
                        g gVar3 = g.this;
                        T = gVar3.T(gVar3.U.getTargetAddress(), (InetSocketAddress) g.this.U.getProxyAddress(), g.this.U.getUsername(), g.this.U.getPassword());
                    } else {
                        Status status = Status.f41718t;
                        throw status.r("Unsupported SocketAddress implementation " + g.this.U.getProxyAddress().getClass()).c();
                    }
                    Socket socket = T;
                    SSLSocket sSLSocket = socket;
                    if (g.this.B != null) {
                        SSLSocket b10 = l.b(g.this.B, g.this.C, socket, g.this.X(), g.this.Y(), g.this.G);
                        sSLSession = b10.getSession();
                        sSLSocket = b10;
                    }
                    sSLSocket.setTcpNoDelay(true);
                    BufferedSource buffer2 = Okio.buffer(Okio.source(sSLSocket));
                    this.f59852b.j(Okio.sink(sSLSocket), sSLSocket);
                    g gVar4 = g.this;
                    gVar4.f59842u = gVar4.f59842u.d().d(a0.f41748a, sSLSocket.getRemoteSocketAddress()).d(a0.f41749b, sSLSocket.getLocalSocketAddress()).d(a0.f41750c, sSLSession).d(r0.f43015a, sSLSession == null ? SecurityLevel.NONE : SecurityLevel.PRIVACY_AND_INTEGRITY).a();
                    g gVar5 = g.this;
                    gVar5.f59841t = new f(gVar5, this.f59853c.newReader(buffer2, true));
                    synchronized (g.this.f59833l) {
                        g.this.D = (Socket) com.google.common.base.o.t(sSLSocket, "socket");
                        if (sSLSession != null) {
                            g.this.T = new c0.c(new c0.d(sSLSession));
                        }
                    }
                } catch (StatusException e10) {
                    g.this.m0(0, ErrorCode.INTERNAL_ERROR, e10.getStatus());
                    gVar = g.this;
                    fVar = new f(gVar, this.f59853c.newReader(buffer, true));
                    gVar.f59841t = fVar;
                } catch (Exception e11) {
                    g.this.a(e11);
                    gVar = g.this;
                    fVar = new f(gVar, this.f59853c.newReader(buffer, true));
                    gVar.f59841t = fVar;
                }
            } catch (Throwable th2) {
                g gVar6 = g.this;
                gVar6.f59841t = new f(gVar6, this.f59853c.newReader(buffer, true));
                throw th2;
            }
        }
    }

    /* loaded from: classes5.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.f59837p.execute(g.this.f59841t);
            synchronized (g.this.f59833l) {
                g.this.E = Integer.MAX_VALUE;
                g.this.n0();
            }
        }
    }

    /* loaded from: classes5.dex */
    class f implements a.InterfaceC0700a, Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final h f59857a;

        /* renamed from: b  reason: collision with root package name */
        yg.a f59858b;

        /* renamed from: c  reason: collision with root package name */
        boolean f59859c;

        f(g gVar, yg.a aVar) {
            this(aVar, new h(Level.FINE, g.class));
        }

        private int b(List<yg.c> list) {
            long j10 = 0;
            for (int i9 = 0; i9 < list.size(); i9++) {
                yg.c cVar = list.get(i9);
                j10 += cVar.f60213a.size() + 32 + cVar.f60214b.size();
            }
            return (int) Math.min(j10, 2147483647L);
        }

        @Override // yg.a.InterfaceC0700a
        public void ackSettings() {
        }

        @Override // yg.a.InterfaceC0700a
        public void data(boolean z10, int i9, BufferedSource bufferedSource, int i10) throws IOException {
            this.f59857a.b(h.a.INBOUND, i9, bufferedSource.getBuffer(), i10, z10);
            xg.f a02 = g.this.a0(i9);
            if (a02 == null) {
                if (g.this.e0(i9)) {
                    synchronized (g.this.f59833l) {
                        g.this.f59831j.g(i9, ErrorCode.INVALID_STREAM);
                    }
                    bufferedSource.skip(i10);
                } else {
                    g.this.h0(ErrorCode.PROTOCOL_ERROR, "Received data for unknown stream: " + i9);
                    return;
                }
            } else {
                long j10 = i10;
                bufferedSource.require(j10);
                Buffer buffer = new Buffer();
                buffer.write(bufferedSource.getBuffer(), j10);
                qh.c.d("OkHttpClientTransport$ClientFrameHandler.data", a02.y().tag());
                synchronized (g.this.f59833l) {
                    a02.y().h0(buffer, z10);
                }
            }
            g.C(g.this, i10);
            if (g.this.f59840s >= g.this.f59827f * 0.5f) {
                synchronized (g.this.f59833l) {
                    g.this.f59831j.windowUpdate(0, g.this.f59840s);
                }
                g.this.f59840s = 0;
            }
        }

        @Override // yg.a.InterfaceC0700a
        public void g(int i9, ErrorCode errorCode) {
            this.f59857a.h(h.a.INBOUND, i9, errorCode);
            Status f10 = g.r0(errorCode).f("Rst Stream");
            boolean z10 = f10.n() == Status.Code.CANCELLED || f10.n() == Status.Code.DEADLINE_EXCEEDED;
            synchronized (g.this.f59833l) {
                xg.f fVar = (xg.f) g.this.f59836o.get(Integer.valueOf(i9));
                if (fVar != null) {
                    qh.c.d("OkHttpClientTransport$ClientFrameHandler.rstStream", fVar.y().tag());
                    g.this.V(i9, f10, errorCode == ErrorCode.REFUSED_STREAM ? ClientStreamListener.RpcProgress.REFUSED : ClientStreamListener.RpcProgress.PROCESSED, z10, null, null);
                }
            }
        }

        @Override // yg.a.InterfaceC0700a
        public void h(boolean z10, yg.g gVar) {
            boolean z11;
            this.f59857a.i(h.a.INBOUND, gVar);
            synchronized (g.this.f59833l) {
                if (k.b(gVar, 4)) {
                    g.this.E = k.a(gVar, 4);
                }
                if (k.b(gVar, 7)) {
                    z11 = g.this.f59832k.e(k.a(gVar, 7));
                } else {
                    z11 = false;
                }
                if (this.f59859c) {
                    g.this.f59828g.b();
                    this.f59859c = false;
                }
                g.this.f59831j.e0(gVar);
                if (z11) {
                    g.this.f59832k.h();
                }
                g.this.n0();
            }
        }

        @Override // yg.a.InterfaceC0700a
        public void i(int i9, ErrorCode errorCode, ByteString byteString) {
            this.f59857a.c(h.a.INBOUND, i9, errorCode, byteString);
            if (errorCode == ErrorCode.ENHANCE_YOUR_CALM) {
                String utf8 = byteString.utf8();
                g.Y.log(Level.WARNING, String.format("%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s", this, utf8));
                if ("too_many_pings".equals(utf8)) {
                    g.this.O.run();
                }
            }
            Status f10 = GrpcUtil.Http2Error.statusForCode(errorCode.httpCode).f("Received Goaway");
            if (byteString.size() > 0) {
                f10 = f10.f(byteString.utf8());
            }
            g.this.m0(i9, null, f10);
        }

        @Override // yg.a.InterfaceC0700a
        public void j(boolean z10, boolean z11, int i9, int i10, List<yg.c> list, HeadersMode headersMode) {
            Status status;
            int b10;
            this.f59857a.d(h.a.INBOUND, i9, list, z11);
            boolean z12 = true;
            if (g.this.P == Integer.MAX_VALUE || (b10 = b(list)) <= g.this.P) {
                status = null;
            } else {
                Status status2 = Status.f41713o;
                Object[] objArr = new Object[3];
                objArr[0] = z11 ? "trailer" : "header";
                objArr[1] = Integer.valueOf(g.this.P);
                objArr[2] = Integer.valueOf(b10);
                status = status2.r(String.format("Response %s metadata larger than %d: %d", objArr));
            }
            synchronized (g.this.f59833l) {
                xg.f fVar = (xg.f) g.this.f59836o.get(Integer.valueOf(i9));
                if (fVar == null) {
                    if (g.this.e0(i9)) {
                        g.this.f59831j.g(i9, ErrorCode.INVALID_STREAM);
                    }
                } else if (status == null) {
                    qh.c.d("OkHttpClientTransport$ClientFrameHandler.headers", fVar.y().tag());
                    fVar.y().i0(list, z11);
                } else {
                    if (!z11) {
                        g.this.f59831j.g(i9, ErrorCode.CANCEL);
                    }
                    fVar.y().P(status, false, new s0());
                }
                z12 = false;
            }
            if (z12) {
                g gVar = g.this;
                ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                gVar.h0(errorCode, "Received header for unknown stream: " + i9);
            }
        }

        @Override // yg.a.InterfaceC0700a
        public void ping(boolean z10, int i9, int i10) {
            v0 v0Var;
            long j10 = (i9 << 32) | (i10 & 4294967295L);
            this.f59857a.e(h.a.INBOUND, j10);
            if (!z10) {
                synchronized (g.this.f59833l) {
                    g.this.f59831j.ping(true, i9, i10);
                }
                return;
            }
            synchronized (g.this.f59833l) {
                v0Var = null;
                if (g.this.f59845x != null) {
                    if (g.this.f59845x.h() == j10) {
                        v0 v0Var2 = g.this.f59845x;
                        g.this.f59845x = null;
                        v0Var = v0Var2;
                    } else {
                        g.Y.log(Level.WARNING, String.format("Received unexpected ping ack. Expecting %d, got %d", Long.valueOf(g.this.f59845x.h()), Long.valueOf(j10)));
                    }
                } else {
                    g.Y.warning("Received unexpected ping ack. No ping outstanding");
                }
            }
            if (v0Var != null) {
                v0Var.d();
            }
        }

        @Override // yg.a.InterfaceC0700a
        public void priority(int i9, int i10, int i11, boolean z10) {
        }

        @Override // yg.a.InterfaceC0700a
        public void pushPromise(int i9, int i10, List<yg.c> list) throws IOException {
            this.f59857a.g(h.a.INBOUND, i9, i10, list);
            synchronized (g.this.f59833l) {
                g.this.f59831j.g(i9, ErrorCode.PROTOCOL_ERROR);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Status status;
            String name = Thread.currentThread().getName();
            Thread.currentThread().setName("OkHttpClientTransport");
            while (this.f59858b.g1(this)) {
                try {
                    if (g.this.J != null) {
                        g.this.J.n();
                    }
                } catch (Throwable th2) {
                    try {
                        g.this.m0(0, ErrorCode.PROTOCOL_ERROR, Status.f41718t.r("error in frame handler").q(th2));
                        try {
                            this.f59858b.close();
                        } catch (IOException e10) {
                            e = e10;
                            g.Y.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                            g.this.f59828g.d();
                            Thread.currentThread().setName(name);
                        }
                    } catch (Throwable th3) {
                        try {
                            this.f59858b.close();
                        } catch (IOException e11) {
                            g.Y.log(Level.INFO, "Exception closing frame reader", (Throwable) e11);
                        }
                        g.this.f59828g.d();
                        Thread.currentThread().setName(name);
                        throw th3;
                    }
                }
            }
            synchronized (g.this.f59833l) {
                status = g.this.f59843v;
            }
            if (status == null) {
                status = Status.f41719u.r("End of stream or IOException");
            }
            g.this.m0(0, ErrorCode.INTERNAL_ERROR, status);
            try {
                this.f59858b.close();
            } catch (IOException e12) {
                e = e12;
                g.Y.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                g.this.f59828g.d();
                Thread.currentThread().setName(name);
            }
            g.this.f59828g.d();
            Thread.currentThread().setName(name);
        }

        @Override // yg.a.InterfaceC0700a
        public void windowUpdate(int i9, long j10) {
            this.f59857a.k(h.a.INBOUND, i9, j10);
            if (j10 == 0) {
                if (i9 == 0) {
                    g.this.h0(ErrorCode.PROTOCOL_ERROR, "Received 0 flow control window increment.");
                    return;
                } else {
                    g.this.V(i9, Status.f41718t.r("Received 0 flow control window increment."), ClientStreamListener.RpcProgress.PROCESSED, false, ErrorCode.PROTOCOL_ERROR, null);
                    return;
                }
            }
            boolean z10 = false;
            synchronized (g.this.f59833l) {
                if (i9 == 0) {
                    g.this.f59832k.g(null, (int) j10);
                    return;
                }
                xg.f fVar = (xg.f) g.this.f59836o.get(Integer.valueOf(i9));
                if (fVar != null) {
                    g.this.f59832k.g(fVar, (int) j10);
                } else if (!g.this.e0(i9)) {
                    z10 = true;
                }
                if (z10) {
                    g gVar = g.this;
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    gVar.h0(errorCode, "Received window_update for unknown stream: " + i9);
                }
            }
        }

        f(yg.a aVar, h hVar) {
            this.f59859c = true;
            this.f59858b = aVar;
            this.f59857a = hVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(InetSocketAddress inetSocketAddress, String str, String str2, io.grpc.a aVar, Executor executor, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, io.grpc.okhttp.internal.a aVar2, int i9, int i10, HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress, Runnable runnable, int i11, p2 p2Var, boolean z10) {
        this.f59822a = (InetSocketAddress) com.google.common.base.o.t(inetSocketAddress, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        this.f59823b = str;
        this.f59839r = i9;
        this.f59827f = i10;
        this.f59837p = (Executor) com.google.common.base.o.t(executor, "executor");
        this.f59838q = new d2(executor);
        this.A = socketFactory == null ? SocketFactory.getDefault() : socketFactory;
        this.B = sSLSocketFactory;
        this.C = hostnameVerifier;
        this.G = (io.grpc.okhttp.internal.a) com.google.common.base.o.t(aVar2, "connectionSpec");
        this.f59826e = GrpcUtil.f42363v;
        this.f59824c = GrpcUtil.i("okhttp", str2);
        this.U = httpConnectProxiedSocketAddress;
        this.O = (Runnable) com.google.common.base.o.t(runnable, "tooManyPingsRunnable");
        this.P = i11;
        this.R = (p2) com.google.common.base.o.s(p2Var);
        this.f59834m = g0.a(getClass(), inetSocketAddress.toString());
        this.f59842u = io.grpc.a.c().d(r0.f43016b, aVar).a();
        this.Q = z10;
        b0();
    }

    static /* synthetic */ int C(g gVar, int i9) {
        int i10 = gVar.f59840s + i9;
        gVar.f59840s = i10;
        return i10;
    }

    private static Map<ErrorCode, Status> R() {
        EnumMap enumMap = new EnumMap(ErrorCode.class);
        ErrorCode errorCode = ErrorCode.NO_ERROR;
        Status status = Status.f41718t;
        enumMap.put((EnumMap) errorCode, (ErrorCode) status.r("No error: A GRPC status of OK should have been sent"));
        enumMap.put((EnumMap) ErrorCode.PROTOCOL_ERROR, (ErrorCode) status.r("Protocol error"));
        enumMap.put((EnumMap) ErrorCode.INTERNAL_ERROR, (ErrorCode) status.r("Internal error"));
        enumMap.put((EnumMap) ErrorCode.FLOW_CONTROL_ERROR, (ErrorCode) status.r("Flow control error"));
        enumMap.put((EnumMap) ErrorCode.STREAM_CLOSED, (ErrorCode) status.r("Stream closed"));
        enumMap.put((EnumMap) ErrorCode.FRAME_TOO_LARGE, (ErrorCode) status.r("Frame too large"));
        enumMap.put((EnumMap) ErrorCode.REFUSED_STREAM, (ErrorCode) Status.f41719u.r("Refused stream"));
        enumMap.put((EnumMap) ErrorCode.CANCEL, (ErrorCode) Status.f41705g.r(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED));
        enumMap.put((EnumMap) ErrorCode.COMPRESSION_ERROR, (ErrorCode) status.r("Compression error"));
        enumMap.put((EnumMap) ErrorCode.CONNECT_ERROR, (ErrorCode) status.r("Connect error"));
        enumMap.put((EnumMap) ErrorCode.ENHANCE_YOUR_CALM, (ErrorCode) Status.f41713o.r("Enhance your calm"));
        enumMap.put((EnumMap) ErrorCode.INADEQUATE_SECURITY, (ErrorCode) Status.f41711m.r("Inadequate security"));
        return Collections.unmodifiableMap(enumMap);
    }

    private Request S(InetSocketAddress inetSocketAddress, String str, String str2) {
        HttpUrl build = new HttpUrl.Builder().scheme(ProxyConfig.MATCH_HTTPS).host(inetSocketAddress.getHostName()).port(inetSocketAddress.getPort()).build();
        Request.Builder url = new Request.Builder().url(build);
        Request.Builder header = url.header(EngineConst.PluginName.HOST_NAME, build.host() + CertificateUtil.DELIMITER + build.port()).header("User-Agent", this.f59824c);
        if (str != null && str2 != null) {
            header.header("Proxy-Authorization", Credentials.basic(str, str2));
        }
        return header.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Socket T(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) throws StatusException {
        Socket createSocket;
        try {
            if (inetSocketAddress2.getAddress() != null) {
                createSocket = this.A.createSocket(inetSocketAddress2.getAddress(), inetSocketAddress2.getPort());
            } else {
                createSocket = this.A.createSocket(inetSocketAddress2.getHostName(), inetSocketAddress2.getPort());
            }
            createSocket.setTcpNoDelay(true);
            Source source = Okio.source(createSocket);
            BufferedSink buffer = Okio.buffer(Okio.sink(createSocket));
            Request S = S(inetSocketAddress, str, str2);
            HttpUrl httpUrl = S.httpUrl();
            buffer.writeUtf8(String.format("CONNECT %s:%d HTTP/1.1", httpUrl.host(), Integer.valueOf(httpUrl.port()))).writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            int size = S.headers().size();
            for (int i9 = 0; i9 < size; i9++) {
                buffer.writeUtf8(S.headers().name(i9)).writeUtf8(": ").writeUtf8(S.headers().value(i9)).writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            buffer.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            buffer.flush();
            qe.n a10 = qe.n.a(i0(source));
            while (!i0(source).equals("")) {
            }
            int i10 = a10.f57296b;
            if (i10 < 200 || i10 >= 300) {
                Buffer buffer2 = new Buffer();
                try {
                    createSocket.shutdownOutput();
                    source.read(buffer2, 1024L);
                } catch (IOException e10) {
                    buffer2.writeUtf8("Unable to read body: " + e10.toString());
                }
                try {
                    createSocket.close();
                } catch (IOException unused) {
                }
                throw Status.f41719u.r(String.format("Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s", Integer.valueOf(a10.f57296b), a10.f57297c, buffer2.readUtf8())).c();
            }
            return createSocket;
        } catch (IOException e11) {
            throw Status.f41719u.r("Failed trying to connect with proxy").q(e11).c();
        }
    }

    private Throwable Z() {
        synchronized (this.f59833l) {
            Status status = this.f59843v;
            if (status != null) {
                return status.c();
            }
            return Status.f41719u.r("Connection closed").c();
        }
    }

    private void b0() {
        synchronized (this.f59833l) {
            this.R.g(new b());
        }
    }

    private boolean c0() {
        return this.f59822a == null;
    }

    private void f0(xg.f fVar) {
        if (this.f59847z && this.F.isEmpty() && this.f59836o.isEmpty()) {
            this.f59847z = false;
            c1 c1Var = this.J;
            if (c1Var != null) {
                c1Var.p();
            }
        }
        if (fVar.x()) {
            this.S.e(fVar, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0(ErrorCode errorCode, String str) {
        m0(0, errorCode, r0(errorCode).f(str));
    }

    private static String i0(Source source) throws IOException {
        Buffer buffer = new Buffer();
        while (source.read(buffer, 1L) != -1) {
            if (buffer.getByte(buffer.size() - 1) == 10) {
                return buffer.readUtf8LineStrict();
            }
        }
        throw new EOFException("\\n not found: " + buffer.readByteString().hex());
    }

    private void l0(xg.f fVar) {
        if (!this.f59847z) {
            this.f59847z = true;
            c1 c1Var = this.J;
            if (c1Var != null) {
                c1Var.o();
            }
        }
        if (fVar.x()) {
            this.S.e(fVar, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0(int i9, ErrorCode errorCode, Status status) {
        synchronized (this.f59833l) {
            if (this.f59843v == null) {
                this.f59843v = status;
                this.f59828g.a(status);
            }
            if (errorCode != null && !this.f59844w) {
                this.f59844w = true;
                this.f59831j.O1(0, errorCode, new byte[0]);
            }
            Iterator<Map.Entry<Integer, xg.f>> it = this.f59836o.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Integer, xg.f> next = it.next();
                if (next.getKey().intValue() > i9) {
                    it.remove();
                    next.getValue().y().O(status, ClientStreamListener.RpcProgress.REFUSED, false, new s0());
                    f0(next.getValue());
                }
            }
            for (xg.f fVar : this.F) {
                fVar.y().O(status, ClientStreamListener.RpcProgress.MISCARRIED, true, new s0());
                f0(fVar);
            }
            this.F.clear();
            p0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n0() {
        boolean z10 = false;
        while (!this.F.isEmpty() && this.f59836o.size() < this.E) {
            o0(this.F.poll());
            z10 = true;
        }
        return z10;
    }

    private void o0(xg.f fVar) {
        com.google.common.base.o.A(fVar.P() == -1, "StreamId already assigned");
        this.f59836o.put(Integer.valueOf(this.f59835n), fVar);
        l0(fVar);
        fVar.y().f0(this.f59835n);
        if ((fVar.O() != MethodDescriptor.MethodType.UNARY && fVar.O() != MethodDescriptor.MethodType.SERVER_STREAMING) || fVar.S()) {
            this.f59831j.flush();
        }
        int i9 = this.f59835n;
        if (i9 >= 2147483645) {
            this.f59835n = Integer.MAX_VALUE;
            m0(Integer.MAX_VALUE, ErrorCode.NO_ERROR, Status.f41719u.r("Stream ids exhausted"));
            return;
        }
        this.f59835n = i9 + 2;
    }

    private void p0() {
        if (this.f59843v == null || !this.f59836o.isEmpty() || !this.F.isEmpty() || this.f59846y) {
            return;
        }
        this.f59846y = true;
        c1 c1Var = this.J;
        if (c1Var != null) {
            c1Var.r();
            this.I = (ScheduledExecutorService) f2.f(GrpcUtil.f42362u, this.I);
        }
        v0 v0Var = this.f59845x;
        if (v0Var != null) {
            v0Var.f(Z());
            this.f59845x = null;
        }
        if (!this.f59844w) {
            this.f59844w = true;
            this.f59831j.O1(0, ErrorCode.NO_ERROR, new byte[0]);
        }
        this.f59831j.close();
    }

    static Status r0(ErrorCode errorCode) {
        Status status = X.get(errorCode);
        if (status != null) {
            return status;
        }
        Status status2 = Status.f41706h;
        return status2.r("Unknown http2 error code: " + errorCode.httpCode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(boolean z10, long j10, long j11, boolean z11) {
        this.K = z10;
        this.L = j10;
        this.M = j11;
        this.N = z11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V(int i9, Status status, ClientStreamListener.RpcProgress rpcProgress, boolean z10, ErrorCode errorCode, s0 s0Var) {
        synchronized (this.f59833l) {
            xg.f remove = this.f59836o.remove(Integer.valueOf(i9));
            if (remove != null) {
                if (errorCode != null) {
                    this.f59831j.g(i9, ErrorCode.CANCEL);
                }
                if (status != null) {
                    f.b y10 = remove.y();
                    if (s0Var == null) {
                        s0Var = new s0();
                    }
                    y10.O(status, rpcProgress, z10, s0Var);
                }
                if (!n0()) {
                    p0();
                    f0(remove);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public xg.f[] W() {
        xg.f[] fVarArr;
        synchronized (this.f59833l) {
            fVarArr = (xg.f[]) this.f59836o.values().toArray(Z);
        }
        return fVarArr;
    }

    String X() {
        URI c10 = GrpcUtil.c(this.f59823b);
        if (c10.getHost() != null) {
            return c10.getHost();
        }
        return this.f59823b;
    }

    int Y() {
        URI c10 = GrpcUtil.c(this.f59823b);
        if (c10.getPort() != -1) {
            return c10.getPort();
        }
        return this.f59822a.getPort();
    }

    @Override // xg.b.a
    public void a(Throwable th2) {
        com.google.common.base.o.t(th2, "failureCause");
        m0(0, ErrorCode.INTERNAL_ERROR, Status.f41719u.q(th2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public xg.f a0(int i9) {
        xg.f fVar;
        synchronized (this.f59833l) {
            fVar = this.f59836o.get(Integer.valueOf(i9));
        }
        return fVar;
    }

    @Override // io.grpc.internal.k1
    public void b(Status status) {
        g(status);
        synchronized (this.f59833l) {
            Iterator<Map.Entry<Integer, xg.f>> it = this.f59836o.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Integer, xg.f> next = it.next();
                it.remove();
                next.getValue().y().P(status, false, new s0());
                f0(next.getValue());
            }
            for (xg.f fVar : this.F) {
                fVar.y().O(status, ClientStreamListener.RpcProgress.MISCARRIED, true, new s0());
                f0(fVar);
            }
            this.F.clear();
            p0();
        }
    }

    @Override // io.grpc.l0
    public g0 c() {
        return this.f59834m;
    }

    @Override // io.grpc.internal.r
    public void d(r.a aVar, Executor executor) {
        long nextLong;
        synchronized (this.f59833l) {
            boolean z10 = true;
            com.google.common.base.o.z(this.f59831j != null);
            if (this.f59846y) {
                v0.g(aVar, executor, Z());
                return;
            }
            v0 v0Var = this.f59845x;
            if (v0Var != null) {
                nextLong = 0;
                z10 = false;
            } else {
                nextLong = this.f59825d.nextLong();
                com.google.common.base.u uVar = this.f59826e.get();
                uVar.g();
                v0 v0Var2 = new v0(nextLong, uVar);
                this.f59845x = v0Var2;
                this.R.b();
                v0Var = v0Var2;
            }
            if (z10) {
                this.f59831j.ping(false, (int) (nextLong >>> 32), (int) nextLong);
            }
            v0Var.a(aVar, executor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d0() {
        return this.B == null;
    }

    boolean e0(int i9) {
        boolean z10;
        synchronized (this.f59833l) {
            z10 = true;
            if (i9 >= this.f59835n || (i9 & 1) != 1) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // io.grpc.internal.u
    public io.grpc.a f() {
        return this.f59842u;
    }

    @Override // io.grpc.internal.k1
    public void g(Status status) {
        synchronized (this.f59833l) {
            if (this.f59843v != null) {
                return;
            }
            this.f59843v = status;
            this.f59828g.a(status);
            p0();
        }
    }

    @Override // io.grpc.internal.r
    /* renamed from: g0 */
    public xg.f e(MethodDescriptor<?, ?> methodDescriptor, s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr) {
        com.google.common.base.o.t(methodDescriptor, PushConstants.MZ_PUSH_MESSAGE_METHOD);
        com.google.common.base.o.t(s0Var, "headers");
        i2 h10 = i2.h(kVarArr, f(), s0Var);
        synchronized (this.f59833l) {
            try {
                try {
                    return new xg.f(methodDescriptor, s0Var, this.f59831j, this, this.f59832k, this.f59833l, this.f59839r, this.f59827f, this.f59823b, this.f59824c, h10, this.R, cVar, this.Q);
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Override // io.grpc.internal.k1
    public Runnable h(k1.a aVar) {
        this.f59828g = (k1.a) com.google.common.base.o.t(aVar, "listener");
        if (this.K) {
            this.I = (ScheduledExecutorService) f2.d(GrpcUtil.f42362u);
            c1 c1Var = new c1(new c1.c(this), this.I, this.L, this.M, this.N);
            this.J = c1Var;
            c1Var.q();
        }
        if (c0()) {
            synchronized (this.f59833l) {
                xg.b bVar = new xg.b(this, this.H, this.f59830i);
                this.f59831j = bVar;
                this.f59832k = new o(this, bVar);
            }
            this.f59838q.execute(new c());
            return null;
        }
        xg.a k10 = xg.a.k(this.f59838q, this);
        yg.e eVar = new yg.e();
        yg.b newWriter = eVar.newWriter(Okio.buffer(k10), true);
        synchronized (this.f59833l) {
            xg.b bVar2 = new xg.b(this, newWriter);
            this.f59831j = bVar2;
            this.f59832k = new o(this, bVar2);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f59838q.execute(new d(countDownLatch, k10, eVar));
        try {
            k0();
            countDownLatch.countDown();
            this.f59838q.execute(new e());
            return null;
        } catch (Throwable th2) {
            countDownLatch.countDown();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j0(xg.f fVar) {
        this.F.remove(fVar);
        f0(fVar);
    }

    void k0() {
        synchronized (this.f59833l) {
            this.f59831j.connectionPreface();
            yg.g gVar = new yg.g();
            k.c(gVar, 7, this.f59827f);
            this.f59831j.b0(gVar);
            int i9 = this.f59827f;
            if (i9 > 65535) {
                this.f59831j.windowUpdate(0, i9 - 65535);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q0(xg.f fVar) {
        if (this.f59843v != null) {
            fVar.y().O(this.f59843v, ClientStreamListener.RpcProgress.MISCARRIED, true, new s0());
        } else if (this.f59836o.size() >= this.E) {
            this.F.add(fVar);
            l0(fVar);
        } else {
            o0(fVar);
        }
    }

    public String toString() {
        return com.google.common.base.j.c(this).c("logId", this.f59834m.d()).d(IntegrityManager.INTEGRITY_TYPE_ADDRESS, this.f59822a).toString();
    }
}
