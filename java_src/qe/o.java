package qe;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.internal.http.HttpStream;
import com.squareup.okhttp.internal.http.RouteException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.WeakReference;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.Sink;
import okio.Timeout;
/* loaded from: classes4.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final Address f57298a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectionPool f57299b;

    /* renamed from: c  reason: collision with root package name */
    private m f57300c;

    /* renamed from: d  reason: collision with root package name */
    private re.a f57301d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f57302e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f57303f;

    /* renamed from: g  reason: collision with root package name */
    private HttpStream f57304g;

    public o(ConnectionPool connectionPool, Address address) {
        this.f57299b = connectionPool;
        this.f57298a = address;
    }

    private void e(IOException iOException) {
        synchronized (this.f57299b) {
            if (this.f57300c != null) {
                re.a aVar = this.f57301d;
                if (aVar.f57461g == 0) {
                    this.f57300c.a(aVar.getRoute(), iOException);
                } else {
                    this.f57300c = null;
                }
            }
        }
        d();
    }

    private void f(boolean z10, boolean z11, boolean z12) {
        re.a aVar;
        re.a aVar2;
        synchronized (this.f57299b) {
            aVar = null;
            if (z12) {
                try {
                    this.f57304g = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z11) {
                this.f57302e = true;
            }
            re.a aVar3 = this.f57301d;
            if (aVar3 != null) {
                if (z10) {
                    aVar3.f57465k = true;
                }
                if (this.f57304g == null && (this.f57302e || aVar3.f57465k)) {
                    p(aVar3);
                    re.a aVar4 = this.f57301d;
                    if (aVar4.f57461g > 0) {
                        this.f57300c = null;
                    }
                    if (aVar4.f57464j.isEmpty()) {
                        this.f57301d.f57466l = System.nanoTime();
                        if (com.squareup.okhttp.internal.d.instance.connectionBecameIdle(this.f57299b, this.f57301d)) {
                            aVar2 = this.f57301d;
                            this.f57301d = null;
                            aVar = aVar2;
                        }
                    }
                    aVar2 = null;
                    this.f57301d = null;
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            com.squareup.okhttp.internal.i.d(aVar.getSocket());
        }
    }

    private re.a g(int i9, int i10, int i11, boolean z10) throws IOException, RouteException {
        synchronized (this.f57299b) {
            if (!this.f57302e) {
                if (this.f57304g == null) {
                    if (!this.f57303f) {
                        re.a aVar = this.f57301d;
                        if (aVar == null || aVar.f57465k) {
                            re.a aVar2 = com.squareup.okhttp.internal.d.instance.get(this.f57299b, this.f57298a, this);
                            if (aVar2 != null) {
                                this.f57301d = aVar2;
                                return aVar2;
                            }
                            if (this.f57300c == null) {
                                this.f57300c = new m(this.f57298a, q());
                            }
                            re.a aVar3 = new re.a(this.f57300c.g());
                            a(aVar3);
                            synchronized (this.f57299b) {
                                com.squareup.okhttp.internal.d.instance.put(this.f57299b, aVar3);
                                this.f57301d = aVar3;
                                if (this.f57303f) {
                                    throw new IOException("Canceled");
                                }
                            }
                            aVar3.c(i9, i10, i11, this.f57298a.getConnectionSpecs(), z10);
                            q().a(aVar3.getRoute());
                            return aVar3;
                        }
                        return aVar;
                    }
                    throw new IOException("Canceled");
                }
                throw new IllegalStateException("stream != null");
            }
            throw new IllegalStateException("released");
        }
    }

    private re.a h(int i9, int i10, int i11, boolean z10, boolean z11) throws IOException, RouteException {
        while (true) {
            re.a g10 = g(i9, i10, i11, z10);
            synchronized (this.f57299b) {
                if (g10.f57461g == 0) {
                    return g10;
                }
                if (g10.h(z11)) {
                    return g10;
                }
                d();
            }
        }
    }

    private boolean i(RouteException routeException) {
        IOException lastConnectException = routeException.getLastConnectException();
        if (lastConnectException instanceof ProtocolException) {
            return false;
        }
        if (lastConnectException instanceof InterruptedIOException) {
            return lastConnectException instanceof SocketTimeoutException;
        }
        return (((lastConnectException instanceof SSLHandshakeException) && (lastConnectException.getCause() instanceof CertificateException)) || (lastConnectException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private boolean j(IOException iOException) {
        return ((iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) ? false : true;
    }

    private void p(re.a aVar) {
        int size = aVar.f57464j.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (aVar.f57464j.get(i9).get() == this) {
                aVar.f57464j.remove(i9);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private com.squareup.okhttp.internal.h q() {
        return com.squareup.okhttp.internal.d.instance.routeDatabase(this.f57299b);
    }

    public void a(re.a aVar) {
        aVar.f57464j.add(new WeakReference(this));
    }

    public void b() {
        HttpStream httpStream;
        re.a aVar;
        synchronized (this.f57299b) {
            this.f57303f = true;
            httpStream = this.f57304g;
            aVar = this.f57301d;
        }
        if (httpStream != null) {
            httpStream.cancel();
        } else if (aVar != null) {
            aVar.b();
        }
    }

    public synchronized re.a c() {
        return this.f57301d;
    }

    public void d() {
        f(true, false, true);
    }

    public HttpStream k(int i9, int i10, int i11, boolean z10, boolean z11) throws RouteException, IOException {
        HttpStream dVar;
        try {
            re.a h10 = h(i9, i10, i11, z10, z11);
            if (h10.f57460f != null) {
                dVar = new e(this, h10.f57460f);
            } else {
                h10.getSocket().setSoTimeout(i10);
                Timeout timeout = h10.f57462h.timeout();
                long j10 = i10;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                timeout.timeout(j10, timeUnit);
                h10.f57463i.timeout().timeout(i11, timeUnit);
                dVar = new d(this, h10.f57462h, h10.f57463i);
            }
            synchronized (this.f57299b) {
                h10.f57461g++;
                this.f57304g = dVar;
            }
            return dVar;
        } catch (IOException e10) {
            throw new RouteException(e10);
        }
    }

    public void l() {
        f(true, false, false);
    }

    public boolean m(RouteException routeException) {
        if (this.f57301d != null) {
            e(routeException.getLastConnectException());
        }
        m mVar = this.f57300c;
        return (mVar == null || mVar.c()) && i(routeException);
    }

    public boolean n(IOException iOException, Sink sink) {
        re.a aVar = this.f57301d;
        if (aVar != null) {
            int i9 = aVar.f57461g;
            e(iOException);
            if (i9 == 1) {
                return false;
            }
        }
        boolean z10 = sink == null || (sink instanceof l);
        m mVar = this.f57300c;
        return (mVar == null || mVar.c()) && j(iOException) && z10;
    }

    public void o() {
        f(false, true, false);
    }

    public void r(HttpStream httpStream) {
        synchronized (this.f57299b) {
            if (httpStream != null) {
                if (httpStream == this.f57304g) {
                }
            }
            throw new IllegalStateException("expected " + this.f57304g + " but was " + httpStream);
        }
        f(false, false, true);
    }

    public String toString() {
        return this.f57298a.toString();
    }
}
