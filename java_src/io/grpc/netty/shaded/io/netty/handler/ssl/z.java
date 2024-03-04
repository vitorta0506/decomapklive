package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.ApplicationProtocolConfig;
import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLSessionContext;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
public class z extends p1 {

    /* renamed from: k  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44866k;

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f44867l;

    /* renamed from: m  reason: collision with root package name */
    private static final List<String> f44868m;

    /* renamed from: n  reason: collision with root package name */
    private static final List<String> f44869n;

    /* renamed from: o  reason: collision with root package name */
    private static final Set<String> f44870o;

    /* renamed from: p  reason: collision with root package name */
    private static final Set<String> f44871p;

    /* renamed from: q  reason: collision with root package name */
    private static final Provider f44872q;

    /* renamed from: d  reason: collision with root package name */
    private final String[] f44873d;

    /* renamed from: e  reason: collision with root package name */
    private final String[] f44874e;

    /* renamed from: f  reason: collision with root package name */
    private final List<String> f44875f;

    /* renamed from: g  reason: collision with root package name */
    private final u f44876g;

    /* renamed from: h  reason: collision with root package name */
    private final ClientAuth f44877h;

    /* renamed from: i  reason: collision with root package name */
    private final SSLContext f44878i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f44879j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44880a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f44881b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f44882c;

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ int[] f44883d;

