package qd;

import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f57178a;

    /* renamed from: b  reason: collision with root package name */
    private static OkHttpClient f57179b;

    /* renamed from: c  reason: collision with root package name */
    private static SSLSocketFactory f57180c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: qd.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0623a implements X509TrustManager {
        C0623a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements HostnameVerifier {
        b() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    private a() {
    }

    private static OkHttpClient a(int i9) {
        if (f57179b == null || f57178a != i9) {
            synchronized (a.class) {
                OkHttpClient okHttpClient = f57179b;
                if (okHttpClient == null || f57178a != i9) {
                    if (okHttpClient == null) {
                        f57179b = new OkHttpClient();
                    }
                    f57178a = i9;
                    OkHttpClient.Builder c10 = c(i9);
                    if (c10 != null) {
                        f57179b = c10.build();
                    }
                }
            }
        }
        return f57179b;
    }

    public static OkHttpClient b() {
        return a(60);
    }

    private static synchronized OkHttpClient.Builder c(int i9) {
        OkHttpClient.Builder newBuilder;
        synchronized (a.class) {
            newBuilder = f57179b.newBuilder();
            OkHttpClient.Builder addInterceptor = newBuilder.addInterceptor(new pd.a());
            long j10 = i9;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            addInterceptor.callTimeout(j10, timeUnit).connectTimeout(j10, timeUnit).readTimeout(j10, timeUnit).writeTimeout(j10, timeUnit);
            try {
                if (f57180c == null) {
                    TrustManager[] trustManagerArr = {new C0623a()};
                    SSLContext sSLContext = SSLContext.getInstance(org.apache.http.conn.ssl.SSLSocketFactory.SSL);
                    sSLContext.init(null, trustManagerArr, new SecureRandom());
                    SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
                    f57180c = socketFactory;
                    newBuilder.sslSocketFactory(socketFactory, (X509TrustManager) trustManagerArr[0]);
                    newBuilder.hostnameVerifier(new b());
                }
            } catch (Exception e10) {
                f57178a = 0;
                e10.printStackTrace();
                return newBuilder;
            }
        }
        return newBuilder;
    }
}
