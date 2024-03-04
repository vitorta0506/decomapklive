package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.handler.codec.DecoderException;
import io.grpc.netty.shaded.io.netty.handler.codec.UnsupportedMessageTypeException;
import java.io.IOException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SocketChannel;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSession;
import pg.a;
/* loaded from: classes5.dex */
public class s1 extends pg.a implements io.grpc.netty.shaded.io.netty.channel.t {
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b D = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(s1.class);
    private static final Pattern E = Pattern.compile("^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$");
    private static final Pattern F = Pattern.compile("^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$", 2);
    private volatile long A;
    private volatile long B;
    volatile int C;

    /* renamed from: l  reason: collision with root package name */
    private volatile io.grpc.netty.shaded.io.netty.channel.m f44752l;

    /* renamed from: m  reason: collision with root package name */
    private final SSLEngine f44753m;

    /* renamed from: n  reason: collision with root package name */
    private final l f44754n;

    /* renamed from: o  reason: collision with root package name */
    private final Executor f44755o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f44756p;

    /* renamed from: q  reason: collision with root package name */
    private final ByteBuffer[] f44757q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f44758r;

    /* renamed from: s  reason: collision with root package name */
    private final n f44759s;

    /* renamed from: t  reason: collision with root package name */
    private final n f44760t;

    /* renamed from: u  reason: collision with root package name */
    private m f44761u;

    /* renamed from: v  reason: collision with root package name */
    private ug.x<io.grpc.netty.shaded.io.netty.channel.e> f44762v;

    /* renamed from: w  reason: collision with root package name */
    private final k f44763w;

    /* renamed from: x  reason: collision with root package name */
    private int f44764x;

    /* renamed from: y  reason: collision with root package name */
    private short f44765y;

    /* renamed from: z  reason: collision with root package name */
    private volatile long f44766z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ug.q f44767a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44768b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.y f44769c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.handler.ssl.s1$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0494a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ long f44771a;

            RunnableC0494a(long j10) {
                this.f44771a = j10;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (s1.this.f44763w.isDone()) {
                    return;
                }
                s1.D.debug("{} did not receive close_notify in {}ms; force-closing the connection.", a.this.f44768b.d(), Long.valueOf(this.f44771a));
                io.grpc.netty.shaded.io.netty.channel.m mVar = a.this.f44768b;
                s1.o0(mVar.L(mVar.F()), a.this.f44769c);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class b implements ug.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ug.q f44773a;

            b(ug.q qVar) {
                this.f44773a = qVar;
            }

            @Override // ug.r
            public void e(ug.q<io.grpc.netty.shaded.io.netty.channel.e> qVar) throws Exception {
                ug.q qVar2 = this.f44773a;
                if (qVar2 != null) {
                    qVar2.cancel(false);
                }
                io.grpc.netty.shaded.io.netty.channel.m mVar = a.this.f44768b;
                s1.o0(mVar.L(mVar.F()), a.this.f44769c);
            }
        }

