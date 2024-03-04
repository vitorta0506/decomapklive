package cc;

import android.content.Context;
import ec.f;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.BrowserCompatHostnameVerifier;
import org.apache.http.conn.ssl.StrictHostnameVerifier;
import org.apache.http.conn.ssl.X509HostnameVerifier;
@Deprecated
/* loaded from: classes4.dex */
public class b extends SSLSocketFactory {
    @Deprecated

    /* renamed from: i  reason: collision with root package name */
    public static final X509HostnameVerifier f1685i = new BrowserCompatHostnameVerifier();
    @Deprecated

    /* renamed from: j  reason: collision with root package name */
    public static final X509HostnameVerifier f1686j = new StrictHostnameVerifier();

    /* renamed from: k  reason: collision with root package name */
    private static final String f1687k = b.class.getSimpleName();

    /* renamed from: l  reason: collision with root package name */
    private static volatile b f1688l = null;

    /* renamed from: a  reason: collision with root package name */
    private SSLContext f1689a = null;

    /* renamed from: b  reason: collision with root package name */
    private SSLSocket f1690b = null;

    /* renamed from: c  reason: collision with root package name */
    private Context f1691c;

    /* renamed from: d  reason: collision with root package name */
    private String[] f1692d;

    /* renamed from: e  reason: collision with root package name */
    private X509TrustManager f1693e;

    /* renamed from: f  reason: collision with root package name */
    private String[] f1694f;

    /* renamed from: g  reason: collision with root package name */
    private String[] f1695g;

    /* renamed from: h  reason: collision with root package name */
    private String[] f1696h;

    private b(Context context) throws NoSuchAlgorithmException, CertificateException, KeyStoreException, IOException, KeyManagementException {
        if (context == null) {
            f.d(f1687k, "SecureSSLSocketFactory: context is null");
            return;
        }
        c(context);
        d(a.f());
        e a10 = d.a(context);
        this.f1693e = a10;
        this.f1689a.init(null, new X509TrustManager[]{a10}, null);
    }

    private void a(Socket socket) {
        boolean z10;
        boolean z11 = true;
        if (ec.b.a(this.f1696h)) {
            z10 = false;
        } else {
            f.e(f1687k, "set protocols");
            a.e((SSLSocket) socket, this.f1696h);
            z10 = true;
        }
        if (ec.b.a(this.f1695g) && ec.b.a(this.f1694f)) {
            z11 = false;
        } else {
            f.e(f1687k, "set white cipher or black cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            a.d(sSLSocket);
            if (!ec.b.a(this.f1695g)) {
                a.h(sSLSocket, this.f1695g);
            } else {
                a.b(sSLSocket, this.f1694f);
            }
        }
        if (!z10) {
            f.e(f1687k, "set default protocols");
            a.d((SSLSocket) socket);
        }
        if (z11) {
            return;
        }
        f.e(f1687k, "set default cipher suites");
        a.c((SSLSocket) socket);
    }

    public static b b(Context context) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, IllegalAccessException, KeyManagementException, IllegalArgumentException {
        long currentTimeMillis = System.currentTimeMillis();
        ec.c.b(context);
        if (f1688l == null) {
            synchronized (b.class) {
                if (f1688l == null) {
                    f1688l = new b(context);
                }
            }
        }
        if (f1688l.f1691c == null && context != null) {
            f1688l.c(context);
        }
        String str = f1687k;
        f.b(str, "getInstance: cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
        return f1688l;
    }

    public void c(Context context) {
        this.f1691c = context.getApplicationContext();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i9) throws IOException {
        f.e(f1687k, "createSocket: host , port");
        Socket createSocket = this.f1689a.getSocketFactory().createSocket(str, i9);
        if (createSocket instanceof SSLSocket) {
            a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f1690b = sSLSocket;
            this.f1692d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    public void d(SSLContext sSLContext) {
        this.f1689a = sSLContext;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f1692d;
        return strArr != null ? strArr : new String[0];
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i9) throws IOException {
        return createSocket(inetAddress.getHostAddress(), i9);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i9, InetAddress inetAddress, int i10) throws IOException, UnknownHostException {
        return createSocket(str, i9);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i9, InetAddress inetAddress2, int i10) throws IOException {
        return createSocket(inetAddress.getHostAddress(), i9);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i9, boolean z10) throws IOException {
        f.e(f1687k, "createSocket s host port autoClose");
        Socket createSocket = this.f1689a.getSocketFactory().createSocket(socket, str, i9, z10);
        if (createSocket instanceof SSLSocket) {
            a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f1690b = sSLSocket;
            this.f1692d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }
}
