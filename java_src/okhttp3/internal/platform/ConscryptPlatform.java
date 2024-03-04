package okhttp3.internal.platform;

import java.security.KeyStore;
import java.security.Provider;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Protocol;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.conscrypt.i;
import org.conscrypt.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0011\u0010\u000b\u001a\r\u0012\t\u0012\u00070\r¢\u0006\u0002\b\u000e0\fH\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u0013H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lokhttp3/internal/platform/ConscryptPlatform;", "Lokhttp3/internal/platform/Platform;", "()V", "provider", "Ljava/security/Provider;", "configureTlsExtensions", "", "sslSocket", "Ljavax/net/ssl/SSLSocket;", "hostname", "", "protocols", "", "Lokhttp3/Protocol;", "Lkotlin/jvm/JvmSuppressWildcards;", "getSelectedProtocol", "newSSLContext", "Ljavax/net/ssl/SSLContext;", "newSslSocketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "trustManager", "Ljavax/net/ssl/X509TrustManager;", "platformTrustManager", "sslSocketFactory", "Companion", "DisabledHostnameVerifier", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class ConscryptPlatform extends Platform {
    @NotNull
    public static final Companion Companion;
    private static final boolean isSupported;
    @NotNull
    private final Provider provider;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bJ\b\u0010\u000b\u001a\u0004\u0018\u00010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0005¨\u0006\r"}, d2 = {"Lokhttp3/internal/platform/ConscryptPlatform$Companion;", "", "()V", "isSupported", "", "()Z", "atLeastVersion", "major", "", "minor", "patch", "buildIfSupported", "Lokhttp3/internal/platform/ConscryptPlatform;", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ boolean atLeastVersion$default(Companion companion, int i9, int i10, int i11, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = 0;
            }
            return companion.atLeastVersion(i9, i10, i11);
        }

        public final boolean atLeastVersion(int i9, int i10, int i11) {
            i.a t10 = i.t();
            return t10.a() != i9 ? t10.a() > i9 : t10.b() != i10 ? t10.b() > i10 : t10.c() >= i11;
        }

        @Nullable
        public final ConscryptPlatform buildIfSupported() {
            if (isSupported()) {
                return new ConscryptPlatform(null);
            }
            return null;
        }

        public final boolean isSupported() {
            return ConscryptPlatform.isSupported;
        }
    }

    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J5\u0010\u0007\u001a\u00020\u00062\u0010\u0010\n\u001a\f\u0012\u0006\b\u0001\u0012\u00020\t\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u000b¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/platform/ConscryptPlatform$DisabledHostnameVerifier;", "Lorg/conscrypt/k;", "", "hostname", "Ljavax/net/ssl/SSLSession;", "session", "", "verify", "", "Ljava/security/cert/X509Certificate;", "certs", "([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes7.dex */
    public static final class DisabledHostnameVerifier implements k {
        @NotNull
        public static final DisabledHostnameVerifier INSTANCE = new DisabledHostnameVerifier();

        private DisabledHostnameVerifier() {
        }

        public final boolean verify(@Nullable String str, @Nullable SSLSession sSLSession) {
            return true;
        }

        @Override // org.conscrypt.k
        public boolean verify(@Nullable X509Certificate[] x509CertificateArr, @Nullable String str, @Nullable SSLSession sSLSession) {
            return true;
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        boolean z10 = false;
        try {
            Class.forName("org.conscrypt.i$a", false, companion.getClass().getClassLoader());
            if (i.c()) {
                if (companion.atLeastVersion(2, 1, 0)) {
                    z10 = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        isSupported = z10;
    }

    private ConscryptPlatform() {
        Provider i9 = i.i();
        Intrinsics.checkNotNullExpressionValue(i9, "newProvider()");
        this.provider = i9;
    }

    public /* synthetic */ ConscryptPlatform(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        if (i.f(sslSocket)) {
            i.o(sslSocket, true);
            Object[] array = Platform.Companion.alpnProtocolNames(protocols).toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            i.k(sslSocket, (String[]) array);
            return;
        }
        super.configureTlsExtensions(sslSocket, str, protocols);
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        if (i.f(sslSocket)) {
            return i.b(sslSocket);
        }
        return super.getSelectedProtocol(sslSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public SSLContext newSSLContext() {
        SSLContext sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS, this.provider);
        Intrinsics.checkNotNullExpressionValue(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public javax.net.ssl.SSLSocketFactory newSslSocketFactory(@NotNull X509TrustManager trustManager) {
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        SSLContext newSSLContext = newSSLContext();
        newSSLContext.init(null, new TrustManager[]{trustManager}, null);
        javax.net.ssl.SSLSocketFactory socketFactory = newSSLContext.getSocketFactory();
        Intrinsics.checkNotNullExpressionValue(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public X509TrustManager platformTrustManager() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        Intrinsics.checkNotNull(trustManagers);
        boolean z10 = true;
        if ((trustManagers.length == 1 && (trustManagers[0] instanceof X509TrustManager)) ? false : false) {
            TrustManager trustManager = trustManagers[0];
            Objects.requireNonNull(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
            X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
            i.n(x509TrustManager, DisabledHostnameVerifier.INSTANCE);
            return x509TrustManager;
        }
        String arrays = Arrays.toString(trustManagers);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
        throw new IllegalStateException(Intrinsics.stringPlus("Unexpected default trust managers: ", arrays).toString());
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public X509TrustManager trustManager(@NotNull javax.net.ssl.SSLSocketFactory sslSocketFactory) {
        Intrinsics.checkNotNullParameter(sslSocketFactory, "sslSocketFactory");
        return null;
    }
}