        a(ug.q qVar, io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f44767a = qVar;
            this.f44768b = mVar;
            this.f44769c = yVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) {
            ug.q qVar = this.f44767a;
            if (qVar != null) {
                qVar.cancel(false);
            }
            long j10 = s1.this.B;
            if (j10 <= 0) {
                io.grpc.netty.shaded.io.netty.channel.m mVar = this.f44768b;
                s1.o0(mVar.L(mVar.F()), this.f44769c);
                return;
            }
            s1.this.f44763w.c((ug.r) new b(!s1.this.f44763w.isDone() ? this.f44768b.m0().schedule((Runnable) new RunnableC0494a(j10), j10, TimeUnit.MILLISECONDS) : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44775a;

        static {
            int[] iArr = new int[SSLEngineResult.HandshakeStatus.values().length];
            f44775a = iArr;
            try {
                iArr[SSLEngineResult.HandshakeStatus.NEED_TASK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44775a[SSLEngineResult.HandshakeStatus.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44775a[SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f44775a[SSLEngineResult.HandshakeStatus.NEED_WRAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f44775a[SSLEngineResult.HandshakeStatus.NEED_UNWRAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44776a;

        c(io.grpc.netty.shaded.io.netty.channel.m mVar) {
            this.f44776a = mVar;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) {
            Throwable L = iVar.L();
            if (L != null) {
                s1.this.V0(this.f44776a, L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1.this.O0(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44779a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kg.j f44780b;

        e(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar) {
            this.f44779a = mVar;
            this.f44780b = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f44779a.p(this.f44780b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements ug.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.y f44782a;

        f(io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f44782a = yVar;
        }

        @Override // ug.r
        public void e(ug.q<io.grpc.netty.shaded.io.netty.channel.e> qVar) {
            this.f44782a.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ug.x f44784a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f44785b;

        g(ug.x xVar, long j10) {
            this.f44784a = xVar;
            this.f44785b = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f44784a.isDone()) {
                return;
            }
            SslHandshakeTimeoutException sslHandshakeTimeoutException = new SslHandshakeTimeoutException("handshake timed out after " + this.f44785b + "ms");
            try {
                if (this.f44784a.z(sslHandshakeTimeoutException)) {
                    v1.h(s1.this.f44752l, sslHandshakeTimeoutException, true);
                }
            } finally {
                s1 s1Var = s1.this;
                s1Var.Q0(s1Var.f44752l, sslHandshakeTimeoutException);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class h implements ug.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ug.q f44787a;

        h(ug.q qVar) {
            this.f44787a = qVar;
        }

        @Override // ug.r
        public void e(ug.q<io.grpc.netty.shaded.io.netty.channel.e> qVar) throws Exception {
            this.f44787a.cancel(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.i f44789a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.m f44790b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ io.grpc.netty.shaded.io.netty.channel.y f44791c;

        i(io.grpc.netty.shaded.io.netty.channel.i iVar, io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f44789a = iVar;
            this.f44790b = mVar;
            this.f44791c = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f44789a.isDone()) {
                return;
            }
            s1.D.warn("{} Last write attempt timed out; force-closing the connection.", this.f44790b.d());
            io.grpc.netty.shaded.io.netty.channel.m mVar = this.f44790b;
            s1.o0(mVar.L(mVar.F()), this.f44791c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f44793a;

        /* renamed from: b  reason: collision with root package name */
        boolean f44794b;

        /* renamed from: c  reason: collision with root package name */
        boolean f44795c;

        j(boolean z10) {
            this.f44793a = z10;
        }

        boolean b() {
            if (this.f44794b) {
                return false;
            }
            this.f44795c = true;
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f44794b = true;
            if (this.f44795c) {
                s1.this.H0(this.f44793a).g();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class k extends ug.h<io.grpc.netty.shaded.io.netty.channel.e> {
        private k() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.h
        public void r() {
            if (s1.this.f44752l == null) {
                return;
            }
            super.r();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.h
        public ug.j v() {
            if (s1.this.f44752l != null) {
                return s1.this.f44752l.m0();
            }
            throw new IllegalStateException();
        }

        /* synthetic */ k(s1 s1Var, t1 t1Var) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes5.dex */
    public static abstract class l {

        /* renamed from: c  reason: collision with root package name */
        public static final l f44798c;

        /* renamed from: d  reason: collision with root package name */
        public static final l f44799d;

        /* renamed from: e  reason: collision with root package name */
        public static final l f44800e;

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ l[] f44801f;

        /* renamed from: a  reason: collision with root package name */
        final boolean f44802a;

        /* renamed from: b  reason: collision with root package name */
        final a.c f44803b;

        /* loaded from: classes5.dex */
        enum a extends l {
            a(String str, int i9, boolean z10, a.c cVar) {
                super(str, i9, z10, cVar, null);
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            kg.j a(s1 s1Var, kg.k kVar, int i9, int i10) {
                return kVar.h(((k1) s1Var.f44753m).y(i9, i10));
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            int b(s1 s1Var, int i9) {
                int n02 = ((k1) s1Var.f44753m).n0();
                return n02 > 0 ? n02 : i9;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            boolean d(SSLEngine sSLEngine) {
                return ((k1) sSLEngine).f44653t;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            SSLEngineResult e(s1 s1Var, kg.j jVar, int i9, kg.j jVar2) throws SSLException {
                SSLEngineResult unwrap;
                int s12 = jVar.s1();
                int K2 = jVar2.K2();
                if (s12 > 1) {
                    k1 k1Var = (k1) s1Var.f44753m;
                    try {
                        s1Var.f44757q[0] = s1.a1(jVar2, K2, jVar2.t2());
                        unwrap = k1Var.u0(jVar.u1(jVar.Q1(), i9), s1Var.f44757q);
                    } finally {
                        s1Var.f44757q[0] = null;
                    }
                } else {
                    unwrap = s1Var.f44753m.unwrap(s1.a1(jVar, jVar.Q1(), i9), s1.a1(jVar2, K2, jVar2.t2()));
                }
                jVar2.L2(K2 + unwrap.bytesProduced());
                return unwrap;
            }
        }

        /* loaded from: classes5.dex */
        enum b extends l {
            b(String str, int i9, boolean z10, a.c cVar) {
                super(str, i9, z10, cVar, null);
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            kg.j a(s1 s1Var, kg.k kVar, int i9, int i10) {
                return kVar.h(((io.grpc.netty.shaded.io.netty.handler.ssl.k) s1Var.f44753m).d(i9, i10));
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            int b(s1 s1Var, int i9) {
                return i9;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            boolean d(SSLEngine sSLEngine) {
                return true;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            SSLEngineResult e(s1 s1Var, kg.j jVar, int i9, kg.j jVar2) throws SSLException {
                SSLEngineResult unwrap;
                int s12 = jVar.s1();
                int K2 = jVar2.K2();
                if (s12 > 1) {
                    try {
                        s1Var.f44757q[0] = s1.a1(jVar2, K2, jVar2.t2());
                        unwrap = ((io.grpc.netty.shaded.io.netty.handler.ssl.k) s1Var.f44753m).g(jVar.u1(jVar.Q1(), i9), s1Var.f44757q);
                    } finally {
                        s1Var.f44757q[0] = null;
                    }
                } else {
                    unwrap = s1Var.f44753m.unwrap(s1.a1(jVar, jVar.Q1(), i9), s1.a1(jVar2, K2, jVar2.t2()));
                }
                jVar2.L2(K2 + unwrap.bytesProduced());
                return unwrap;
            }
        }

        /* loaded from: classes5.dex */
        enum c extends l {
            c(String str, int i9, boolean z10, a.c cVar) {
                super(str, i9, z10, cVar, null);
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            kg.j a(s1 s1Var, kg.k kVar, int i9, int i10) {
                return kVar.b(s1Var.f44753m.getSession().getPacketBufferSize());
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            int b(s1 s1Var, int i9) {
                return i9;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            boolean d(SSLEngine sSLEngine) {
                return true;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s1.l
            SSLEngineResult e(s1 s1Var, kg.j jVar, int i9, kg.j jVar2) throws SSLException {
                int position;
                int K2 = jVar2.K2();
                ByteBuffer a12 = s1.a1(jVar, jVar.Q1(), i9);
                int position2 = a12.position();
                SSLEngineResult unwrap = s1Var.f44753m.unwrap(a12, s1.a1(jVar2, K2, jVar2.t2()));
                jVar2.L2(K2 + unwrap.bytesProduced());
                return (unwrap.bytesConsumed() != 0 || (position = a12.position() - position2) == unwrap.bytesConsumed()) ? unwrap : new SSLEngineResult(unwrap.getStatus(), unwrap.getHandshakeStatus(), position, unwrap.bytesProduced());
            }
        }

        static {
            a.c cVar = pg.a.f56808k;
            a aVar = new a("TCNATIVE", 0, true, cVar);
            f44798c = aVar;
            b bVar = new b("CONSCRYPT", 1, true, cVar);
            f44799d = bVar;
            c cVar2 = new c("JDK", 2, false, pg.a.f56807j);
            f44800e = cVar2;
            f44801f = new l[]{aVar, bVar, cVar2};
        }

        /* synthetic */ l(String str, int i9, boolean z10, a.c cVar, t1 t1Var) {
            this(str, i9, z10, cVar);
        }

        static l c(SSLEngine sSLEngine) {
            return sSLEngine instanceof k1 ? f44798c : sSLEngine instanceof io.grpc.netty.shaded.io.netty.handler.ssl.k ? f44799d : f44800e;
        }

        public static l valueOf(String str) {
            return (l) Enum.valueOf(l.class, str);
        }

        public static l[] values() {
            return (l[]) f44801f.clone();
        }

        abstract kg.j a(s1 s1Var, kg.k kVar, int i9, int i10);

        abstract int b(s1 s1Var, int i9);

        abstract boolean d(SSLEngine sSLEngine);

        abstract SSLEngineResult e(s1 s1Var, kg.j jVar, int i9, kg.j jVar2) throws SSLException;

        private l(String str, int i9, boolean z10, a.c cVar) {
            this.f44802a = z10;
            this.f44803b = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class m extends io.grpc.netty.shaded.io.netty.channel.c {
        m(io.grpc.netty.shaded.io.netty.channel.e eVar, int i9) {
            super(eVar, i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.c
        protected kg.j f(kg.k kVar, kg.j jVar, kg.j jVar2) {
            int i9 = s1.this.C;
            if (!(jVar instanceof kg.o)) {
                return s1.t0(jVar, jVar2, i9) ? jVar : i(kVar, jVar, jVar2);
            }
            kg.o oVar = (kg.o) jVar;
            int k42 = oVar.k4();
            if (k42 == 0 || !s1.t0(oVar.g4(k42 - 1), jVar2, i9)) {
                oVar.I3(true, jVar2);
            }
            return oVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.c
        protected kg.j g(kg.k kVar, kg.j jVar) {
            kg.j b10;
            if (jVar instanceof kg.o) {
                kg.o oVar = (kg.o) jVar;
                if (s1.this.f44754n.f44802a) {
                    b10 = kVar.h(oVar.P1());
                } else {
                    b10 = kVar.b(oVar.P1());
                }
                try {
                    b10.x2(oVar);
                } catch (Throwable th2) {
                    b10.release();
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(th2);
                }
                oVar.release();
                return b10;
            }
            return jVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.c
        protected kg.j r() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f44805a;

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f44806b = new a();

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.g();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.f();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Throwable f44810a;

            c(Throwable th2) {
                this.f44810a = th2;
            }

            @Override // java.lang.Runnable
            public void run() {
                s1.this.v0(128);
                n.this.h(this.f44810a);
            }
        }

        n(boolean z10) {
            this.f44805a = z10;
        }

        private void d(Throwable th2) {
            ug.j m02 = s1.this.f44752l.m0();
            if (m02.Y()) {
                s1.this.v0(128);
                h(th2);
                return;
            }
            try {
                m02.execute(new c(th2));
            } catch (RejectedExecutionException unused) {
                s1.this.v0(128);
                s1.this.f44752l.v(th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            s1.this.v0(128);
            try {
                int i9 = b.f44775a[s1.this.f44753m.getHandshakeStatus().ordinal()];
                if (i9 == 1) {
                    s1.this.B0(this);
                } else if (i9 == 2 || i9 == 3) {
                    s1.this.W0();
                    s1 s1Var = s1.this;
                    s1Var.e1(s1Var.f44752l, this.f44805a);
                    if (this.f44805a) {
                        s1 s1Var2 = s1.this;
                        s1Var2.c1(s1Var2.f44752l);
                    }
                    s1 s1Var3 = s1.this;
                    s1Var3.G0(s1Var3.f44752l);
                    j();
                } else if (i9 == 4) {
                    s1 s1Var4 = s1.this;
                    if (!s1Var4.g1(s1Var4.f44752l, false) && this.f44805a) {
                        s1 s1Var5 = s1.this;
                        s1Var5.c1(s1Var5.f44752l);
                    }
                    s1 s1Var6 = s1.this;
                    s1Var6.G0(s1Var6.f44752l);
                    j();
                } else if (i9 == 5) {
                    try {
                        s1 s1Var7 = s1.this;
                        s1Var7.c1(s1Var7.f44752l);
                        j();
                    } catch (SSLException e10) {
                        s1 s1Var8 = s1.this;
                        s1Var8.I0(s1Var8.f44752l, e10);
                    }
                } else {
                    throw new AssertionError();
                }
            } catch (Throwable th2) {
                h(th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(Throwable th2) {
            try {
                s1 s1Var = s1.this;
                s1Var.a(s1Var.f44752l, k(th2));
            } catch (Throwable th3) {
                s1.this.f44752l.v(th3);
            }
        }

        private void i(Throwable th2) {
            if (this.f44805a) {
                try {
                    s1 s1Var = s1.this;
                    s1Var.I0(s1Var.f44752l, th2);
                    return;
                } catch (Throwable th3) {
                    h(th3);
                    return;
                }
            }
            s1 s1Var2 = s1.this;
            s1Var2.T0(s1Var2.f44752l, th2);
            s1 s1Var3 = s1.this;
            s1Var3.G0(s1Var3.f44752l);
        }

        private void j() {
            try {
                s1 s1Var = s1.this;
                s1Var.h(s1Var.f44752l, kg.s0.f53902d);
            } finally {
                try {
                    s1 s1Var2 = s1.this;
                    s1Var2.u0(s1Var2.f44752l);
                } catch (Throwable th2) {
                }
            }
            s1 s1Var22 = s1.this;
            s1Var22.u0(s1Var22.f44752l);
        }

        private Throwable k(Throwable th2) {
            return (this.f44805a && !(th2 instanceof DecoderException)) ? new DecoderException(th2) : th2;
        }

        void g() {
            s1.this.f44752l.m0().execute(new b());
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Runnable delegatedTask = s1.this.f44753m.getDelegatedTask();
                if (delegatedTask == null) {
                    return;
                }
                if (delegatedTask instanceof io.grpc.netty.shaded.io.netty.handler.ssl.d) {
                    ((io.grpc.netty.shaded.io.netty.handler.ssl.d) delegatedTask).a(this.f44806b);
                } else {
                    delegatedTask.run();
                    g();
                }
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public s1(SSLEngine sSLEngine, boolean z10) {
        this(sSLEngine, z10, ug.t.f58509a);
    }

    private void A0(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar) {
        try {
            mVar.m0().execute(new e(mVar, jVar));
        } catch (RejectedExecutionException e10) {
            jVar.release();
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0(n nVar) {
        Y0(128);
        try {
            this.f44755o.execute(nVar);
        } catch (RejectedExecutionException e10) {
            v0(128);
            throw e10;
        }
    }

    private void C0(boolean z10) {
        B0(H0(z10));
    }

    private void D0(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        try {
            mVar.m0().execute(new d());
        } catch (RejectedExecutionException e10) {
            O0(e10);
        }
    }

    private void E0(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        m mVar2 = this.f44761u;
        if (mVar2 != null) {
            mVar2.c(kg.s0.f53902d, yVar);
        } else {
            yVar.u(N0());
        }
        n(mVar);
    }

    private void F0(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        if (M0(16)) {
            G0(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        v0(16);
        mVar.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n H0(boolean z10) {
        return z10 ? this.f44759s : this.f44760t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) {
        try {
            if (this.f44762v.z(th2)) {
                mVar.s(new u1(th2));
            }
            if (this.f44761u != null) {
                f1(mVar);
            }
        } catch (SSLException e10) {
            D.debug("SSLException during trying to call SSLEngine.wrap(...) because of an previous SSLException, ignoring...", (Throwable) e10);
        } finally {
            U0(mVar, th2, true, false, true);
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.R0(th2);
    }

    private void J0(boolean z10) {
        if (this.f44753m.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING && !this.f44762v.isDone()) {
            io.grpc.netty.shaded.io.netty.channel.m mVar = this.f44752l;
            try {
                this.f44753m.beginHandshake();
                g1(mVar, false);
                if (!z10) {
                }
            } catch (Throwable th2) {
                try {
                    T0(mVar, th2);
                } finally {
                    if (z10) {
                        G0(mVar);
                    }
                }
            }
        }
    }

    private boolean K0(Throwable th2) {
        StackTraceElement[] stackTrace;
        if (!(th2 instanceof SSLException) && (th2 instanceof IOException) && this.f44763w.isDone()) {
            String message = th2.getMessage();
            if (message != null && F.matcher(message).matches()) {
                return true;
            }
            for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                String className = stackTraceElement.getClassName();
                String methodName = stackTraceElement.getMethodName();
                if (!className.startsWith("io.grpc.netty.shaded.io.netty.") && "read".equals(methodName)) {
                    if (E.matcher(className).matches()) {
                        return true;
                    }
                    try {
                        Class<?> loadClass = io.grpc.netty.shaded.io.netty.util.internal.t.D(getClass()).loadClass(className);
                        if (!SocketChannel.class.isAssignableFrom(loadClass)) {
                            if (!DatagramChannel.class.isAssignableFrom(loadClass)) {
                                if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7 && "com.sun.nio.sctp.SctpChannel".equals(loadClass.getSuperclass().getName())) {
                                }
                            }
                        }
                        return true;
                    } catch (Throwable th3) {
                        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = D;
                        if (bVar.isDebugEnabled()) {
                            bVar.debug("Unexpected exception while loading class {} classname {}", getClass(), className, th3);
                        }
                    }
                }
            }
        }
        return false;
    }

    private static boolean L0(Executor executor) {
        return (executor instanceof ug.j) && ((ug.j) executor).Y();
    }

    private boolean M0(int i9) {
        return (this.f44765y & i9) == i9;
    }

    private static IllegalStateException N0() {
        return new IllegalStateException("pendingUnencryptedWrites is null, handlerRemoved0 called?");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0(Throwable th2) {
        if (th2 == null) {
            if (this.f44763w.B(this.f44752l.d())) {
                this.f44752l.s(n1.f44710b);
            }
        } else if (this.f44763w.z(th2)) {
            this.f44752l.s(new n1(th2));
        }
    }

    private void P0(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        if (mVar.d().b0().l()) {
            return;
        }
        if (M0(256) && this.f44762v.isDone()) {
            return;
        }
        mVar.read();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) {
        m mVar2 = this.f44761u;
        if (mVar2 != null) {
            mVar2.p(mVar, th2);
        }
    }

    private boolean R0(boolean z10) {
        Executor executor = this.f44755o;
        if (executor != ug.t.f58509a && !L0(executor)) {
            C0(z10);
            return false;
        }
        while (true) {
            Runnable delegatedTask = this.f44753m.getDelegatedTask();
            if (delegatedTask == null) {
                return true;
            }
            Y0(128);
            if (delegatedTask instanceof io.grpc.netty.shaded.io.netty.handler.ssl.d) {
                try {
                    j jVar = new j(z10);
                    ((io.grpc.netty.shaded.io.netty.handler.ssl.d) delegatedTask).a(jVar);
                    boolean b10 = jVar.b();
                    if (b10) {
                        if (!b10) {
                        }
                        return false;
                    } else if (!b10) {
                    }
                } finally {
                }
            } else {
                try {
                    delegatedTask.run();
                } finally {
                }
            }
        }
    }

    private void S0(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.i iVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        if (!mVar.d().isActive()) {
            mVar.L(yVar);
            return;
        }
        ug.d0<?> d0Var = null;
        if (!iVar.isDone()) {
            long j10 = this.A;
            if (j10 > 0) {
                d0Var = mVar.m0().schedule((Runnable) new i(iVar, mVar, yVar), j10, TimeUnit.MILLISECONDS);
            }
        }
        iVar.c((ug.r<? extends ug.q<? super Void>>) new a(d0Var, mVar, yVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) {
        U0(mVar, th2, true, true, false);
    }

    private void U0(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2, boolean z10, boolean z11, boolean z12) {
        String message;
        try {
            Y0(32);
            this.f44753m.closeOutbound();
            if (z10) {
                try {
                    this.f44753m.closeInbound();
                } catch (SSLException e10) {
                    io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = D;
                    if (bVar.isDebugEnabled() && ((message = e10.getMessage()) == null || (!message.contains("possible truncation attack") && !message.contains("closing inbound before receiving peer's close_notify")))) {
                        bVar.debug("{} SSLEngine.closeInbound() raised an exception.", mVar.d(), e10);
                    }
                }
            }
            if (this.f44762v.z(th2) || z12) {
                v1.h(mVar, th2, z11);
            }
        } finally {
            Q0(mVar, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V0(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) {
        try {
            SSLException sSLException = new SSLException("failure when writing TLS control frames", th2);
            Q0(mVar, sSLException);
            if (this.f44762v.z(sSLException)) {
                mVar.s(new u1(sSLException));
            }
        } finally {
            mVar.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean W0() {
        boolean z10 = !this.f44762v.isDone() && this.f44762v.B(this.f44752l.d());
        if (z10) {
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = D;
            if (bVar.isDebugEnabled()) {
                SSLSession session = this.f44753m.getSession();
                bVar.debug("{} HANDSHAKEN: protocol:{} cipher suite:{}", this.f44752l.d(), session.getProtocol(), session.getCipherSuite());
            }
            this.f44752l.s(u1.f44822b);
        }
        if (M0(4)) {
            v0(4);
            if (!this.f44752l.d().b0().l()) {
                this.f44752l.read();
            }
        }
        return z10;
    }

    private boolean X0() {
        boolean z10 = !M0(512);
        if (z10) {
            Y0(512);
        }
        try {
            return W0();
        } finally {
            if (z10) {
                v0(512);
            }
        }
    }

    private void Y0(int i9) {
        this.f44765y = (short) (i9 | this.f44765y);
    }

    private void Z0(boolean z10) {
        if (!M0(8)) {
            Y0(8);
            if (this.f44753m.getUseClientMode()) {
                J0(z10);
            }
            s0();
        } else if (M0(16)) {
            G0(this.f44752l);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteBuffer a1(kg.j jVar, int i9, int i10) {
        return jVar.s1() == 1 ? jVar.e1(i9, i10) : jVar.r1(i9, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
        if (W0() == false) goto L99;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int b1(io.grpc.netty.shaded.io.netty.channel.m r17, kg.j r18, int r19) throws javax.net.ssl.SSLException {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.s1.b1(io.grpc.netty.shaded.io.netty.channel.m, kg.j, int):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c1(io.grpc.netty.shaded.io.netty.channel.m mVar) throws SSLException {
        return b1(mVar, kg.s0.f53902d, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0070 A[Catch: all -> 0x0086, LOOP:0: B:18:0x0045->B:20:0x0070, LOOP_END, TRY_LEAVE, TryCatch #0 {all -> 0x0086, blocks: (B:9:0x001b, B:18:0x0045, B:20:0x0070), top: B:34:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007c A[EDGE_INSN: B:37:0x007c->B:22:0x007c ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private javax.net.ssl.SSLEngineResult d1(kg.k r7, javax.net.ssl.SSLEngine r8, kg.j r9, kg.j r10) throws javax.net.ssl.SSLException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            int r2 = r9.Q1()     // Catch: java.lang.Throwable -> L88
            int r3 = r9.P1()     // Catch: java.lang.Throwable -> L88
            boolean r4 = r9.h1()     // Catch: java.lang.Throwable -> L88
            if (r4 != 0) goto L2b
            io.grpc.netty.shaded.io.netty.handler.ssl.s1$l r4 = r6.f44754n     // Catch: java.lang.Throwable -> L88
            boolean r4 = r4.f44802a     // Catch: java.lang.Throwable -> L88
            if (r4 != 0) goto L17
            goto L2b
        L17:
            kg.j r7 = r7.h(r3)     // Catch: java.lang.Throwable -> L88
            r7.z2(r9, r2, r3)     // Catch: java.lang.Throwable -> L86
            java.nio.ByteBuffer[] r2 = r6.f44757q     // Catch: java.lang.Throwable -> L86
            int r4 = r7.Q1()     // Catch: java.lang.Throwable -> L86
            java.nio.ByteBuffer r3 = r7.e1(r4, r3)     // Catch: java.lang.Throwable -> L86
            r2[r1] = r3     // Catch: java.lang.Throwable -> L86
            goto L45
        L2b:
            boolean r7 = r9 instanceof kg.o     // Catch: java.lang.Throwable -> L88
            if (r7 != 0) goto L40
            int r7 = r9.s1()     // Catch: java.lang.Throwable -> L88
            r4 = 1
            if (r7 != r4) goto L40
            java.nio.ByteBuffer[] r7 = r6.f44757q     // Catch: java.lang.Throwable -> L88
            java.nio.ByteBuffer r2 = r9.e1(r2, r3)     // Catch: java.lang.Throwable -> L88
            r7[r1] = r2     // Catch: java.lang.Throwable -> L88
            r2 = r7
            goto L44
        L40:
            java.nio.ByteBuffer[] r2 = r9.t1()     // Catch: java.lang.Throwable -> L88
        L44:
            r7 = r0
        L45:
            int r3 = r10.K2()     // Catch: java.lang.Throwable -> L86
            int r4 = r10.t2()     // Catch: java.lang.Throwable -> L86
            java.nio.ByteBuffer r3 = r10.r1(r3, r4)     // Catch: java.lang.Throwable -> L86
            javax.net.ssl.SSLEngineResult r3 = r8.wrap(r2, r3)     // Catch: java.lang.Throwable -> L86
            int r4 = r3.bytesConsumed()     // Catch: java.lang.Throwable -> L86
            r9.l2(r4)     // Catch: java.lang.Throwable -> L86
            int r4 = r10.K2()     // Catch: java.lang.Throwable -> L86
            int r5 = r3.bytesProduced()     // Catch: java.lang.Throwable -> L86
            int r4 = r4 + r5
            r10.L2(r4)     // Catch: java.lang.Throwable -> L86
            javax.net.ssl.SSLEngineResult$Status r4 = r3.getStatus()     // Catch: java.lang.Throwable -> L86
            javax.net.ssl.SSLEngineResult$Status r5 = javax.net.ssl.SSLEngineResult.Status.BUFFER_OVERFLOW     // Catch: java.lang.Throwable -> L86
            if (r4 != r5) goto L7c
            javax.net.ssl.SSLSession r3 = r8.getSession()     // Catch: java.lang.Throwable -> L86
            int r3 = r3.getPacketBufferSize()     // Catch: java.lang.Throwable -> L86
            r10.n0(r3)     // Catch: java.lang.Throwable -> L86
            goto L45
        L7c:
            java.nio.ByteBuffer[] r8 = r6.f44757q
            r8[r1] = r0
            if (r7 == 0) goto L85
            r7.release()
        L85:
            return r3
        L86:
            r8 = move-exception
            goto L8a
        L88:
            r8 = move-exception
            r7 = r0
        L8a:
            java.nio.ByteBuffer[] r9 = r6.f44757q
            r9[r1] = r0
            if (r7 == 0) goto L93
            r7.release()
        L93:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.s1.d1(kg.k, javax.net.ssl.SSLEngine, kg.j, kg.j):javax.net.ssl.SSLEngineResult");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e1(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10) throws SSLException {
        kg.j s10;
        kg.k P = mVar.P();
        kg.j jVar = null;
        try {
            int i9 = this.C;
            kg.j jVar2 = null;
            while (!mVar.f0()) {
                try {
                    io.grpc.netty.shaded.io.netty.channel.y F2 = mVar.F();
                    if (i9 > 0) {
                        s10 = this.f44761u.q(P, i9, F2);
                    } else {
                        s10 = this.f44761u.s(F2);
                    }
                    if (s10 == null) {
                        break;
                    }
                    if (jVar2 == null) {
                        jVar2 = q0(mVar, s10.P1(), s10.s1());
                    }
                    SSLEngineResult d12 = d1(P, this.f44753m, s10, jVar2);
                    if (s10.j1()) {
                        this.f44761u.e(s10, F2);
                        F2 = null;
                    } else {
                        s10.release();
                    }
                    if (jVar2.j1()) {
                        if (F2 != null) {
                            mVar.c(jVar2, F2);
                        } else {
                            mVar.c0(jVar2);
                        }
                        jVar2 = null;
                    } else if (F2 != null) {
                        mVar.c(kg.s0.f53902d, F2);
                    }
                    if (d12.getStatus() == SSLEngineResult.Status.CLOSED) {
                        Throwable L = this.f44762v.L();
                        if (L == null && (L = this.f44763w.L()) == null) {
                            L = new SslClosedEngineException("SSLEngine closed already");
                        }
                        this.f44761u.p(mVar, L);
                        if (jVar2 != null) {
                            jVar2.release();
                        }
                        if (z10) {
                            Y0(16);
                            return;
                        }
                        return;
                    }
                    int i10 = b.f44775a[d12.getHandshakeStatus().ordinal()];
                    if (i10 != 1) {
                        if (i10 == 2 || i10 == 3) {
                            W0();
                        } else if (i10 != 4) {
                            if (i10 == 5) {
                                P0(mVar);
                                if (jVar2 != null) {
                                    jVar2.release();
                                }
                                if (z10) {
                                    Y0(16);
                                    return;
                                }
                                return;
                            }
                            throw new IllegalStateException("Unknown handshake status: " + d12.getHandshakeStatus());
                        } else if (d12.bytesProduced() > 0 && this.f44761u.m()) {
                            this.f44761u.a(kg.s0.f53902d);
                        }
                    } else if (!R0(z10)) {
                        break;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    jVar = jVar2;
                    if (jVar != null) {
                        jVar.release();
                    }
                    if (z10) {
                        Y0(16);
                    }
                    throw th;
                }
            }
            if (jVar2 != null) {
                jVar2.release();
            }
            if (z10) {
                Y0(16);
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void f1(io.grpc.netty.shaded.io.netty.channel.m mVar) throws SSLException {
        if (this.f44761u.m()) {
            this.f44761u.c(kg.s0.f53902d, mVar.F());
        }
        if (!this.f44762v.isDone()) {
            Y0(2);
        }
        try {
            e1(mVar, false);
        } finally {
            G0(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g1(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10) throws SSLException {
        kg.k P = mVar.P();
        kg.j jVar = null;
        while (!mVar.f0()) {
            try {
                if (jVar == null) {
                    jVar = q0(mVar, 2048, 1);
                }
                SSLEngineResult d12 = d1(P, this.f44753m, kg.s0.f53902d, jVar);
                if (d12.bytesProduced() > 0) {
                    mVar.c0(jVar).c((ug.r<? extends ug.q<? super Void>>) new c(mVar));
                    if (z10) {
                        Y0(16);
                    }
                    jVar = null;
                }
                SSLEngineResult.HandshakeStatus handshakeStatus = d12.getHandshakeStatus();
                int i9 = b.f44775a[handshakeStatus.ordinal()];
                if (i9 == 1) {
                    if (!R0(z10)) {
                        break;
                    }
                } else if (i9 == 2) {
                    if (W0() && z10 && !this.f44761u.m()) {
                        e1(mVar, true);
                    }
                    if (jVar != null) {
                        jVar.release();
                    }
                    return false;
                } else if (i9 == 3) {
                    if (W0() && z10 && !this.f44761u.m()) {
                        e1(mVar, true);
                    }
                    if (!z10) {
                        c1(mVar);
                    }
                    if (jVar != null) {
                        jVar.release();
                    }
                    return true;
                } else if (i9 != 4) {
                    if (i9 == 5) {
                        if (z10 || c1(mVar) <= 0) {
                            return false;
                        }
                    } else {
                        throw new IllegalStateException("Unknown handshake status: " + d12.getHandshakeStatus());
                    }
                }
                if ((d12.bytesProduced() == 0 && handshakeStatus != SSLEngineResult.HandshakeStatus.NEED_TASK) || (d12.bytesConsumed() == 0 && d12.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING)) {
                    break;
                }
            } finally {
                if (jVar != null) {
                    jVar.release();
                }
            }
        }
        if (jVar != null) {
            jVar.release();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o0(io.grpc.netty.shaded.io.netty.channel.i iVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        ug.z.b(false, iVar, yVar);
    }

    private kg.j p0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9) {
        kg.k P = mVar.P();
        if (this.f44754n.f44802a) {
            return P.h(i9);
        }
        return P.l(i9);
    }

    private kg.j q0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10) {
        return this.f44754n.a(this, mVar.P(), i9, i10);
    }

    private void s0() {
        ug.x<io.grpc.netty.shaded.io.netty.channel.e> xVar = this.f44762v;
        long j10 = this.f44766z;
        if (j10 <= 0 || xVar.isDone()) {
            return;
        }
        xVar.c((ug.r<? extends ug.q<? super io.grpc.netty.shaded.io.netty.channel.e>>) new h(this.f44752l.m0().schedule((Runnable) new g(xVar, j10), j10, TimeUnit.MILLISECONDS)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t0(kg.j jVar, kg.j jVar2, int i9) {
        int P1 = jVar2.P1();
        int F2 = jVar.F();
        if (i9 - jVar.P1() < P1 || ((!jVar.k1(P1) || F2 < i9) && (F2 >= i9 || !kg.n.m(jVar.m0(P1, false))))) {
            return false;
        }
        jVar.x2(jVar2);
        jVar2.release();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        B();
        F0(mVar);
        P0(mVar);
        v0(256);
        mVar.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0(int i9) {
        this.f44765y = (short) ((~i9) & this.f44765y);
    }

    private void w0(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar, boolean z10) throws Exception {
        Y0(32);
        this.f44753m.closeOutbound();
        if (!mVar.d().isActive()) {
            if (z10) {
                mVar.M(yVar);
                return;
            } else {
                mVar.L(yVar);
                return;
            }
        }
        io.grpc.netty.shaded.io.netty.channel.y F2 = mVar.F();
        try {
            E0(mVar, F2);
            if (!M0(64)) {
                Y0(64);
                S0(mVar, F2, (io.grpc.netty.shaded.io.netty.channel.y) ug.z.b(false, mVar.F(), yVar));
                return;
            }
            this.f44763w.c((ug.r) new f(yVar));
        } catch (Throwable th2) {
            if (!M0(64)) {
                Y0(64);
                S0(mVar, F2, (io.grpc.netty.shaded.io.netty.channel.y) ug.z.b(false, mVar.F(), yVar));
            } else {
                this.f44763w.c((ug.r) new f(yVar));
            }
            throw th2;
        }
    }

    private void x0(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar) throws NotSslRecordException {
        int i9 = this.f44764x;
        if (i9 > 0) {
            if (jVar.P1() < i9) {
                return;
            }
        } else {
            int P1 = jVar.P1();
            if (P1 < 5) {
                return;
            }
            int d10 = v1.d(jVar, jVar.Q1());
            if (d10 == -2) {
                NotSslRecordException notSslRecordException = new NotSslRecordException("not an SSL/TLS record: " + kg.n.v(jVar));
                jVar.l2(jVar.P1());
                T0(mVar, notSslRecordException);
                throw notSslRecordException;
            } else if (d10 > P1) {
                this.f44764x = d10;
                return;
            } else {
                i9 = d10;
            }
        }
        this.f44764x = 0;
        try {
            b1(mVar, jVar, i9);
        } catch (Throwable th2) {
            I0(mVar, th2);
        }
    }

    private void y0(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar) {
        try {
            b1(mVar, jVar, jVar.P1());
        } catch (Throwable th2) {
            I0(mVar, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public void A(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        this.f44752l = mVar;
        io.grpc.netty.shaded.io.netty.channel.e d10 = mVar.d();
        this.f44761u = new m(d10, 16);
        boolean equals = Boolean.TRUE.equals(d10.b0().b(io.grpc.netty.shaded.io.netty.channel.r.G));
        boolean isActive = d10.isActive();
        if (isActive || equals) {
            Z0(isActive);
            if (equals) {
                io.grpc.netty.shaded.io.netty.channel.s S = d10.k0().S();
                if (S == null || S.I() > 0) {
                    Y0(16);
                }
            }
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void D(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        if (!this.f44758r) {
            Z0(true);
        }
        mVar.q();
    }

    @Override // pg.a
    public void I(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        try {
            if (!this.f44761u.m()) {
                this.f44761u.p(mVar, new ChannelException("Pending write on removal of SslHandler"));
            }
            SSLHandshakeException sSLHandshakeException = null;
            this.f44761u = null;
            if (!this.f44762v.isDone()) {
                sSLHandshakeException = new SSLHandshakeException("SslHandler removed before handshake completed");
                if (this.f44762v.z(sSLHandshakeException)) {
                    mVar.s(new u1(sSLHandshakeException));
                }
            }
            if (!this.f44763w.isDone()) {
                if (sSLHandshakeException == null) {
                    sSLHandshakeException = new SSLHandshakeException("SslHandler removed before handshake completed");
                }
                O0(sSLHandshakeException);
            }
        } finally {
            io.grpc.netty.shaded.io.netty.util.r.a(this.f44753m);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void V(io.grpc.netty.shaded.io.netty.channel.m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        mVar.Q(socketAddress, socketAddress2, yVar);
    }

    @Override // pg.a, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void Z(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        u0(mVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k, io.grpc.netty.shaded.io.netty.channel.o
    public void a(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2) throws Exception {
        if (K0(th2)) {
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = D;
            if (bVar.isDebugEnabled()) {
                bVar.debug("{} Swallowing a harmless 'connection reset by peer / broken pipe' error that occurred while writing close_notify in response to the peer's close_notify", mVar.d(), th2);
            }
            if (mVar.d().isActive()) {
                mVar.close();
                return;
            }
            return;
        }
        mVar.v(th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        if (!(obj instanceof kg.j)) {
            UnsupportedMessageTypeException unsupportedMessageTypeException = new UnsupportedMessageTypeException(obj, kg.j.class);
            io.grpc.netty.shaded.io.netty.util.r.c(obj);
            yVar.u(unsupportedMessageTypeException);
            return;
        }
        m mVar2 = this.f44761u;
        if (mVar2 == null) {
            io.grpc.netty.shaded.io.netty.util.r.c(obj);
            yVar.u(N0());
            return;
        }
        mVar2.c((kg.j) obj, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void j(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        w0(mVar, yVar, true);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        w0(mVar, yVar, false);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void n(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        if (this.f44758r && !M0(1)) {
            Y0(1);
            this.f44761u.v(mVar);
            G0(mVar);
            Z0(true);
        } else if (M0(128)) {
        } else {
            try {
                f1(mVar);
            } catch (Throwable th2) {
                T0(mVar, th2);
                io.grpc.netty.shaded.io.netty.util.internal.t.R0(th2);
            }
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void o(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        if (!this.f44762v.isDone()) {
            Y0(4);
        }
        mVar.read();
    }

    public String r0() {
        SSLEngine z02 = z0();
        if (z02 instanceof io.grpc.netty.shaded.io.netty.handler.ssl.a) {
            return ((io.grpc.netty.shaded.io.netty.handler.ssl.a) z02).a();
        }
        return null;
    }

    @Override // pg.a, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void t(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        boolean z10 = this.f44762v.L() != null;
        ClosedChannelException closedChannelException = new ClosedChannelException();
        U0(mVar, closedChannelException, !M0(32), M0(8), false);
        O0(closedChannelException);
        try {
            super.t(mVar);
        } catch (DecoderException e10) {
            if (!z10 || !(e10.getCause() instanceof SSLException)) {
                throw e10;
            }
        }
    }

    @Override // pg.a
    protected void x(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws SSLException {
        if (M0(128)) {
            return;
        }
        if (this.f44756p) {
            x0(mVar, jVar);
        } else {
            y0(mVar, jVar);
        }
    }

    public SSLEngine z0() {
        return this.f44753m;
    }

    public s1(SSLEngine sSLEngine, boolean z10, Executor executor) {
        this.f44757q = new ByteBuffer[1];
        this.f44759s = new n(true);
        this.f44760t = new n(false);
        this.f44762v = new k(this, null);
        this.f44763w = new k(this, null);
        this.f44766z = 10000L;
        this.A = 3000L;
        this.C = 16384;
        this.f44753m = (SSLEngine) io.grpc.netty.shaded.io.netty.util.internal.s.h(sSLEngine, "engine");
        this.f44755o = (Executor) io.grpc.netty.shaded.io.netty.util.internal.s.h(executor, "delegatedTaskExecutor");
        l c10 = l.c(sSLEngine);
        this.f44754n = c10;
        this.f44758r = z10;
        this.f44756p = c10.d(sSLEngine);
        L(c10.f44803b);
    }
}
