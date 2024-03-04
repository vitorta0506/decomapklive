package io.grpc.netty.shaded.io.netty.handler.ssl;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import io.grpc.netty.shaded.io.netty.handler.ssl.ApplicationProtocolConfig;
import io.grpc.netty.shaded.io.netty.handler.ssl.util.LazyX509Certificate;
import io.grpc.netty.shaded.io.netty.internal.tcnative.Buffer;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import io.grpc.netty.shaded.io.netty.util.ResourceLeakDetector;
import java.nio.ByteBuffer;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionBindingEvent;
import javax.net.ssl.SSLSessionBindingListener;
import javax.security.cert.X509Certificate;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
public class k1 extends SSLEngine implements io.grpc.netty.shaded.io.netty.util.s, io.grpc.netty.shaded.io.netty.handler.ssl.a {
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b G = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(k1.class);
    private static final ResourceLeakDetector<k1> H = io.grpc.netty.shaded.io.netty.util.t.b().c(k1.class);
    private static final int[] I = {SSL.f44935b, SSL.f44936c, SSL.f44937d, SSL.f44938e, SSL.f44939f, SSL.f44940g};
    static final int J = SSL.f44954u;
    static final int K = SSL.f44955v;
    private static final SSLEngineResult L = new SSLEngineResult(SSLEngineResult.Status.OK, SSLEngineResult.HandshakeStatus.NEED_UNWRAP, 0, 0);
    private static final SSLEngineResult M = new SSLEngineResult(SSLEngineResult.Status.CLOSED, SSLEngineResult.HandshakeStatus.NEED_UNWRAP, 0, 0);
    private static final SSLEngineResult N = new SSLEngineResult(SSLEngineResult.Status.OK, SSLEngineResult.HandshakeStatus.NEED_WRAP, 0, 0);
    private static final SSLEngineResult O = new SSLEngineResult(SSLEngineResult.Status.CLOSED, SSLEngineResult.HandshakeStatus.NEED_WRAP, 0, 0);
    private static final SSLEngineResult P = new SSLEngineResult(SSLEngineResult.Status.CLOSED, SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING, 0, 0);
    private final ByteBuffer[] A;
    private final ByteBuffer[] B;
    private final boolean C;
    private int D;
    private int E;
    private Throwable F;

    /* renamed from: a  reason: collision with root package name */
    private long f44634a;

    /* renamed from: b  reason: collision with root package name */
    private long f44635b;

    /* renamed from: c  reason: collision with root package name */
    private f f44636c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f44637d;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f44638e;

    /* renamed from: f  reason: collision with root package name */
    private volatile String f44639f;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f44640g;

    /* renamed from: h  reason: collision with root package name */
    private String[] f44641h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f44642i;

    /* renamed from: j  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.v<k1> f44643j;

    /* renamed from: k  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.b f44644k;

    /* renamed from: l  reason: collision with root package name */
    private volatile ClientAuth f44645l;

    /* renamed from: m  reason: collision with root package name */
    private volatile long f44646m;

    /* renamed from: n  reason: collision with root package name */
    private String f44647n;

    /* renamed from: o  reason: collision with root package name */
    private Object f44648o;

    /* renamed from: p  reason: collision with root package name */
    private List<String> f44649p;

    /* renamed from: q  reason: collision with root package name */
    private volatile Collection<?> f44650q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f44651r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f44652s;

    /* renamed from: t  reason: collision with root package name */
    final boolean f44653t;

    /* renamed from: u  reason: collision with root package name */
    private final boolean f44654u;

    /* renamed from: v  reason: collision with root package name */
    final kg.k f44655v;

    /* renamed from: w  reason: collision with root package name */
    private final p0 f44656w;

    /* renamed from: x  reason: collision with root package name */
    private final f0 f44657x;

    /* renamed from: y  reason: collision with root package name */
    private final j1 f44658y;

    /* renamed from: z  reason: collision with root package name */
    private final x0 f44659z;

    /* loaded from: classes5.dex */
    class a extends io.grpc.netty.shaded.io.netty.util.b {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.b
        protected void deallocate() {
            k1.this.i0();
            if (k1.this.f44643j != null) {
                k1.this.f44643j.b(k1.this);
            }
            k1.this.f44658y.release();
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        public io.grpc.netty.shaded.io.netty.util.s touch(Object obj) {
            if (k1.this.f44643j != null) {
                k1.this.f44643j.a(obj);
            }
            return k1.this;
        }
    }

    /* loaded from: classes5.dex */
    class b extends m {

        /* renamed from: c  reason: collision with root package name */
        private String[] f44661c;

        /* renamed from: d  reason: collision with root package name */
        private List f44662d;

        b(x0 x0Var) {
            super(x0Var);
        }

        @Override // javax.net.ssl.ExtendedSSLSession
        public String[] getPeerSupportedSignatureAlgorithms() {
            String[] strArr;
            synchronized (k1.this) {
                if (this.f44661c == null) {
                    if (k1.this.J()) {
                        this.f44661c = io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
                    } else {
                        String[] sigAlgs = SSL.getSigAlgs(k1.this.f44634a);
                        if (sigAlgs == null) {
                            this.f44661c = io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
                        } else {
                            LinkedHashSet linkedHashSet = new LinkedHashSet(sigAlgs.length);
                            for (String str : sigAlgs) {
                                String a10 = m1.a(str);
                                if (a10 != null) {
                                    linkedHashSet.add(a10);
                                }
                            }
                            this.f44661c = (String[]) linkedHashSet.toArray(new String[0]);
                        }
                    }
                }
                strArr = (String[]) this.f44661c.clone();
            }
            return strArr;
        }

