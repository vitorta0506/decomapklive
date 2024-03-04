package org.apache.http.conn.ssl;

import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import org.apache.http.HttpHost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.HttpInetSocketAddress;
@Deprecated
/* loaded from: classes7.dex */
public class SSLSocketFactory {
    public static final String SSL = "SSL";
    public static final String SSLV2 = "SSLv2";
    public static final String TLS = "TLS";
    private volatile X509HostnameVerifier hostnameVerifier;
    private final pi.a nameResolver;
    private final javax.net.ssl.SSLSocketFactory socketfactory;
    private final String[] supportedCipherSuites;
    private final String[] supportedProtocols;
    public static final X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER = new b();
    public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new BrowserCompatHostnameVerifier();
    public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = new StrictHostnameVerifier();

    public SSLSocketFactory(String str, KeyStore keyStore, String str2, KeyStore keyStore2, SecureRandom secureRandom, pi.a aVar) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        this(g.b().g(str).f(secureRandom).b(keyStore, str2 != null ? str2.toCharArray() : null).d(keyStore2).a(), aVar);
    }

    public static SSLSocketFactory getSocketFactory() throws SSLInitializationException {
        return new SSLSocketFactory(g.a(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public static SSLSocketFactory getSystemSocketFactory() throws SSLInitializationException {
        return new SSLSocketFactory((javax.net.ssl.SSLSocketFactory) javax.net.ssl.SSLSocketFactory.getDefault(), split(System.getProperty("https.protocols")), split(System.getProperty("https.cipherSuites")), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    private void internalPrepareSocket(SSLSocket sSLSocket) throws IOException {
        String[] strArr = this.supportedProtocols;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = this.supportedCipherSuites;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
        prepareSocket(sSLSocket);
    }

    private static String[] split(String str) {
        if (vi.f.b(str)) {
            return null;
        }
        return str.split(" *, *");
    }

    private void verifyHostname(SSLSocket sSLSocket, String str) throws IOException {
        try {
            this.hostnameVerifier.verify(str, sSLSocket);
        } catch (IOException e10) {
            try {
                sSLSocket.close();
            } catch (Exception unused) {
            }
            throw e10;
        }
    }

    public Socket connectSocket(Socket socket, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, org.apache.http.params.c cVar) throws IOException, UnknownHostException, ConnectTimeoutException {
        HttpHost httpHost;
        vi.a.g(inetSocketAddress, "Remote address");
        vi.a.g(cVar, "HTTP parameters");
        if (inetSocketAddress instanceof HttpInetSocketAddress) {
            httpHost = ((HttpInetSocketAddress) inetSocketAddress).getHttpHost();
        } else {
            httpHost = new HttpHost(inetSocketAddress.getHostName(), inetSocketAddress.getPort(), ProxyConfig.MATCH_HTTPS);
        }
        HttpHost httpHost2 = httpHost;
        int b10 = org.apache.http.params.b.b(cVar);
        int a10 = org.apache.http.params.b.a(cVar);
        socket.setSoTimeout(b10);
        return connectSocket(a10, socket, httpHost2, inetSocketAddress, inetSocketAddress2, (ti.c) null);
    }

    public Socket createLayeredSocket(Socket socket, String str, int i9, org.apache.http.params.c cVar) throws IOException, UnknownHostException {
        return createLayeredSocket(socket, str, i9, (ti.c) null);
    }

    public Socket createSocket(org.apache.http.params.c cVar) throws IOException {
        return createSocket((ti.c) null);
    }

    public X509HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    public boolean isSecure(Socket socket) throws IllegalArgumentException {
        vi.a.g(socket, "Socket");
        vi.b.a(socket instanceof SSLSocket, "Socket not created by this factory");
        vi.b.a(!socket.isClosed(), "Socket is closed");
        return true;
    }

    protected void prepareSocket(SSLSocket sSLSocket) throws IOException {
    }

    public void setHostnameVerifier(X509HostnameVerifier x509HostnameVerifier) {
        vi.a.g(x509HostnameVerifier, "Hostname verifier");
        this.hostnameVerifier = x509HostnameVerifier;
    }

    public SSLSocketFactory(String str, KeyStore keyStore, String str2, KeyStore keyStore2, SecureRandom secureRandom, i iVar, X509HostnameVerifier x509HostnameVerifier) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        this(g.b().g(str).f(secureRandom).b(keyStore, str2 != null ? str2.toCharArray() : null).e(keyStore2, iVar).a(), x509HostnameVerifier);
    }

    public Socket createLayeredSocket(Socket socket, String str, int i9, boolean z10) throws IOException, UnknownHostException {
        return createLayeredSocket(socket, str, i9, (ti.c) null);
    }

    public Socket createSocket() throws IOException {
        return createSocket((ti.c) null);
    }

    public SSLSocketFactory(String str, KeyStore keyStore, String str2, KeyStore keyStore2, SecureRandom secureRandom, X509HostnameVerifier x509HostnameVerifier) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        this(g.b().g(str).f(secureRandom).b(keyStore, str2 != null ? str2.toCharArray() : null).d(keyStore2).a(), x509HostnameVerifier);
    }

    public Socket createLayeredSocket(Socket socket, String str, int i9, ti.c cVar) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.socketfactory.createSocket(socket, str, i9, true);
        internalPrepareSocket(sSLSocket);
        sSLSocket.startHandshake();
        verifyHostname(sSLSocket, str);
        return sSLSocket;
    }

    public Socket createSocket(Socket socket, String str, int i9, boolean z10) throws IOException, UnknownHostException {
        return createLayeredSocket(socket, str, i9, z10);
    }

    public SSLSocketFactory(KeyStore keyStore, String str, KeyStore keyStore2) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        this(g.b().b(keyStore, str != null ? str.toCharArray() : null).d(keyStore2).a(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public Socket createSocket(ti.c cVar) throws IOException {
        return SocketFactory.getDefault().createSocket();
    }

    public SSLSocketFactory(KeyStore keyStore, String str) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        this(g.b().b(keyStore, str != null ? str.toCharArray() : null).a(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(KeyStore keyStore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        this(g.b().d(keyStore).a(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(i iVar, X509HostnameVerifier x509HostnameVerifier) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        this(g.b().e(null, iVar).a(), x509HostnameVerifier);
    }

    public SSLSocketFactory(i iVar) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
        this(g.b().e(null, iVar).a(), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(SSLContext sSLContext) {
        this(sSLContext, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(SSLContext sSLContext, pi.a aVar) {
        this.socketfactory = sSLContext.getSocketFactory();
        this.hostnameVerifier = BROWSER_COMPATIBLE_HOSTNAME_VERIFIER;
        this.nameResolver = aVar;
        this.supportedProtocols = null;
        this.supportedCipherSuites = null;
    }

    public Socket connectSocket(Socket socket, String str, int i9, InetAddress inetAddress, int i10, org.apache.http.params.c cVar) throws IOException, UnknownHostException, ConnectTimeoutException {
        InetAddress byName;
        pi.a aVar = this.nameResolver;
        if (aVar != null) {
            byName = aVar.a(str);
        } else {
            byName = InetAddress.getByName(str);
        }
        InetSocketAddress inetSocketAddress = null;
        if (inetAddress != null || i10 > 0) {
            if (i10 <= 0) {
                i10 = 0;
            }
            inetSocketAddress = new InetSocketAddress(inetAddress, i10);
        }
        return connectSocket(socket, new HttpInetSocketAddress(new HttpHost(str, i9), byName, i9), inetSocketAddress, cVar);
    }

    public SSLSocketFactory(SSLContext sSLContext, X509HostnameVerifier x509HostnameVerifier) {
        this(((SSLContext) vi.a.g(sSLContext, "SSL context")).getSocketFactory(), (String[]) null, (String[]) null, x509HostnameVerifier);
    }

    public Socket connectSocket(int i9, Socket socket, HttpHost httpHost, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, ti.c cVar) throws IOException {
        vi.a.g(httpHost, "HTTP host");
        vi.a.g(inetSocketAddress, "Remote address");
        if (socket == null) {
            socket = createSocket(cVar);
        }
        if (inetSocketAddress2 != null) {
            socket.bind(inetSocketAddress2);
        }
        try {
            socket.connect(inetSocketAddress, i9);
            if (socket instanceof SSLSocket) {
                SSLSocket sSLSocket = (SSLSocket) socket;
                sSLSocket.startHandshake();
                verifyHostname(sSLSocket, httpHost.getHostName());
                return socket;
            }
            return createLayeredSocket(socket, httpHost.getHostName(), inetSocketAddress.getPort(), cVar);
        } catch (SocketTimeoutException unused) {
            throw new ConnectTimeoutException("Connect to " + inetSocketAddress + " timed out");
        }
    }

    public SSLSocketFactory(SSLContext sSLContext, String[] strArr, String[] strArr2, X509HostnameVerifier x509HostnameVerifier) {
        this(((SSLContext) vi.a.g(sSLContext, "SSL context")).getSocketFactory(), strArr, strArr2, x509HostnameVerifier);
    }

    public SSLSocketFactory(javax.net.ssl.SSLSocketFactory sSLSocketFactory, X509HostnameVerifier x509HostnameVerifier) {
        this(sSLSocketFactory, (String[]) null, (String[]) null, x509HostnameVerifier);
    }

    public SSLSocketFactory(javax.net.ssl.SSLSocketFactory sSLSocketFactory, String[] strArr, String[] strArr2, X509HostnameVerifier x509HostnameVerifier) {
        this.socketfactory = (javax.net.ssl.SSLSocketFactory) vi.a.g(sSLSocketFactory, "SSL socket factory");
        this.supportedProtocols = strArr;
        this.supportedCipherSuites = strArr2;
        this.hostnameVerifier = x509HostnameVerifier == null ? BROWSER_COMPATIBLE_HOSTNAME_VERIFIER : x509HostnameVerifier;
        this.nameResolver = null;
    }
}
