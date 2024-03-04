package cc;

import ec.f;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes4.dex */
public class c extends SSLSocketFactory {

    /* renamed from: h  reason: collision with root package name */
    private static final String f1697h = c.class.getSimpleName();

    /* renamed from: i  reason: collision with root package name */
    private static volatile c f1698i = null;

    /* renamed from: a  reason: collision with root package name */
    protected SSLContext f1699a;

    /* renamed from: b  reason: collision with root package name */
    protected SSLSocket f1700b = null;

    /* renamed from: c  reason: collision with root package name */
    protected String[] f1701c;

    /* renamed from: d  reason: collision with root package name */
    protected X509TrustManager f1702d;

    /* renamed from: e  reason: collision with root package name */
    protected String[] f1703e;

    /* renamed from: f  reason: collision with root package name */
    protected String[] f1704f;

    /* renamed from: g  reason: collision with root package name */
    protected String[] f1705g;

    public c(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyManagementException, IllegalArgumentException {
        this.f1699a = null;
        this.f1699a = a.f();
        b(x509TrustManager);
        this.f1699a.init(null, new X509TrustManager[]{x509TrustManager}, null);
    }

    private void a(Socket socket) {
        boolean z10;
        boolean z11 = true;
        if (ec.b.a(this.f1705g)) {
            z10 = false;
        } else {
            f.e(f1697h, "set protocols");
            a.e((SSLSocket) socket, this.f1705g);
            z10 = true;
        }
        if (ec.b.a(this.f1704f) && ec.b.a(this.f1703e)) {
            z11 = false;
        } else {
            f.e(f1697h, "set white cipher or black cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            a.d(sSLSocket);
            if (!ec.b.a(this.f1704f)) {
                a.h(sSLSocket, this.f1704f);
            } else {
                a.b(sSLSocket, this.f1703e);
            }
        }
        if (!z10) {
            f.e(f1697h, "set default protocols");
            a.d((SSLSocket) socket);
        }
        if (z11) {
            return;
        }
        f.e(f1697h, "set default cipher suites");
        a.c((SSLSocket) socket);
    }

    public void b(X509TrustManager x509TrustManager) {
        this.f1702d = x509TrustManager;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i9) throws IOException {
        f.e(f1697h, "createSocket: host , port");
        Socket createSocket = this.f1699a.getSocketFactory().createSocket(str, i9);
        if (createSocket instanceof SSLSocket) {
            a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f1700b = sSLSocket;
            this.f1701c = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f1701c;
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
        f.e(f1697h, "createSocket s host port autoClose");
        Socket createSocket = this.f1699a.getSocketFactory().createSocket(socket, str, i9, z10);
        if (createSocket instanceof SSLSocket) {
            a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f1700b = sSLSocket;
            this.f1701c = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }
}
