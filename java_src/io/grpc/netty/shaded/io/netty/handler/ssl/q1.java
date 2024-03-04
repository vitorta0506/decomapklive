package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.io.InputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManagerFactory;
/* loaded from: classes5.dex */
public final class q1 {

    /* renamed from: u  reason: collision with root package name */
    private static final Map.Entry[] f44719u = new Map.Entry[0];

    /* renamed from: a  reason: collision with root package name */
    private final boolean f44720a;

    /* renamed from: b  reason: collision with root package name */
    private SslProvider f44721b;

    /* renamed from: c  reason: collision with root package name */
    private Provider f44722c;

    /* renamed from: d  reason: collision with root package name */
    private X509Certificate[] f44723d;

    /* renamed from: e  reason: collision with root package name */
    private TrustManagerFactory f44724e;

    /* renamed from: f  reason: collision with root package name */
    private X509Certificate[] f44725f;

    /* renamed from: g  reason: collision with root package name */
    private PrivateKey f44726g;

    /* renamed from: h  reason: collision with root package name */
    private String f44727h;

    /* renamed from: i  reason: collision with root package name */
    private KeyManagerFactory f44728i;

    /* renamed from: j  reason: collision with root package name */
    private Iterable<String> f44729j;

    /* renamed from: l  reason: collision with root package name */
    private ApplicationProtocolConfig f44731l;

    /* renamed from: m  reason: collision with root package name */
    private long f44732m;

    /* renamed from: n  reason: collision with root package name */
    private long f44733n;

    /* renamed from: p  reason: collision with root package name */
    private String[] f44735p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f44736q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f44737r;

    /* renamed from: k  reason: collision with root package name */
    private i f44730k = o.f44711b;

    /* renamed from: o  reason: collision with root package name */
    private ClientAuth f44734o = ClientAuth.NONE;

    /* renamed from: s  reason: collision with root package name */
    private String f44738s = KeyStore.getDefaultType();

    /* renamed from: t  reason: collision with root package name */
    private final Map<r1<?>, Object> f44739t = new HashMap();

    private q1(boolean z10) {
        this.f44720a = z10;
    }

    public static q1 d() {
        return new q1(false);
    }

    private static <T> T[] k(Iterable<? extends T> iterable, T[] tArr) {
        if (iterable == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            arrayList.add(t10);
        }
        return (T[]) arrayList.toArray(tArr);
    }

    public q1 a(ApplicationProtocolConfig applicationProtocolConfig) {
        this.f44731l = applicationProtocolConfig;
        return this;
    }

    public p1 b() throws SSLException {
        if (this.f44720a) {
            return p1.w(this.f44721b, this.f44722c, this.f44723d, this.f44724e, this.f44725f, this.f44726g, this.f44727h, this.f44728i, this.f44729j, this.f44730k, this.f44731l, this.f44732m, this.f44733n, this.f44734o, this.f44735p, this.f44736q, this.f44737r, this.f44738s, (Map.Entry[]) k(this.f44739t.entrySet(), f44719u));
        }
        return p1.t(this.f44721b, this.f44722c, this.f44723d, this.f44724e, this.f44725f, this.f44726g, this.f44727h, this.f44728i, this.f44729j, this.f44730k, this.f44731l, this.f44735p, this.f44732m, this.f44733n, this.f44737r, this.f44738s, (Map.Entry[]) k(this.f44739t.entrySet(), f44719u));
    }

    public q1 c(Iterable<String> iterable, i iVar) {
        this.f44730k = (i) io.grpc.netty.shaded.io.netty.util.internal.s.h(iVar, "cipherFilter");
        this.f44729j = iterable;
        return this;
    }

    public q1 e(InputStream inputStream, InputStream inputStream2, String str) {
        try {
            try {
                return f(p1.A(inputStream2, str), str, p1.B(inputStream));
            } catch (Exception e10) {
                throw new IllegalArgumentException("Input stream does not contain valid private key.", e10);
            }
        } catch (Exception e11) {
            throw new IllegalArgumentException("Input stream not contain valid certificates.", e11);
        }
    }

    public q1 f(PrivateKey privateKey, String str, X509Certificate... x509CertificateArr) {
        if (this.f44720a) {
            io.grpc.netty.shaded.io.netty.util.internal.s.f(x509CertificateArr, "keyCertChain");
            io.grpc.netty.shaded.io.netty.util.internal.s.h(privateKey, "key required for servers");
        }
        if (x509CertificateArr != null && x509CertificateArr.length != 0) {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                io.grpc.netty.shaded.io.netty.util.internal.s.j(x509Certificate, "cert");
            }
            this.f44725f = (X509Certificate[]) x509CertificateArr.clone();
        } else {
            this.f44725f = null;
        }
        this.f44726g = privateKey;
        this.f44727h = str;
        this.f44728i = null;
        return this;
    }

    public q1 g(KeyManagerFactory keyManagerFactory) {
        if (this.f44720a) {
            io.grpc.netty.shaded.io.netty.util.internal.s.h(keyManagerFactory, "keyManagerFactory required for servers");
        }
        this.f44725f = null;
        this.f44726g = null;
        this.f44727h = null;
        this.f44728i = keyManagerFactory;
        return this;
    }

    public q1 h(String... strArr) {
        this.f44735p = strArr == null ? null : (String[]) strArr.clone();
        return this;
    }

    public q1 i(Provider provider) {
        this.f44722c = provider;
        return this;
    }

    public q1 j(SslProvider sslProvider) {
        this.f44721b = sslProvider;
        return this;
    }

    public q1 l(InputStream inputStream) {
        try {
            return n(p1.B(inputStream));
        } catch (Exception e10) {
            throw new IllegalArgumentException("Input stream does not contain valid certificates.", e10);
        }
    }

    public q1 m(TrustManagerFactory trustManagerFactory) {
        this.f44723d = null;
        this.f44724e = trustManagerFactory;
        return this;
    }

    public q1 n(X509Certificate... x509CertificateArr) {
        this.f44723d = x509CertificateArr != null ? (X509Certificate[]) x509CertificateArr.clone() : null;
        this.f44724e = null;
        return this;
    }
}
