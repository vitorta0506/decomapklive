package e5;

import com.google.api.client.http.s;
import com.google.api.client.util.z;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public final class e extends s {

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f38472g;

    /* renamed from: c  reason: collision with root package name */
    private final a f38473c;

    /* renamed from: d  reason: collision with root package name */
    private final SSLSocketFactory f38474d;

    /* renamed from: e  reason: collision with root package name */
    private final HostnameVerifier f38475e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f38476f;

    static {
        String[] strArr = {"DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT", "TRACE"};
        f38472g = strArr;
        Arrays.sort(strArr);
    }

    public e() {
        this(null, null, null, false);
    }

    private static Proxy f() {
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("https.proxyHost"), Integer.parseInt(System.getProperty("https.proxyPort"))));
    }

    private a g(a aVar) {
        if (aVar == null) {
            if (System.getProperty("com.google.api.client.should_use_proxy") != null) {
                return new b(f());
            }
            return new b();
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.api.client.http.s
    /* renamed from: e */
    public c b(String str, String str2) throws IOException {
        z.c(h(str), "HTTP method %s not supported", str);
        HttpURLConnection a10 = this.f38473c.a(new URL(str2));
        a10.setRequestMethod(str);
        if (a10 instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) a10;
            HostnameVerifier hostnameVerifier = this.f38475e;
            if (hostnameVerifier != null) {
                httpsURLConnection.setHostnameVerifier(hostnameVerifier);
            }
            SSLSocketFactory sSLSocketFactory = this.f38474d;
            if (sSLSocketFactory != null) {
                httpsURLConnection.setSSLSocketFactory(sSLSocketFactory);
            }
        }
        return new c(a10);
    }

    public boolean h(String str) {
        return Arrays.binarySearch(f38472g, str) >= 0;
    }

    e(a aVar, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, boolean z10) {
        this.f38473c = g(aVar);
        this.f38474d = sSLSocketFactory;
        this.f38475e = hostnameVerifier;
        this.f38476f = z10;
    }
}
