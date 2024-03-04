package re;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.security.CertificateUtil;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.framed.a;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.i;
import com.squareup.okhttp.internal.j;
import com.squareup.okhttp.internal.tls.TrustRootIndex;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
import qe.o;
import se.b;
import se.d;
/* loaded from: classes4.dex */
public final class a implements Connection {

    /* renamed from: m  reason: collision with root package name */
    private static SSLSocketFactory f57453m;

    /* renamed from: n  reason: collision with root package name */
    private static TrustRootIndex f57454n;

    /* renamed from: a  reason: collision with root package name */
    private final Route f57455a;

    /* renamed from: b  reason: collision with root package name */
    private Socket f57456b;

    /* renamed from: c  reason: collision with root package name */
    public Socket f57457c;

    /* renamed from: d  reason: collision with root package name */
    private Handshake f57458d;

    /* renamed from: e  reason: collision with root package name */
    private Protocol f57459e;

    /* renamed from: f  reason: collision with root package name */
    public volatile com.squareup.okhttp.internal.framed.a f57460f;

    /* renamed from: g  reason: collision with root package name */
    public int f57461g;

    /* renamed from: h  reason: collision with root package name */
    public BufferedSource f57462h;

    /* renamed from: i  reason: collision with root package name */
    public BufferedSink f57463i;

    /* renamed from: k  reason: collision with root package name */
    public boolean f57465k;

    /* renamed from: j  reason: collision with root package name */
    public final List<Reference<o>> f57464j = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    public long f57466l = Long.MAX_VALUE;

    public a(Route route) {
        this.f57455a = route;
    }

    private void d(int i9, int i10, int i11, com.squareup.okhttp.internal.a aVar) throws IOException {
        this.f57456b.setSoTimeout(i10);
        try {
            g.f().d(this.f57456b, this.f57455a.getSocketAddress(), i9);
            this.f57462h = Okio.buffer(Okio.source(this.f57456b));
            this.f57463i = Okio.buffer(Okio.sink(this.f57456b));
            if (this.f57455a.getAddress().getSslSocketFactory() != null) {
                e(i10, i11, aVar);
            } else {
                this.f57459e = Protocol.HTTP_1_1;
                this.f57457c = this.f57456b;
            }
            Protocol protocol = this.f57459e;
            if (protocol == Protocol.SPDY_3 || protocol == Protocol.HTTP_2) {
                this.f57457c.setSoTimeout(0);
                com.squareup.okhttp.internal.framed.a i12 = new a.h(true).k(this.f57457c, this.f57455a.getAddress().url().host(), this.f57462h, this.f57463i).j(this.f57459e).i();
                i12.d0();
                this.f57460f = i12;
            }
        } catch (ConnectException unused) {
            throw new ConnectException("Failed to connect to " + this.f57455a.getSocketAddress());
        }
    }

