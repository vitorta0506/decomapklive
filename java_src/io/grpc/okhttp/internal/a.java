package io.grpc.okhttp.internal;

import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: e  reason: collision with root package name */
    private static final CipherSuite[] f45279e;

    /* renamed from: f  reason: collision with root package name */
    public static final a f45280f;

    /* renamed from: g  reason: collision with root package name */
    public static final a f45281g;

    /* renamed from: h  reason: collision with root package name */
    public static final a f45282h;

    /* renamed from: a  reason: collision with root package name */
    final boolean f45283a;

    /* renamed from: b  reason: collision with root package name */
    private final String[] f45284b;

    /* renamed from: c  reason: collision with root package name */
    private final String[] f45285c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f45286d;

    static {
        CipherSuite[] cipherSuiteArr = {CipherSuite.TLS_AES_128_GCM_SHA256, CipherSuite.TLS_AES_256_GCM_SHA384, CipherSuite.TLS_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        f45279e = cipherSuiteArr;
        b f10 = new b(true).f(cipherSuiteArr);
        TlsVersion tlsVersion = TlsVersion.TLS_1_3;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_2;
        a e10 = f10.i(tlsVersion, tlsVersion2).h(true).e();
        f45280f = e10;
        f45281g = new b(e10).i(tlsVersion, tlsVersion2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0).h(true).e();
        f45282h = new b(false).e();
    }

    private a e(SSLSocket sSLSocket, boolean z10) {
        String[] strArr;
        if (this.f45284b != null) {
            strArr = (String[]) e.c(String.class, this.f45284b, sSLSocket.getEnabledCipherSuites());
        } else {
            strArr = null;
        }
        if (z10 && Arrays.asList(sSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
            if (strArr == null) {
                strArr = sSLSocket.getEnabledCipherSuites();
            }
            int length = strArr.length + 1;
            String[] strArr2 = new String[length];
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            strArr2[length - 1] = "TLS_FALLBACK_SCSV";
            strArr = strArr2;
        }
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        return new b(this).g(strArr).j((String[]) e.c(String.class, this.f45285c, enabledProtocols)).e();
    }

    public void c(SSLSocket sSLSocket, boolean z10) {
        a e10 = e(sSLSocket, z10);
        sSLSocket.setEnabledProtocols(e10.f45285c);
        String[] strArr = e10.f45284b;
        if (strArr != null) {
            sSLSocket.setEnabledCipherSuites(strArr);
        }
    }

    public List<CipherSuite> d() {
        String[] strArr = this.f45284b;
        if (strArr == null) {
            return null;
        }
        CipherSuite[] cipherSuiteArr = new CipherSuite[strArr.length];
        int i9 = 0;
        while (true) {
            String[] strArr2 = this.f45284b;
            if (i9 < strArr2.length) {
                cipherSuiteArr[i9] = CipherSuite.forJavaName(strArr2[i9]);
                i9++;
            } else {
                return e.a(cipherSuiteArr);
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            if (obj == this) {
                return true;
            }
            a aVar = (a) obj;
            boolean z10 = this.f45283a;
            if (z10 != aVar.f45283a) {
                return false;
            }
            return !z10 || (Arrays.equals(this.f45284b, aVar.f45284b) && Arrays.equals(this.f45285c, aVar.f45285c) && this.f45286d == aVar.f45286d);
        }
        return false;
    }

    public boolean f() {
        return this.f45286d;
    }

    public List<TlsVersion> g() {
        TlsVersion[] tlsVersionArr = new TlsVersion[this.f45285c.length];
        int i9 = 0;
        while (true) {
            String[] strArr = this.f45285c;
            if (i9 < strArr.length) {
                tlsVersionArr[i9] = TlsVersion.forJavaName(strArr[i9]);
                i9++;
            } else {
                return e.a(tlsVersionArr);
            }
        }
    }

    public int hashCode() {
        if (this.f45283a) {
            return ((((527 + Arrays.hashCode(this.f45284b)) * 31) + Arrays.hashCode(this.f45285c)) * 31) + (!this.f45286d ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (this.f45283a) {
            List<CipherSuite> d10 = d();
            String obj = d10 == null ? "[use default]" : d10.toString();
            return "ConnectionSpec(cipherSuites=" + obj + ", tlsVersions=" + g() + ", supportsTlsExtensions=" + this.f45286d + ")";
        }
        return "ConnectionSpec()";
    }

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f45287a;

        /* renamed from: b  reason: collision with root package name */
        private String[] f45288b;

        /* renamed from: c  reason: collision with root package name */
        private String[] f45289c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f45290d;

        public b(boolean z10) {
            this.f45287a = z10;
        }

        public a e() {
            return new a(this);
        }

        public b f(CipherSuite... cipherSuiteArr) {
            if (this.f45287a) {
                String[] strArr = new String[cipherSuiteArr.length];
                for (int i9 = 0; i9 < cipherSuiteArr.length; i9++) {
                    strArr[i9] = cipherSuiteArr[i9].javaName;
                }
                this.f45288b = strArr;
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public b g(String... strArr) {
            if (this.f45287a) {
                if (strArr == null) {
                    this.f45288b = null;
                } else {
                    this.f45288b = (String[]) strArr.clone();
                }
                return this;
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public b h(boolean z10) {
            if (this.f45287a) {
                this.f45290d = z10;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public b i(TlsVersion... tlsVersionArr) {
            if (this.f45287a) {
                if (tlsVersionArr.length != 0) {
                    String[] strArr = new String[tlsVersionArr.length];
                    for (int i9 = 0; i9 < tlsVersionArr.length; i9++) {
                        strArr[i9] = tlsVersionArr[i9].javaName;
                    }
                    this.f45289c = strArr;
                    return this;
                }
                throw new IllegalArgumentException("At least one TlsVersion is required");
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public b j(String... strArr) {
            if (this.f45287a) {
                if (strArr == null) {
                    this.f45289c = null;
                } else {
                    this.f45289c = (String[]) strArr.clone();
                }
                return this;
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public b(a aVar) {
            this.f45287a = aVar.f45283a;
            this.f45288b = aVar.f45284b;
            this.f45289c = aVar.f45285c;
            this.f45290d = aVar.f45286d;
        }
    }

    private a(b bVar) {
        this.f45283a = bVar.f45287a;
        this.f45284b = bVar.f45288b;
        this.f45285c = bVar.f45289c;
        this.f45286d = bVar.f45290d;
    }
}