        static {
            int[] iArr = new int[ApplicationProtocolConfig.Protocol.values().length];
            f44883d = iArr;
            try {
                iArr[ApplicationProtocolConfig.Protocol.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44883d[ApplicationProtocolConfig.Protocol.ALPN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44883d[ApplicationProtocolConfig.Protocol.NPN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ApplicationProtocolConfig.SelectedListenerFailureBehavior.values().length];
            f44882c = iArr2;
            try {
                iArr2[ApplicationProtocolConfig.SelectedListenerFailureBehavior.ACCEPT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f44882c[ApplicationProtocolConfig.SelectedListenerFailureBehavior.FATAL_ALERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[ApplicationProtocolConfig.SelectorFailureBehavior.values().length];
            f44881b = iArr3;
            try {
                iArr3[ApplicationProtocolConfig.SelectorFailureBehavior.FATAL_ALERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f44881b[ApplicationProtocolConfig.SelectorFailureBehavior.NO_ADVERTISE.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr4 = new int[ClientAuth.values().length];
            f44880a = iArr4;
            try {
                iArr4[ClientAuth.OPTIONAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f44880a[ClientAuth.REQUIRE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f44880a[ClientAuth.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    static {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(z.class);
        f44866k = b10;
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS);
            sSLContext.init(null, null, null);
            f44872q = sSLContext.getProvider();
            SSLEngine createSSLEngine = sSLContext.createSSLEngine();
            String[] H = H(sSLContext, createSSLEngine);
            f44867l = H;
            Set<String> unmodifiableSet = Collections.unmodifiableSet(J(createSSLEngine));
            f44870o = unmodifiableSet;
            List<String> unmodifiableList = Collections.unmodifiableList(G(createSSLEngine, unmodifiableSet));
            f44868m = unmodifiableList;
            ArrayList arrayList = new ArrayList(unmodifiableList);
            String[] strArr = v1.f44840d;
            arrayList.removeAll(Arrays.asList(strArr));
            f44869n = Collections.unmodifiableList(arrayList);
            LinkedHashSet linkedHashSet = new LinkedHashSet(unmodifiableSet);
            linkedHashSet.removeAll(Arrays.asList(strArr));
            f44871p = Collections.unmodifiableSet(linkedHashSet);
            if (b10.isDebugEnabled()) {
                b10.debug("Default protocols (JDK): {} ", Arrays.asList(H));
                b10.debug("Default cipher suites (JDK): {}", unmodifiableList);
            }
        } catch (Exception e10) {
            throw new Error("failed to initialize the default SSL context", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(SSLContext sSLContext, boolean z10, Iterable<String> iterable, i iVar, u uVar, ClientAuth clientAuth, String[] strArr, boolean z11) {
        super(z11);
        Set<String> J;
        List<String> list;
        String[] strArr2;
        this.f44876g = (u) io.grpc.netty.shaded.io.netty.util.internal.s.h(uVar, "apn");
        this.f44877h = (ClientAuth) io.grpc.netty.shaded.io.netty.util.internal.s.h(clientAuth, "clientAuth");
        this.f44878i = (SSLContext) io.grpc.netty.shaded.io.netty.util.internal.s.h(sSLContext, "sslContext");
        if (f44872q.equals(sSLContext.getProvider())) {
            strArr = strArr == null ? f44867l : strArr;
            this.f44873d = strArr;
            if (I(strArr)) {
                J = f44870o;
                list = f44868m;
            } else {
                J = f44871p;
                list = f44869n;
            }
        } else {
            SSLEngine createSSLEngine = sSLContext.createSSLEngine();
            try {
                if (strArr == null) {
                    this.f44873d = H(sSLContext, createSSLEngine);
                } else {
                    this.f44873d = strArr;
                }
                J = J(createSSLEngine);
                List<String> G = G(createSSLEngine, J);
                if (!I(this.f44873d)) {
                    for (String str : v1.f44840d) {
                        J.remove(str);
                        G.remove(str);
                    }
                }
                io.grpc.netty.shaded.io.netty.util.r.a(createSSLEngine);
                list = G;
            } catch (Throwable th2) {
                io.grpc.netty.shaded.io.netty.util.r.a(createSSLEngine);
                throw th2;
            }
        }
        String[] a10 = ((i) io.grpc.netty.shaded.io.netty.util.internal.s.h(iVar, "cipherFilter")).a(iterable, list, J);
        this.f44874e = a10;
        this.f44875f = Collections.unmodifiableList(Arrays.asList(a10));
        this.f44879j = z10;
    }

    private SSLEngine E(SSLEngine sSLEngine, kg.k kVar) {
        sSLEngine.setEnabledCipherSuites(this.f44874e);
        sSLEngine.setEnabledProtocols(this.f44873d);
        sSLEngine.setUseClientMode(q());
        if (r()) {
            int i9 = a.f44880a[this.f44877h.ordinal()];
            if (i9 == 1) {
                sSLEngine.setWantClientAuth(true);
            } else if (i9 == 2) {
                sSLEngine.setNeedClientAuth(true);
            } else if (i9 != 3) {
                throw new Error("Unknown auth " + this.f44877h);
            }
        }
        u.f f10 = this.f44876g.f();
        if (f10 instanceof u.a) {
            return ((u.a) f10).b(sSLEngine, kVar, this.f44876g, r());
        }
        return f10.a(sSLEngine, this.f44876g, r());
    }

    private static List<String> G(SSLEngine sSLEngine, Set<String> set) {
        ArrayList arrayList = new ArrayList();
        v1.a(set, arrayList, v1.f44839c);
        v1.x(arrayList, sSLEngine.getEnabledCipherSuites());
        return arrayList;
    }

    private static String[] H(SSLContext sSLContext, SSLEngine sSLEngine) {
        String[] protocols = sSLContext.getDefaultSSLParameters().getProtocols();
        HashSet hashSet = new HashSet(protocols.length);
        Collections.addAll(hashSet, protocols);
        ArrayList arrayList = new ArrayList();
        v1.a(hashSet, arrayList, "TLSv1.3", "TLSv1.2", "TLSv1.1", "TLSv1");
        if (!arrayList.isEmpty()) {
            return (String[]) arrayList.toArray(io.grpc.netty.shaded.io.netty.util.internal.h.f45069f);
        }
        return sSLEngine.getEnabledProtocols();
    }

    private static boolean I(String[] strArr) {
        for (String str : strArr) {
            if ("TLSv1.3".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private static Set<String> J(SSLEngine sSLEngine) {
        String[] supportedCipherSuites = sSLEngine.getSupportedCipherSuites();
        LinkedHashSet linkedHashSet = new LinkedHashSet(supportedCipherSuites.length);
        for (String str : supportedCipherSuites) {
            linkedHashSet.add(str);
            if (str.startsWith("SSL_")) {
                String str2 = "TLS_" + str.substring(4);
                try {
                    sSLEngine.setEnabledCipherSuites(new String[]{str2});
                    linkedHashSet.add(str2);
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u K(ApplicationProtocolConfig applicationProtocolConfig, boolean z10) {
        if (applicationProtocolConfig == null) {
            return w.f44844a;
        }
        int i9 = a.f44883d[applicationProtocolConfig.a().ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                if (z10) {
                    int i10 = a.f44881b[applicationProtocolConfig.c().ordinal()];
                    if (i10 != 1) {
                        if (i10 == 2) {
                            return new r(false, applicationProtocolConfig.d());
                        }
                        throw new UnsupportedOperationException("JDK provider does not support " + applicationProtocolConfig.c() + " failure behavior");
                    }
                    return new r(true, applicationProtocolConfig.d());
                }
                int i11 = a.f44882c[applicationProtocolConfig.b().ordinal()];
                if (i11 != 1) {
                    if (i11 == 2) {
                        return new r(true, applicationProtocolConfig.d());
                    }
                    throw new UnsupportedOperationException("JDK provider does not support " + applicationProtocolConfig.b() + " failure behavior");
                }
                return new r(false, applicationProtocolConfig.d());
            } else if (i9 != 3) {
                throw new UnsupportedOperationException("JDK provider does not support " + applicationProtocolConfig.a() + " protocol");
            } else if (z10) {
                int i12 = a.f44882c[applicationProtocolConfig.b().ordinal()];
                if (i12 != 1) {
                    if (i12 == 2) {
                        return new x(true, applicationProtocolConfig.d());
                    }
                    throw new UnsupportedOperationException("JDK provider does not support " + applicationProtocolConfig.b() + " failure behavior");
                }
                return new x(false, applicationProtocolConfig.d());
            } else {
                int i13 = a.f44881b[applicationProtocolConfig.c().ordinal()];
                if (i13 != 1) {
                    if (i13 == 2) {
                        return new x(false, applicationProtocolConfig.d());
                    }
                    throw new UnsupportedOperationException("JDK provider does not support " + applicationProtocolConfig.c() + " failure behavior");
                }
                return new x(true, applicationProtocolConfig.d());
            }
        }
        return w.f44844a;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p1
    /* renamed from: D */
    public final u a() {
        return this.f44876g;
    }

    public final SSLContext F() {
        return this.f44878i;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p1
    public final boolean q() {
        return this.f44879j;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p1
    public final SSLEngine v(kg.k kVar, String str, int i9) {
        return E(F().createSSLEngine(str, i9), kVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p1
    public final SSLSessionContext y() {
        if (r()) {
            return F().getServerSessionContext();
        }
        return F().getClientSessionContext();
    }
}