    private void e(int i9, int i10, com.squareup.okhttp.internal.a aVar) throws IOException {
        SSLSocket sSLSocket;
        if (this.f57455a.requiresTunnel()) {
            f(i9, i10);
        }
        Address address = this.f57455a.getAddress();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) address.getSslSocketFactory().createSocket(this.f57456b, address.getUriHost(), address.getUriPort(), true);
            } catch (AssertionError e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ConnectionSpec a10 = aVar.a(sSLSocket);
            if (a10.supportsTlsExtensions()) {
                g.f().c(sSLSocket, address.getUriHost(), address.getProtocols());
            }
            sSLSocket.startHandshake();
            Handshake handshake = Handshake.get(sSLSocket.getSession());
            if (address.getHostnameVerifier().verify(address.getUriHost(), sSLSocket.getSession())) {
                if (address.getCertificatePinner() != CertificatePinner.DEFAULT) {
                    address.getCertificatePinner().check(address.getUriHost(), new b(j(address.getSslSocketFactory())).a(handshake.peerCertificates()));
                }
                String h10 = a10.supportsTlsExtensions() ? g.f().h(sSLSocket) : null;
                this.f57457c = sSLSocket;
                this.f57462h = Okio.buffer(Okio.source(sSLSocket));
                this.f57463i = Okio.buffer(Okio.sink(this.f57457c));
                this.f57458d = handshake;
                this.f57459e = h10 != null ? Protocol.get(h10) : Protocol.HTTP_1_1;
                g.f().a(sSLSocket);
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) handshake.peerCertificates().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + address.getUriHost() + " not verified:\n    certificate: " + CertificatePinner.pin(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + d.a(x509Certificate));
        } catch (AssertionError e11) {
            e = e11;
            if (!i.o(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th3) {
            th = th3;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                g.f().a(sSLSocket2);
            }
            i.d(sSLSocket2);
            throw th;
        }
    }

    private void f(int i9, int i10) throws IOException {
        Request g10 = g();
        HttpUrl httpUrl = g10.httpUrl();
        String str = "CONNECT " + httpUrl.host() + CertificateUtil.DELIMITER + httpUrl.port() + " HTTP/1.1";
        do {
            qe.d dVar = new qe.d(null, this.f57462h, this.f57463i);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f57462h.timeout().timeout(i9, timeUnit);
            this.f57463i.timeout().timeout(i10, timeUnit);
            dVar.p(g10.headers(), str);
            dVar.finishRequest();
            Response build = dVar.o().request(g10).build();
            long e10 = qe.i.e(build);
            if (e10 == -1) {
                e10 = 0;
            }
            Source l10 = dVar.l(e10);
            i.r(l10, Integer.MAX_VALUE, timeUnit);
            l10.close();
            int code = build.code();
            if (code == 200) {
                if (!this.f57462h.buffer().exhausted() || !this.f57463i.buffer().exhausted()) {
                    throw new IOException("TLS tunnel buffered too many bytes!");
                }
                return;
            } else if (code == 407) {
                g10 = qe.i.j(this.f57455a.getAddress().getAuthenticator(), build, this.f57455a.getProxy());
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + build.code());
            }
        } while (g10 != null);
        throw new IOException("Failed to authenticate with proxy");
    }

    private Request g() throws IOException {
        return new Request.Builder().url(this.f57455a.getAddress().url()).header(EngineConst.PluginName.HOST_NAME, i.i(this.f57455a.getAddress().url())).header("Proxy-Connection", "Keep-Alive").header("User-Agent", j.a()).build();
    }

    private static synchronized TrustRootIndex j(SSLSocketFactory sSLSocketFactory) {
        TrustRootIndex trustRootIndex;
        synchronized (a.class) {
            if (sSLSocketFactory != f57453m) {
                f57454n = g.f().l(g.f().k(sSLSocketFactory));
                f57453m = sSLSocketFactory;
            }
            trustRootIndex = f57454n;
        }
        return trustRootIndex;
    }

    public int a() {
        com.squareup.okhttp.internal.framed.a aVar = this.f57460f;
        if (aVar != null) {
            return aVar.P();
        }
        return 1;
    }

    public void b() {
        i.d(this.f57456b);
    }

    public void c(int i9, int i10, int i11, List<ConnectionSpec> list, boolean z10) throws RouteException {
        Socket createSocket;
        if (this.f57459e == null) {
            com.squareup.okhttp.internal.a aVar = new com.squareup.okhttp.internal.a(list);
            Proxy proxy = this.f57455a.getProxy();
            Address address = this.f57455a.getAddress();
            if (this.f57455a.getAddress().getSslSocketFactory() == null && !list.contains(ConnectionSpec.CLEARTEXT)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication not supported: " + list));
            }
            RouteException routeException = null;
            while (this.f57459e == null) {
                try {
                } catch (IOException e10) {
                    i.d(this.f57457c);
                    i.d(this.f57456b);
                    this.f57457c = null;
                    this.f57456b = null;
                    this.f57462h = null;
                    this.f57463i = null;
                    this.f57458d = null;
                    this.f57459e = null;
                    if (routeException == null) {
                        routeException = new RouteException(e10);
                    } else {
                        routeException.addConnectException(e10);
                    }
                    if (!z10 || !aVar.b(e10)) {
                        throw routeException;
                    }
                }
                if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.HTTP) {
                    createSocket = new Socket(proxy);
                    this.f57456b = createSocket;
                    d(i9, i10, i11, aVar);
                }
                createSocket = address.getSocketFactory().createSocket();
                this.f57456b = createSocket;
                d(i9, i10, i11, aVar);
            }
            return;
        }
        throw new IllegalStateException("already connected");
    }

    @Override // com.squareup.okhttp.Connection
    public Handshake getHandshake() {
        return this.f57458d;
    }

    @Override // com.squareup.okhttp.Connection
    public Protocol getProtocol() {
        Protocol protocol = this.f57459e;
        return protocol != null ? protocol : Protocol.HTTP_1_1;
    }

    @Override // com.squareup.okhttp.Connection
    public Route getRoute() {
        return this.f57455a;
    }

    @Override // com.squareup.okhttp.Connection
    public Socket getSocket() {
        return this.f57457c;
    }

    public boolean h(boolean z10) {
        if (this.f57457c.isClosed() || this.f57457c.isInputShutdown() || this.f57457c.isOutputShutdown()) {
            return false;
        }
        if (this.f57460f == null && z10) {
            try {
                int soTimeout = this.f57457c.getSoTimeout();
                this.f57457c.setSoTimeout(1);
                if (this.f57462h.exhausted()) {
                    this.f57457c.setSoTimeout(soTimeout);
                    return false;
                }
                this.f57457c.setSoTimeout(soTimeout);
                return true;
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public boolean i() {
        return this.f57460f != null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f57455a.getAddress().url().host());
        sb2.append(CertificateUtil.DELIMITER);
        sb2.append(this.f57455a.getAddress().url().port());
        sb2.append(", proxy=");
        sb2.append(this.f57455a.getProxy());
        sb2.append(" hostAddress=");
        sb2.append(this.f57455a.getSocketAddress());
        sb2.append(" cipherSuite=");
        Handshake handshake = this.f57458d;
        sb2.append(handshake != null ? handshake.cipherSuite() : IntegrityManager.INTEGRITY_TYPE_NONE);
        sb2.append(" protocol=");
        sb2.append(this.f57459e);
        sb2.append('}');
        return sb2.toString();
    }
}