        @Override // javax.net.ssl.ExtendedSSLSession
        public List getRequestedServerNames() {
            List list;
            if (k1.this.f44654u) {
                return q.b(k1.this.f44649p);
            }
            synchronized (k1.this) {
                if (this.f44662d == null) {
                    if (k1.this.J()) {
                        this.f44662d = Collections.emptyList();
                    } else if (SSL.getSniHostname(k1.this.f44634a) == null) {
                        this.f44662d = Collections.emptyList();
                    } else {
                        this.f44662d = q.a(SSL.getSniHostname(k1.this.f44634a).getBytes(io.grpc.netty.shaded.io.netty.util.h.f45016d));
                    }
                }
                list = this.f44662d;
            }
            return list;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44664a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f44665b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f44666c;

        static {
            int[] iArr = new int[ApplicationProtocolConfig.Protocol.values().length];
            f44666c = iArr;
            try {
                iArr[ApplicationProtocolConfig.Protocol.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44666c[ApplicationProtocolConfig.Protocol.ALPN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44666c[ApplicationProtocolConfig.Protocol.NPN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f44666c[ApplicationProtocolConfig.Protocol.NPN_AND_ALPN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ClientAuth.values().length];
            f44665b = iArr2;
            try {
                iArr2[ClientAuth.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f44665b[ClientAuth.REQUIRE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f44665b[ClientAuth.OPTIONAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[f.values().length];
            f44664a = iArr3;
            try {
                iArr3[f.NOT_STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f44664a[f.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f44664a[f.STARTED_IMPLICITLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f44664a[f.STARTED_EXPLICITLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* loaded from: classes5.dex */
    private final class d extends g<rg.a> implements io.grpc.netty.shaded.io.netty.handler.ssl.d {

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f44668a;

            a(Runnable runnable) {
                this.f44668a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                k1.this.f44640g = false;
                this.f44668a.run();
            }
        }

        d(rg.a aVar) {
            super(aVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.d
        public void a(Runnable runnable) {
            if (k1.this.J()) {
                runnable.run();
            } else {
                ((rg.a) this.f44687a).e(new a(runnable));
            }
        }
    }

    /* loaded from: classes5.dex */
    private final class e implements x0 {

        /* renamed from: a  reason: collision with root package name */
        private final z0 f44670a;

        /* renamed from: b  reason: collision with root package name */
        private X509Certificate[] f44671b;

        /* renamed from: c  reason: collision with root package name */
        private Certificate[] f44672c;

        /* renamed from: e  reason: collision with root package name */
        private String f44674e;

        /* renamed from: f  reason: collision with root package name */
        private String f44675f;

        /* renamed from: h  reason: collision with root package name */
        private volatile long f44677h;

        /* renamed from: j  reason: collision with root package name */
        private volatile Certificate[] f44679j;

        /* renamed from: k  reason: collision with root package name */
        private Map<String, Object> f44680k;

        /* renamed from: d  reason: collision with root package name */
        private boolean f44673d = true;

        /* renamed from: g  reason: collision with root package name */
        private a1 f44676g = a1.f44496c;

        /* renamed from: i  reason: collision with root package name */
        private volatile int f44678i = k1.J;

        e(z0 z0Var) {
            this.f44670a = z0Var;
        }

        private void g(byte[][] bArr, int i9) {
            for (int i10 = 0; i10 < bArr.length; i10++) {
                int i11 = i9 + i10;
                this.f44672c[i11] = new LazyX509Certificate(bArr[i10]);
                this.f44671b[i11] = new io.grpc.netty.shaded.io.netty.handler.ssl.util.a(bArr[i10]);
            }
        }

        private SSLSessionBindingEvent h(String str) {
            return new SSLSessionBindingEvent(k1.this.f44659z, str);
        }

        private void i(Object obj, String str) {
            if (obj instanceof SSLSessionBindingListener) {
                ((SSLSessionBindingListener) obj).valueUnbound(h(str));
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
        public void a(int i9) {
            if (i9 > k1.J) {
                int i10 = this.f44678i;
                int i11 = k1.K;
                if (i10 != i11) {
                    this.f44678i = i11;
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
        public a1 c() {
            a1 a1Var;
            byte[] sessionId;
            synchronized (k1.this) {
                if (this.f44676g == a1.f44496c && !k1.this.J() && (sessionId = SSL.getSessionId(k1.this.f44634a)) != null) {
                    this.f44676g = new a1(sessionId);
                }
                a1Var = this.f44676g;
            }
            return a1Var;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
        public void d(byte[] bArr, String str, String str2, byte[] bArr2, byte[][] bArr3, long j10, long j11) throws SSLException {
            synchronized (k1.this) {
                if (!k1.this.J()) {
                    this.f44677h = j10;
                    a1 a1Var = this.f44676g;
                    a1 a1Var2 = a1.f44496c;
                    if (a1Var == a1Var2) {
                        if (bArr != null) {
                            a1Var2 = new a1(bArr);
                        }
                        this.f44676g = a1Var2;
                    }
                    this.f44675f = k1.this.r0(str);
                    this.f44674e = str2;
                    if (k1.this.f44654u) {
                        if (k1.L(bArr3)) {
                            this.f44672c = io.grpc.netty.shaded.io.netty.util.internal.h.f45073j;
                            this.f44671b = io.grpc.netty.shaded.io.netty.util.internal.h.f45075l;
                        } else {
                            this.f44672c = new Certificate[bArr3.length];
                            this.f44671b = new X509Certificate[bArr3.length];
                            g(bArr3, 0);
                        }
                    } else if (k1.K(bArr2)) {
                        this.f44672c = io.grpc.netty.shaded.io.netty.util.internal.h.f45073j;
                        this.f44671b = io.grpc.netty.shaded.io.netty.util.internal.h.f45075l;
                    } else if (k1.L(bArr3)) {
                        this.f44672c = new Certificate[]{new LazyX509Certificate(bArr2)};
                        this.f44671b = new X509Certificate[]{new io.grpc.netty.shaded.io.netty.handler.ssl.util.a(bArr2)};
                    } else {
                        Certificate[] certificateArr = new Certificate[bArr3.length + 1];
                        this.f44672c = certificateArr;
                        this.f44671b = new X509Certificate[bArr3.length + 1];
                        certificateArr[0] = new LazyX509Certificate(bArr2);
                        this.f44671b[0] = new io.grpc.netty.shaded.io.netty.handler.ssl.util.a(bArr2);
                        g(bArr3, 1);
                    }
                    k1.this.z();
                    k1.this.f44636c = f.FINISHED;
                } else {
                    throw new SSLException("Already closed");
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
        public void e(Certificate[] certificateArr) {
            this.f44679j = certificateArr;
        }

        @Override // javax.net.ssl.SSLSession
        public int getApplicationBufferSize() {
            return this.f44678i;
        }

        @Override // javax.net.ssl.SSLSession
        public String getCipherSuite() {
            synchronized (k1.this) {
                String str = this.f44675f;
                return str == null ? "SSL_NULL_WITH_NULL_NULL" : str;
            }
        }

        @Override // javax.net.ssl.SSLSession
        public long getCreationTime() {
            long j10;
            synchronized (k1.this) {
                j10 = this.f44677h;
            }
            return j10;
        }

        @Override // javax.net.ssl.SSLSession
        public byte[] getId() {
            return c().a();
        }

        @Override // javax.net.ssl.SSLSession
        public long getLastAccessedTime() {
            long j10 = k1.this.f44646m;
            return j10 == -1 ? getCreationTime() : j10;
        }

        @Override // javax.net.ssl.SSLSession
        public Certificate[] getLocalCertificates() {
            Certificate[] certificateArr = this.f44679j;
            if (certificateArr == null) {
                return null;
            }
            return (Certificate[]) certificateArr.clone();
        }

        @Override // javax.net.ssl.SSLSession
        public Principal getLocalPrincipal() {
            Certificate[] certificateArr = this.f44679j;
            if (certificateArr == null || certificateArr.length == 0) {
                return null;
            }
            return ((java.security.cert.X509Certificate) certificateArr[0]).getIssuerX500Principal();
        }

        @Override // javax.net.ssl.SSLSession
        public int getPacketBufferSize() {
            return k1.this.O();
        }

        @Override // javax.net.ssl.SSLSession
        public X509Certificate[] getPeerCertificateChain() throws SSLPeerUnverifiedException {
            X509Certificate[] x509CertificateArr;
            synchronized (k1.this) {
                if (!k1.L(this.f44671b)) {
                    x509CertificateArr = (X509Certificate[]) this.f44671b.clone();
                } else {
                    throw new SSLPeerUnverifiedException("peer not verified");
                }
            }
            return x509CertificateArr;
        }

        @Override // javax.net.ssl.SSLSession
        public Certificate[] getPeerCertificates() throws SSLPeerUnverifiedException {
            Certificate[] certificateArr;
            synchronized (k1.this) {
                if (!k1.L(this.f44672c)) {
                    certificateArr = (Certificate[]) this.f44672c.clone();
                } else {
                    throw new SSLPeerUnverifiedException("peer not verified");
                }
            }
            return certificateArr;
        }

        @Override // javax.net.ssl.SSLSession
        public String getPeerHost() {
            return k1.this.getPeerHost();
        }

        @Override // javax.net.ssl.SSLSession
        public int getPeerPort() {
            return k1.this.getPeerPort();
        }

        @Override // javax.net.ssl.SSLSession
        public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
            return ((java.security.cert.X509Certificate) getPeerCertificates()[0]).getSubjectX500Principal();
        }

        @Override // javax.net.ssl.SSLSession
        public String getProtocol() {
            String str = this.f44674e;
            if (str == null) {
                synchronized (k1.this) {
                    str = !k1.this.J() ? SSL.getVersion(k1.this.f44634a) : "";
                }
            }
            return str;
        }

        @Override // javax.net.ssl.SSLSession
        public Object getValue(String str) {
            io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "name");
            synchronized (this) {
                Map<String, Object> map = this.f44680k;
                if (map == null) {
                    return null;
                }
                return map.get(str);
            }
        }

        @Override // javax.net.ssl.SSLSession
        public String[] getValueNames() {
            synchronized (this) {
                Map<String, Object> map = this.f44680k;
                if (map != null && !map.isEmpty()) {
                    return (String[]) map.keySet().toArray(new String[0]);
                }
                return io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
            }
        }

        @Override // javax.net.ssl.SSLSession
        public void invalidate() {
            synchronized (k1.this) {
                this.f44673d = false;
                this.f44670a.d(this.f44676g);
            }
        }

        @Override // javax.net.ssl.SSLSession
        public boolean isValid() {
            boolean z10;
            synchronized (k1.this) {
                z10 = this.f44673d || this.f44670a.c(this.f44676g);
            }
            return z10;
        }

        @Override // javax.net.ssl.SSLSession
        public void putValue(String str, Object obj) {
            Object put;
            io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "name");
            io.grpc.netty.shaded.io.netty.util.internal.s.h(obj, "value");
            synchronized (this) {
                Map map = this.f44680k;
                if (map == null) {
                    map = new HashMap(2);
                    this.f44680k = map;
                }
                put = map.put(str, obj);
            }
            if (obj instanceof SSLSessionBindingListener) {
                ((SSLSessionBindingListener) obj).valueBound(h(str));
            }
            i(put, str);
        }

        @Override // javax.net.ssl.SSLSession
        public void removeValue(String str) {
            io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "name");
            synchronized (this) {
                Map<String, Object> map = this.f44680k;
                if (map == null) {
                    return;
                }
                i(map.remove(str), str);
            }
        }

        public String toString() {
            return "DefaultOpenSslSession{sessionContext=" + this.f44670a + ", id=" + this.f44676g + '}';
        }

        @Override // javax.net.ssl.SSLSession
        public z0 getSessionContext() {
            return this.f44670a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum f {
        NOT_STARTED,
        STARTED_IMPLICITLY,
        STARTED_EXPLICITLY,
        FINISHED
    }

    /* loaded from: classes5.dex */
    private class g<R extends Runnable> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        protected final R f44687a;

        g(R r10) {
            this.f44687a = r10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (k1.this.J()) {
                return;
            }
            k1.this.f44640g = false;
            this.f44687a.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k1(j1 j1Var, kg.k kVar, String str, int i9, boolean z10, boolean z11) {
        super(str, i9);
        this.f44636c = f.NOT_STARTED;
        this.f44644k = new a();
        ClientAuth clientAuth = ClientAuth.NONE;
        this.f44645l = clientAuth;
        this.f44646m = -1L;
        this.A = new ByteBuffer[1];
        this.B = new ByteBuffer[1];
        e0.e();
        this.f44655v = (kg.k) io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "alloc");
        this.f44657x = (f0) j1Var.a();
        boolean q10 = j1Var.q();
        this.f44654u = q10;
        if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7) {
            this.f44659z = new b(new e(j1Var.y()));
        } else {
            this.f44659z = new e(j1Var.y());
        }
        this.f44656w = j1Var.f44607n;
        boolean z12 = j1Var.f44606m;
        this.C = z12;
        if (!j1Var.y().h()) {
            this.f44659z.e(j1Var.f44603j);
        }
        this.f44653t = z10;
        Lock readLock = j1Var.f44608o.readLock();
        readLock.lock();
        try {
            long newSSL = SSL.newSSL(j1Var.f44597d, !j1Var.q());
            synchronized (this) {
                this.f44634a = newSSL;
                this.f44635b = SSL.bioNewByteBuffer(newSSL, j1Var.K());
                if (!q10) {
                    clientAuth = j1Var.f44604k;
                }
                f0(clientAuth);
                String[] strArr = j1Var.f44605l;
                if (strArr != null) {
                    g0(strArr, true);
                } else {
                    this.f44641h = getEnabledProtocols();
                }
                if (q10 && v1.n(str)) {
                    if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 8) {
                        if (q.e(str)) {
                            SSL.a(this.f44634a, str);
                            this.f44649p = Collections.singletonList(str);
                        }
                    } else {
                        SSL.a(this.f44634a, str);
                        this.f44649p = Collections.singletonList(str);
                    }
                }
                if (z12) {
                    SSL.enableOcsp(this.f44634a);
                }
                if (!z10) {
                    long j10 = this.f44634a;
                    SSL.setMode(j10, SSL.getMode(j10) | SSL.f44950q);
                }
                if (N(SSL.getOptions(this.f44634a), SSL.f44940g, "TLSv1.3")) {
                    if (q10 ? j1.f44594x : j1.f44596z) {
                        SSL.clearOptions(this.f44634a, SSL.f44941h);
                    }
                }
                if (e0.i() && q10) {
                    SSL.setRenegotiateMode(this.f44634a, SSL.B);
                }
                z();
            }
            this.f44658y = j1Var;
            j1Var.retain();
            this.f44643j = z11 ? H.l(this) : null;
        } finally {
            readLock.unlock();
        }
    }

    private void A() throws SSLException {
        if (J()) {
            throw new SSLException("engine closed");
        }
    }

    private void B() throws SSLException {
        this.f44637d = true;
        closeOutbound();
        closeInbound();
    }

    private boolean C() {
        if (SSL.isInInit(this.f44634a) != 0) {
            return false;
        }
        int shutdownSSL = SSL.shutdownSSL(this.f44634a);
        if (shutdownSSL < 0) {
            int error = SSL.getError(this.f44634a, shutdownSSL);
            if (error != SSL.M && error != SSL.I) {
                SSL.clearError();
                return true;
            }
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = G;
            if (bVar.isDebugEnabled()) {
                int lastErrorNumber = SSL.getLastErrorNumber();
                bVar.debug("SSL_shutdown failed: OpenSSL error: {} {}", Integer.valueOf(lastErrorNumber), SSL.getErrorString(lastErrorNumber));
            }
            i0();
            return false;
        }
        return true;
    }

    private SSLEngineResult.HandshakeStatus D(int i9) {
        if (S()) {
            if (this.f44640g) {
                return SSLEngineResult.HandshakeStatus.NEED_TASK;
            }
            return Y(i9);
        }
        return SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
    }

    private SSLEngineResult E(int i9, int i10, SSLException sSLException) throws SSLException {
        int lastErrorNumber = SSL.getLastErrorNumber();
        if (lastErrorNumber != 0) {
            return q0(SSL.I, lastErrorNumber, i9, i10);
        }
        throw sSLException;
    }

    private SSLEngineResult.HandshakeStatus F() throws SSLException {
        if (this.f44640g) {
            return SSLEngineResult.HandshakeStatus.NEED_TASK;
        }
        if (this.f44636c == f.FINISHED) {
            return SSLEngineResult.HandshakeStatus.FINISHED;
        }
        A();
        if (this.F != null) {
            if (SSL.doHandshake(this.f44634a) <= 0) {
                SSL.clearError();
            }
            return G();
        }
        this.f44656w.b(this);
        if (!this.f44642i) {
            this.f44658y.y().f(getPeerHost(), getPeerPort(), this.f44634a);
            this.f44642i = true;
        }
        if (this.f44646m == -1) {
            this.f44646m = System.currentTimeMillis();
        }
        int doHandshake = SSL.doHandshake(this.f44634a);
        if (doHandshake <= 0) {
            int error = SSL.getError(this.f44634a, doHandshake);
            if (error != SSL.J && error != SSL.K) {
                if (error != SSL.L && error != SSL.R && error != SSL.Q) {
                    if (T(SSL.getLastErrorNumber())) {
                        return SSLEngineResult.HandshakeStatus.NEED_WRAP;
                    }
                    if (this.F != null) {
                        return G();
                    }
                    throw j0("SSL_do_handshake", error);
                }
                return SSLEngineResult.HandshakeStatus.NEED_TASK;
            }
            return Y(SSL.bioLengthNonApplication(this.f44635b));
        } else if (SSL.bioLengthNonApplication(this.f44635b) > 0) {
            return SSLEngineResult.HandshakeStatus.NEED_WRAP;
        } else {
            this.f44659z.d(SSL.getSessionId(this.f44634a), SSL.getCipherForSSL(this.f44634a), SSL.getVersion(this.f44634a), SSL.getPeerCertificate(this.f44634a), SSL.getPeerCertChain(this.f44634a), SSL.getTime(this.f44634a) * 1000, 1000 * this.f44658y.z());
            e0();
            return SSLEngineResult.HandshakeStatus.FINISHED;
        }
    }

    private SSLEngineResult.HandshakeStatus G() throws SSLException {
        if (SSL.bioLengthNonApplication(this.f44635b) > 0) {
            return SSLEngineResult.HandshakeStatus.NEED_WRAP;
        }
        Throwable th2 = this.F;
        this.F = null;
        i0();
        if (th2 instanceof SSLHandshakeException) {
            throw ((SSLHandshakeException) th2);
        }
        SSLHandshakeException sSLHandshakeException = new SSLHandshakeException("General OpenSslEngine problem");
        sSLHandshakeException.initCause(th2);
        throw sSLHandshakeException;
    }

    private boolean I(int i9, int i10, int i11) {
        return ((long) i9) - (((long) this.D) * ((long) i11)) >= ((long) i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J() {
        return this.f44638e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean K(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean L(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    private static boolean M(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    private static boolean N(int i9, int i10, String str) {
        return (i9 & i10) == 0 && e0.f44531l.contains(str);
    }

    private SSLEngineResult.HandshakeStatus Q(SSLEngineResult.HandshakeStatus handshakeStatus) throws SSLException {
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING) {
            if (this.f44636c != f.FINISHED) {
                return F();
            }
            return (J() || SSL.bioLengthNonApplication(this.f44635b) <= 0) ? handshakeStatus : SSLEngineResult.HandshakeStatus.NEED_WRAP;
        }
        return handshakeStatus;
    }

    private SSLEngineResult.HandshakeStatus R(SSLEngineResult.HandshakeStatus handshakeStatus, int i9, int i10) throws SSLException {
        if ((handshakeStatus != SSLEngineResult.HandshakeStatus.NEED_UNWRAP || i10 <= 0) && (handshakeStatus != SSLEngineResult.HandshakeStatus.NEED_WRAP || i9 <= 0)) {
            SSLEngineResult.HandshakeStatus handshakeStatus2 = SSLEngineResult.HandshakeStatus.FINISHED;
            if (handshakeStatus != handshakeStatus2) {
                handshakeStatus2 = getHandshakeStatus();
            }
            return Q(handshakeStatus2);
        }
        return F();
    }

    private boolean S() {
        return (this.f44636c == f.NOT_STARTED || J() || (this.f44636c == f.FINISHED && !isInboundDone() && !isOutboundDone())) ? false : true;
    }

    private boolean T(int i9) {
        if (SSL.bioLengthNonApplication(this.f44635b) > 0) {
            String errorString = SSL.getErrorString(i9);
            Throwable sSLException = this.f44636c == f.FINISHED ? new SSLException(errorString) : new SSLHandshakeException(errorString);
            Throwable th2 = this.F;
            if (th2 == null) {
                this.F = sSLException;
            } else {
                io.grpc.netty.shaded.io.netty.util.internal.e0.a(th2, sSLException);
            }
            SSL.clearError();
            return true;
        }
        return false;
    }

    private SSLEngineResult U(SSLEngineResult.HandshakeStatus handshakeStatus, int i9, int i10) {
        return V(SSLEngineResult.Status.OK, handshakeStatus, i9, i10);
    }

    private SSLEngineResult V(SSLEngineResult.Status status, SSLEngineResult.HandshakeStatus handshakeStatus, int i9, int i10) {
        if (isOutboundDone()) {
            if (isInboundDone()) {
                handshakeStatus = SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
                i0();
            }
            return new SSLEngineResult(SSLEngineResult.Status.CLOSED, handshakeStatus, i9, i10);
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_TASK) {
            this.f44640g = true;
        }
        return new SSLEngineResult(status, handshakeStatus, i9, i10);
    }

    private SSLEngineResult W(SSLEngineResult.HandshakeStatus handshakeStatus, int i9, int i10) throws SSLException {
        return U(R(handshakeStatus, i9, i10), i9, i10);
    }

    private SSLEngineResult X(SSLEngineResult.Status status, SSLEngineResult.HandshakeStatus handshakeStatus, int i9, int i10) throws SSLException {
        return V(status, R(handshakeStatus, i9, i10), i9, i10);
    }

    private static SSLEngineResult.HandshakeStatus Y(int i9) {
        return i9 > 0 ? SSLEngineResult.HandshakeStatus.NEED_WRAP : SSLEngineResult.HandshakeStatus.NEED_UNWRAP;
    }

    private int Z(ByteBuffer byteBuffer) throws SSLException {
        int position = byteBuffer.position();
        if (byteBuffer.isDirect()) {
            int readFromSSL = SSL.readFromSSL(this.f44634a, w(byteBuffer) + position, byteBuffer.limit() - position);
            if (readFromSSL > 0) {
                byteBuffer.position(position + readFromSSL);
                return readFromSSL;
            }
            return readFromSSL;
        }
        int limit = byteBuffer.limit();
        int min = Math.min(P(), limit - position);
        kg.j h10 = this.f44655v.h(min);
        try {
            int readFromSSL2 = SSL.readFromSSL(this.f44634a, e0.n(h10), min);
            if (readFromSSL2 > 0) {
                byteBuffer.limit(position + readFromSSL2);
                h10.y0(h10.Q1(), byteBuffer);
                byteBuffer.limit(limit);
            }
            return readFromSSL2;
        } finally {
            h10.release();
        }
    }

    private void a0() throws SSLHandshakeException {
        if (J()) {
            return;
        }
        if (((this.f44654u || SSL.getHandshakeCount(this.f44634a) <= 1) && (!this.f44654u || SSL.getHandshakeCount(this.f44634a) <= 2)) || "TLSv1.3".equals(this.f44659z.getProtocol()) || this.f44636c != f.FINISHED) {
            return;
        }
        i0();
        throw new SSLHandshakeException("remote-initiated renegotiation not allowed");
    }

    private void b0() {
        this.B[0] = null;
    }

    private void c0() {
        this.A[0] = null;
    }

    private String d0(List<String> list, ApplicationProtocolConfig.SelectedListenerFailureBehavior selectedListenerFailureBehavior, String str) throws SSLException {
        if (selectedListenerFailureBehavior == ApplicationProtocolConfig.SelectedListenerFailureBehavior.ACCEPT) {
            return str;
        }
        int size = list.size();
        if (list.contains(str)) {
            return str;
        }
        if (selectedListenerFailureBehavior == ApplicationProtocolConfig.SelectedListenerFailureBehavior.CHOOSE_MY_LAST_PROTOCOL) {
            return list.get(size - 1);
        }
        throw new SSLException("unknown protocol " + str);
    }

    private void e0() throws SSLException {
        ApplicationProtocolConfig.SelectedListenerFailureBehavior d10 = this.f44657x.d();
        List<String> b10 = this.f44657x.b();
        int i9 = c.f44666c[this.f44657x.protocol().ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                String alpnSelected = SSL.getAlpnSelected(this.f44634a);
                if (alpnSelected != null) {
                    this.f44639f = d0(b10, d10, alpnSelected);
                }
            } else if (i9 == 3) {
                String nextProtoNegotiated = SSL.getNextProtoNegotiated(this.f44634a);
                if (nextProtoNegotiated != null) {
                    this.f44639f = d0(b10, d10, nextProtoNegotiated);
                }
            } else if (i9 == 4) {
                String alpnSelected2 = SSL.getAlpnSelected(this.f44634a);
                if (alpnSelected2 == null) {
                    alpnSelected2 = SSL.getNextProtoNegotiated(this.f44634a);
                }
                if (alpnSelected2 != null) {
                    this.f44639f = d0(b10, d10, alpnSelected2);
                }
            } else {
                throw new Error();
            }
        }
    }

    private void f0(ClientAuth clientAuth) {
        if (this.f44654u) {
            return;
        }
        synchronized (this) {
            if (this.f44645l == clientAuth) {
                return;
            }
            if (!J()) {
                int i9 = c.f44665b[clientAuth.ordinal()];
                if (i9 == 1) {
                    SSL.setVerify(this.f44634a, 0, 10);
                } else if (i9 == 2) {
                    SSL.setVerify(this.f44634a, 2, 10);
                } else if (i9 == 3) {
                    SSL.setVerify(this.f44634a, 1, 10);
                } else {
                    throw new Error(clientAuth.toString());
                }
            }
            this.f44645l = clientAuth;
        }
    }

    private void g0(String[] strArr, boolean z10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.j(strArr, "protocols");
        int length = I.length;
        int i9 = 0;
        for (String str : strArr) {
            if (e0.f44531l.contains(str)) {
                if (str.equals(SSLSocketFactory.SSLV2)) {
                    if (length > 0) {
                        length = 0;
                    }
                    if (i9 < 0) {
                        i9 = 0;
                    }
                } else if (str.equals("SSLv3")) {
                    if (length > 1) {
                        length = 1;
                    }
                    if (i9 < 1) {
                        i9 = 1;
                    }
                } else if (str.equals("TLSv1")) {
                    if (length > 2) {
                        length = 2;
                    }
                    if (i9 < 2) {
                        i9 = 2;
                    }
                } else if (str.equals("TLSv1.1")) {
                    if (length > 3) {
                        length = 3;
                    }
                    if (i9 < 3) {
                        i9 = 3;
                    }
                } else if (str.equals("TLSv1.2")) {
                    if (length > 4) {
                        length = 4;
                    }
                    if (i9 < 4) {
                        i9 = 4;
                    }
                } else if (str.equals("TLSv1.3")) {
                    if (length > 5) {
                        length = 5;
                    }
                    if (i9 < 5) {
                        i9 = 5;
                    }
                }
            } else {
                throw new IllegalArgumentException("Protocol " + str + " is not supported.");
            }
        }
        synchronized (this) {
            if (z10) {
                this.f44641h = strArr;
            }
            if (!J()) {
                SSL.clearOptions(this.f44634a, SSL.f44935b | SSL.f44936c | SSL.f44937d | SSL.f44938e | SSL.f44939f | SSL.f44940g);
                int i10 = 0;
                for (int i11 = 0; i11 < length; i11++) {
                    i10 |= I[i11];
                }
                int i12 = i9 + 1;
                while (true) {
                    int[] iArr = I;
                    if (i12 < iArr.length) {
                        i10 |= iArr[i12];
                        i12++;
                    } else {
                        SSL.setOptions(this.f44634a, i10);
                    }
                }
            } else {
                throw new IllegalStateException("failed to enable protocols: " + Arrays.asList(strArr));
            }
        }
    }

    private SSLException j0(String str, int i9) {
        return k0(str, i9, SSL.getLastErrorNumber());
    }

    private SSLException k0(String str, int i9, int i10) {
        String errorString = SSL.getErrorString(i10);
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = G;
        if (bVar.isDebugEnabled()) {
            bVar.debug("{} failed with {}: OpenSSL error: {} {}", str, Integer.valueOf(i9), Integer.valueOf(i10), errorString);
        }
        i0();
        if (this.f44636c == f.FINISHED) {
            return new SSLException(errorString);
        }
        SSLHandshakeException sSLHandshakeException = new SSLHandshakeException(errorString);
        Throwable th2 = this.F;
        if (th2 != null) {
            sSLHandshakeException.initCause(th2);
            this.F = null;
        }
        return sSLHandshakeException;
    }

    private ByteBuffer[] l0(ByteBuffer byteBuffer) {
        ByteBuffer[] byteBufferArr = this.B;
        byteBufferArr[0] = byteBuffer;
        return byteBufferArr;
    }

    private ByteBuffer[] m0(ByteBuffer byteBuffer) {
        ByteBuffer[] byteBufferArr = this.A;
        byteBufferArr[0] = byteBuffer;
        return byteBufferArr;
    }

    private int o0() {
        if (this.f44636c != f.FINISHED) {
            return 0;
        }
        return SSL.sslPending(this.f44634a);
    }

    private SSLEngineResult q0(int i9, int i10, int i11, int i12) throws SSLException {
        if (T(i10)) {
            return new SSLEngineResult(SSLEngineResult.Status.OK, SSLEngineResult.HandshakeStatus.NEED_WRAP, i11, i12);
        }
        throw k0("SSL_read", i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String r0(String str) {
        if (str == null) {
            return null;
        }
        return h.d(str, s0(SSL.getVersion(this.f44634a)));
    }

    private static String s0(String str) {
        char c10 = 0;
        if (str != null && !str.isEmpty()) {
            c10 = str.charAt(0);
        }
        return c10 != 'S' ? c10 != 'T' ? GrsBaseInfo.CountryCodeSource.UNKNOWN : SSLSocketFactory.TLS : SSLSocketFactory.SSL;
    }

    private kg.j v0(ByteBuffer byteBuffer, int i9) throws SSLException {
        int position = byteBuffer.position();
        if (byteBuffer.isDirect()) {
            SSL.bioSetByteBuffer(this.f44635b, w(byteBuffer) + position, i9, false);
            return null;
        }
        kg.j h10 = this.f44655v.h(i9);
        try {
            int limit = byteBuffer.limit();
            byteBuffer.limit(position + i9);
            h10.w2(byteBuffer);
            byteBuffer.position(position);
            byteBuffer.limit(limit);
            SSL.bioSetByteBuffer(this.f44635b, e0.n(h10), i9, false);
            return h10;
        } catch (Throwable th2) {
            h10.release();
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(th2);
            return null;
        }
    }

    private static long w(ByteBuffer byteBuffer) {
        if (io.grpc.netty.shaded.io.netty.util.internal.t.T()) {
            return io.grpc.netty.shaded.io.netty.util.internal.t.u(byteBuffer);
        }
        return Buffer.address(byteBuffer);
    }

    private int w0(ByteBuffer byteBuffer, int i9) {
        int writeToSSL;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        if (byteBuffer.isDirect()) {
            writeToSSL = SSL.writeToSSL(this.f44634a, w(byteBuffer) + position, i9);
            if (writeToSSL > 0) {
                byteBuffer.position(position + writeToSSL);
            }
        } else {
            kg.j h10 = this.f44655v.h(i9);
            try {
                byteBuffer.limit(position + i9);
                h10.Z1(0, byteBuffer);
                byteBuffer.limit(limit);
                writeToSSL = SSL.writeToSSL(this.f44634a, e0.n(h10), i9);
                if (writeToSSL > 0) {
                    byteBuffer.position(position + writeToSSL);
                } else {
                    byteBuffer.position(position);
                }
            } finally {
                h10.release();
            }
        }
        return writeToSSL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        this.D = SSL.getMaxWrapOverhead(this.f44634a);
        this.E = this.f44653t ? P() : P() << 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void H(Throwable th2) {
        Throwable th3 = this.F;
        if (th3 == null) {
            this.F = th2;
        } else {
            io.grpc.netty.shaded.io.netty.util.internal.e0.a(th3, th2);
        }
    }

    final synchronized int O() {
        return P();
    }

    final int P() {
        return this.D + J;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.a
    public String a() {
        return this.f44639f;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized void beginHandshake() throws SSLException {
        int i9 = c.f44664a[this.f44636c.ordinal()];
        if (i9 == 1) {
            this.f44636c = f.STARTED_EXPLICITLY;
            if (F() == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                this.f44640g = true;
            }
            z();
        } else if (i9 == 2) {
            throw new SSLException("renegotiation unsupported");
        } else {
            if (i9 == 3) {
                A();
                this.f44636c = f.STARTED_EXPLICITLY;
                z();
            } else if (i9 != 4) {
                throw new Error();
            }
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized void closeInbound() throws SSLException {
        if (this.f44651r) {
            return;
        }
        this.f44651r = true;
        if (isOutboundDone()) {
            i0();
        }
        if (this.f44636c != f.NOT_STARTED && !this.f44637d) {
            throw new SSLException("Inbound closed before receiving peer's close_notify: possible truncation attack?");
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized void closeOutbound() {
        if (this.f44652s) {
            return;
        }
        this.f44652s = true;
        if (this.f44636c != f.NOT_STARTED && !J()) {
            int shutdown = SSL.getShutdown(this.f44634a);
            int i9 = SSL.F;
            if ((shutdown & i9) != i9) {
                C();
            }
        } else {
            i0();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public String getApplicationProtocol() {
        return this.f44639f;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized Runnable getDelegatedTask() {
        if (J()) {
            return null;
        }
        Runnable task = SSL.getTask(this.f44634a);
        if (task == null) {
            return null;
        }
        if (task instanceof rg.a) {
            return new d((rg.a) task);
        }
        return new g(task);
    }

    @Override // javax.net.ssl.SSLEngine
    public final boolean getEnableSessionCreation() {
        return false;
    }

    @Override // javax.net.ssl.SSLEngine
    public final String[] getEnabledCipherSuites() {
        String[] strArr;
        boolean z10;
        synchronized (this) {
            if (!J()) {
                String[] ciphers = SSL.getCiphers(this.f44634a);
                if (N(SSL.getOptions(this.f44634a), SSL.f44940g, "TLSv1.3")) {
                    strArr = e0.f44532m;
                    z10 = true;
                } else {
                    strArr = io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
                    z10 = false;
                }
                if (ciphers == null) {
                    return io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet(ciphers.length + strArr.length);
                synchronized (this) {
                    for (int i9 = 0; i9 < ciphers.length; i9++) {
                        String r02 = r0(ciphers[i9]);
                        if (r02 == null) {
                            r02 = ciphers[i9];
                        }
                        if ((z10 && e0.l()) || !v1.i(r02)) {
                            linkedHashSet.add(r02);
                        }
                    }
                    Collections.addAll(linkedHashSet, strArr);
                }
                return (String[]) linkedHashSet.toArray(new String[0]);
            }
            return io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final String[] getEnabledProtocols() {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add("SSLv2Hello");
        synchronized (this) {
            if (!J()) {
                int options = SSL.getOptions(this.f44634a);
                if (N(options, SSL.f44937d, "TLSv1")) {
                    arrayList.add("TLSv1");
                }
                if (N(options, SSL.f44938e, "TLSv1.1")) {
                    arrayList.add("TLSv1.1");
                }
                if (N(options, SSL.f44939f, "TLSv1.2")) {
                    arrayList.add("TLSv1.2");
                }
                if (N(options, SSL.f44940g, "TLSv1.3")) {
                    arrayList.add("TLSv1.3");
                }
                if (N(options, SSL.f44935b, SSLSocketFactory.SSLV2)) {
                    arrayList.add(SSLSocketFactory.SSLV2);
                }
                if (N(options, SSL.f44936c, "SSLv3")) {
                    arrayList.add("SSLv3");
                }
                return (String[]) arrayList.toArray(new String[0]);
            }
            return (String[]) arrayList.toArray(new String[0]);
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public String getHandshakeApplicationProtocol() {
        return this.f44639f;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLSession getHandshakeSession() {
        int i9 = c.f44664a[this.f44636c.ordinal()];
        if (i9 == 1 || i9 == 2) {
            return null;
        }
        return this.f44659z;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult.HandshakeStatus getHandshakeStatus() {
        if (S()) {
            if (this.f44640g) {
                return SSLEngineResult.HandshakeStatus.NEED_TASK;
            }
            return Y(SSL.bioLengthNonApplication(this.f44635b));
        }
        return SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
    }

    @Override // javax.net.ssl.SSLEngine
    public final boolean getNeedClientAuth() {
        return this.f44645l == ClientAuth.REQUIRE;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLParameters getSSLParameters() {
        SSLParameters sSLParameters;
        sSLParameters = super.getSSLParameters();
        int l02 = io.grpc.netty.shaded.io.netty.util.internal.t.l0();
        if (l02 >= 7) {
            sSLParameters.setEndpointIdentificationAlgorithm(this.f44647n);
            p.a(sSLParameters, this.f44648o);
            if (l02 >= 8) {
                List<String> list = this.f44649p;
                if (list != null) {
                    q.g(sSLParameters, list);
                }
                if (!J()) {
                    q.h(sSLParameters, (SSL.getOptions(this.f44634a) & SSL.f44934a) != 0);
                }
                q.f(sSLParameters, this.f44650q);
            }
        }
        return sSLParameters;
    }

    @Override // javax.net.ssl.SSLEngine
    public final SSLSession getSession() {
        return this.f44659z;
    }

    @Override // javax.net.ssl.SSLEngine
    public final String[] getSupportedCipherSuites() {
        return (String[]) e0.f44523d.toArray(new String[0]);
    }

    @Override // javax.net.ssl.SSLEngine
    public final String[] getSupportedProtocols() {
        return (String[]) e0.f44531l.toArray(new String[0]);
    }

    @Override // javax.net.ssl.SSLEngine
    public final boolean getUseClientMode() {
        return this.f44654u;
    }

    @Override // javax.net.ssl.SSLEngine
    public final boolean getWantClientAuth() {
        return this.f44645l == ClientAuth.OPTIONAL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h0(q0 q0Var) throws Exception {
        synchronized (this) {
            if (J()) {
                return false;
            }
            SSL.setKeyMaterial(this.f44634a, q0Var.m(), q0Var.c());
            this.f44659z.e(q0Var.f());
            return true;
        }
    }

    public final synchronized void i0() {
        if (!this.f44638e) {
            this.f44638e = true;
            this.f44656w.a(this.f44634a);
            SSL.freeSSL(this.f44634a);
            this.f44635b = 0L;
            this.f44634a = 0L;
            this.f44652s = true;
            this.f44651r = true;
        }
        SSL.clearError();
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized boolean isInboundDone() {
        return this.f44651r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
        if (io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.bioLengthNonApplication(r0) == 0) goto L10;
     */
    @Override // javax.net.ssl.SSLEngine
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean isOutboundDone() {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = r5.f44652s     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L15
            long r0 = r5.f44635b     // Catch: java.lang.Throwable -> L18
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L13
            int r0 = io.grpc.netty.shaded.io.netty.internal.tcnative.SSL.bioLengthNonApplication(r0)     // Catch: java.lang.Throwable -> L18
            if (r0 != 0) goto L15
        L13:
            r0 = 1
            goto L16
        L15:
            r0 = 0
        L16:
            monitor-exit(r5)
            return r0
        L18:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.k1.isOutboundDone():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized int n0() {
        return o0();
    }

    public final synchronized long p0() {
        return this.f44634a;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final int refCnt() {
        return this.f44644k.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final boolean release() {
        return this.f44644k.release();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final io.grpc.netty.shaded.io.netty.util.s retain() {
        this.f44644k.retain();
        return this;
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setEnableSessionCreation(boolean z10) {
        if (z10) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setEnabledCipherSuites(String[] strArr) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(strArr, "cipherSuites");
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        h.c(Arrays.asList(strArr), sb2, sb3, e0.i());
        String sb4 = sb2.toString();
        String sb5 = sb3.toString();
        if (!e0.l() && !sb5.isEmpty()) {
            throw new IllegalArgumentException("TLSv1.3 is not supported by this java version.");
        }
        synchronized (this) {
            if (!J()) {
                try {
                    SSL.setCipherSuites(this.f44634a, sb4, false);
                    if (e0.l()) {
                        SSL.setCipherSuites(this.f44634a, e0.b(G, sb5), true);
                    }
                    HashSet hashSet = new HashSet(this.f44641h.length);
                    Collections.addAll(hashSet, this.f44641h);
                    if (sb4.isEmpty()) {
                        hashSet.remove("TLSv1");
                        hashSet.remove("TLSv1.1");
                        hashSet.remove("TLSv1.2");
                        hashSet.remove("SSLv3");
                        hashSet.remove(SSLSocketFactory.SSLV2);
                        hashSet.remove("SSLv2Hello");
                    }
                    if (sb5.isEmpty()) {
                        hashSet.remove("TLSv1.3");
                    }
                    g0((String[]) hashSet.toArray(io.grpc.netty.shaded.io.netty.util.internal.h.f45069f), false);
                } catch (Exception e10) {
                    throw new IllegalStateException("failed to enable cipher suites: " + sb4, e10);
                }
            } else {
                throw new IllegalStateException("failed to enable cipher suites: " + sb4);
            }
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setEnabledProtocols(String[] strArr) {
        g0(strArr, true);
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setNeedClientAuth(boolean z10) {
        f0(z10 ? ClientAuth.REQUIRE : ClientAuth.NONE);
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized void setSSLParameters(SSLParameters sSLParameters) {
        int l02 = io.grpc.netty.shaded.io.netty.util.internal.t.l0();
        if (l02 >= 7) {
            if (sSLParameters.getAlgorithmConstraints() == null) {
                boolean J2 = J();
                if (l02 >= 8) {
                    if (!J2) {
                        if (this.f44654u) {
                            List<String> c10 = q.c(sSLParameters);
                            for (String str : c10) {
                                SSL.a(this.f44634a, str);
                            }
                            this.f44649p = c10;
                        }
                        if (q.d(sSLParameters)) {
                            SSL.setOptions(this.f44634a, SSL.f44934a);
                        } else {
                            SSL.clearOptions(this.f44634a, SSL.f44934a);
                        }
                    }
                    this.f44650q = sSLParameters.getSNIMatchers();
                }
                String endpointIdentificationAlgorithm = sSLParameters.getEndpointIdentificationAlgorithm();
                if (!J2 && this.f44654u && M(endpointIdentificationAlgorithm)) {
                    SSL.setVerify(this.f44634a, 2, -1);
                }
                this.f44647n = endpointIdentificationAlgorithm;
                this.f44648o = sSLParameters.getAlgorithmConstraints();
            } else {
                throw new IllegalArgumentException("AlgorithmConstraints are not supported.");
            }
        }
        super.setSSLParameters(sSLParameters);
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setUseClientMode(boolean z10) {
        if (z10 != this.f44654u) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setWantClientAuth(boolean z10) {
        f0(z10 ? ClientAuth.OPTIONAL : ClientAuth.NONE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0183, code lost:
        if (r12 != null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0185, code lost:
        r12.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01f4, code lost:
        if (r12 == null) goto L127;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final javax.net.ssl.SSLEngineResult t0(java.nio.ByteBuffer[] r20, int r21, int r22, java.nio.ByteBuffer[] r23, int r24, int r25) throws javax.net.ssl.SSLException {
        /*
            Method dump skipped, instructions count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.k1.t0(java.nio.ByteBuffer[], int, int, java.nio.ByteBuffer[], int, int):javax.net.ssl.SSLEngineResult");
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final io.grpc.netty.shaded.io.netty.util.s touch(Object obj) {
        this.f44644k.touch(obj);
        return this;
    }

    public final SSLEngineResult u0(ByteBuffer[] byteBufferArr, ByteBuffer[] byteBufferArr2) throws SSLException {
        return t0(byteBufferArr, 0, byteBufferArr.length, byteBufferArr2, 0, byteBufferArr2.length);
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr, int i9, int i10) throws SSLException {
        SSLEngineResult t02;
        t02 = t0(m0(byteBuffer), 0, 1, byteBufferArr, i9, i10);
        c0();
        return t02;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized String[] v() {
        if (J()) {
            return io.grpc.netty.shaded.io.netty.util.internal.h.f45069f;
        }
        return SSL.authenticationMethods(this.f44634a);
    }

    /* JADX WARN: Removed duplicated region for block: B:291:0x051e A[Catch: all -> 0x0536, TryCatch #4 {, blocks: (B:9:0x0019, B:11:0x001f, B:13:0x0025, B:16:0x002c, B:18:0x0031, B:17:0x002f, B:31:0x008a, B:33:0x0091, B:35:0x00a8, B:34:0x009a, B:40:0x00b8, B:42:0x00bf, B:44:0x00d6, B:43:0x00c8, B:49:0x00e4, B:51:0x00eb, B:53:0x0102, B:52:0x00f4, B:58:0x0111, B:60:0x0118, B:62:0x012f, B:61:0x0121, B:289:0x0517, B:291:0x051e, B:293:0x0535, B:292:0x052d, B:78:0x015d, B:80:0x0164, B:82:0x017b, B:81:0x016d, B:85:0x0185, B:87:0x018c, B:89:0x01a3, B:88:0x0195, B:94:0x01b9, B:96:0x01c0, B:98:0x01d7, B:97:0x01c9, B:107:0x01f6, B:109:0x01fd, B:111:0x0214, B:110:0x0206, B:119:0x0225, B:121:0x022c, B:123:0x0243, B:122:0x0235, B:129:0x0253, B:131:0x025a, B:133:0x0271, B:132:0x0263, B:155:0x02c4, B:157:0x02cb, B:159:0x02e2, B:158:0x02d4, B:164:0x02f0, B:166:0x02f7, B:168:0x030e, B:167:0x0300, B:201:0x038b, B:203:0x0392, B:205:0x03a9, B:204:0x039b, B:220:0x03e4, B:222:0x03eb, B:224:0x0402, B:223:0x03f4, B:227:0x040a, B:229:0x0411, B:231:0x0428, B:230:0x041a, B:236:0x0434, B:238:0x043b, B:240:0x0452, B:239:0x0444, B:246:0x0460, B:248:0x0467, B:250:0x047e, B:249:0x0470, B:253:0x0486, B:255:0x048d, B:257:0x04a4, B:256:0x0496, B:269:0x04c0, B:271:0x04c7, B:273:0x04de, B:272:0x04d0, B:182:0x0344, B:184:0x034b, B:186:0x0362, B:185:0x0354, B:276:0x04e4, B:278:0x04eb, B:280:0x0502, B:279:0x04f4), top: B:304:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x052d A[Catch: all -> 0x0536, TryCatch #4 {, blocks: (B:9:0x0019, B:11:0x001f, B:13:0x0025, B:16:0x002c, B:18:0x0031, B:17:0x002f, B:31:0x008a, B:33:0x0091, B:35:0x00a8, B:34:0x009a, B:40:0x00b8, B:42:0x00bf, B:44:0x00d6, B:43:0x00c8, B:49:0x00e4, B:51:0x00eb, B:53:0x0102, B:52:0x00f4, B:58:0x0111, B:60:0x0118, B:62:0x012f, B:61:0x0121, B:289:0x0517, B:291:0x051e, B:293:0x0535, B:292:0x052d, B:78:0x015d, B:80:0x0164, B:82:0x017b, B:81:0x016d, B:85:0x0185, B:87:0x018c, B:89:0x01a3, B:88:0x0195, B:94:0x01b9, B:96:0x01c0, B:98:0x01d7, B:97:0x01c9, B:107:0x01f6, B:109:0x01fd, B:111:0x0214, B:110:0x0206, B:119:0x0225, B:121:0x022c, B:123:0x0243, B:122:0x0235, B:129:0x0253, B:131:0x025a, B:133:0x0271, B:132:0x0263, B:155:0x02c4, B:157:0x02cb, B:159:0x02e2, B:158:0x02d4, B:164:0x02f0, B:166:0x02f7, B:168:0x030e, B:167:0x0300, B:201:0x038b, B:203:0x0392, B:205:0x03a9, B:204:0x039b, B:220:0x03e4, B:222:0x03eb, B:224:0x0402, B:223:0x03f4, B:227:0x040a, B:229:0x0411, B:231:0x0428, B:230:0x041a, B:236:0x0434, B:238:0x043b, B:240:0x0452, B:239:0x0444, B:246:0x0460, B:248:0x0467, B:250:0x047e, B:249:0x0470, B:253:0x0486, B:255:0x048d, B:257:0x04a4, B:256:0x0496, B:269:0x04c0, B:271:0x04c7, B:273:0x04de, B:272:0x04d0, B:182:0x0344, B:184:0x034b, B:186:0x0362, B:185:0x0354, B:276:0x04e4, B:278:0x04eb, B:280:0x0502, B:279:0x04f4), top: B:304:0x0019 }] */
    @Override // javax.net.ssl.SSLEngine
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final javax.net.ssl.SSLEngineResult wrap(java.nio.ByteBuffer[] r12, int r13, int r14, java.nio.ByteBuffer r15) throws javax.net.ssl.SSLException {
        /*
            Method dump skipped, instructions count: 1388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.k1.wrap(java.nio.ByteBuffer[], int, int, java.nio.ByteBuffer):javax.net.ssl.SSLEngineResult");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int y(int i9, int i10) {
        return (int) Math.min(this.E, i9 + (this.D * i10));
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        SSLEngineResult u02;
        u02 = u0(m0(byteBuffer), l0(byteBuffer2));
        c0();
        b0();
        return u02;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr) throws SSLException {
        SSLEngineResult u02;
        u02 = u0(m0(byteBuffer), byteBufferArr);
        c0();
        return u02;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult wrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        SSLEngineResult wrap;
        wrap = wrap(m0(byteBuffer), byteBuffer2);
        c0();
        return wrap;
    }
}
