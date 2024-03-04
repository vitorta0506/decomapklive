package com.squareup.okhttp;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.d;
import com.squareup.okhttp.internal.h;
import com.squareup.okhttp.internal.i;
import java.net.CookieHandler;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import qe.o;
import re.a;
/* loaded from: classes4.dex */
public class OkHttpClient implements Cloneable {
    private static SSLSocketFactory defaultSslSocketFactory;
    private Authenticator authenticator;
    private Cache cache;
    private CertificatePinner certificatePinner;
    private int connectTimeout;
    private ConnectionPool connectionPool;
    private List<ConnectionSpec> connectionSpecs;
    private CookieHandler cookieHandler;
    private Dispatcher dispatcher;
    private Dns dns;
    private boolean followRedirects;
    private boolean followSslRedirects;
    private HostnameVerifier hostnameVerifier;
    private final List<Interceptor> interceptors;
    private InternalCache internalCache;
    private final List<Interceptor> networkInterceptors;
    private List<Protocol> protocols;
    private Proxy proxy;
    private ProxySelector proxySelector;
    private int readTimeout;
    private boolean retryOnConnectionFailure;
    private final h routeDatabase;
    private SocketFactory socketFactory;
    private SSLSocketFactory sslSocketFactory;
    private int writeTimeout;
    private static final List<Protocol> DEFAULT_PROTOCOLS = i.k(Protocol.HTTP_2, Protocol.SPDY_3, Protocol.HTTP_1_1);
    private static final List<ConnectionSpec> DEFAULT_CONNECTION_SPECS = i.k(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT);

    static {
        d.instance = new d() { // from class: com.squareup.okhttp.OkHttpClient.1
            @Override // com.squareup.okhttp.internal.d
            public void addLenient(Headers.Builder builder, String str) {
                builder.addLenient(str);
            }

            @Override // com.squareup.okhttp.internal.d
            public void apply(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z10) {
                connectionSpec.apply(sSLSocket, z10);
            }

            @Override // com.squareup.okhttp.internal.d
            public o callEngineGetStreamAllocation(Call call) {
                return call.engine.f57250b;
            }

            @Override // com.squareup.okhttp.internal.d
            public void callEnqueue(Call call, Callback callback, boolean z10) {
                call.enqueue(callback, z10);
            }

            @Override // com.squareup.okhttp.internal.d
            public boolean connectionBecameIdle(ConnectionPool connectionPool, a aVar) {
                return connectionPool.connectionBecameIdle(aVar);
            }

            @Override // com.squareup.okhttp.internal.d
            public a get(ConnectionPool connectionPool, Address address, o oVar) {
                return connectionPool.get(address, oVar);
            }

            @Override // com.squareup.okhttp.internal.d
            public HttpUrl getHttpUrlChecked(String str) throws MalformedURLException, UnknownHostException {
                return HttpUrl.getChecked(str);
            }

            @Override // com.squareup.okhttp.internal.d
            public InternalCache internalCache(OkHttpClient okHttpClient) {
                return okHttpClient.internalCache();
            }

            @Override // com.squareup.okhttp.internal.d
            public void put(ConnectionPool connectionPool, a aVar) {
                connectionPool.put(aVar);
            }

            @Override // com.squareup.okhttp.internal.d
            public h routeDatabase(ConnectionPool connectionPool) {
                return connectionPool.routeDatabase;
            }

            @Override // com.squareup.okhttp.internal.d
            public void setCache(OkHttpClient okHttpClient, InternalCache internalCache) {
                okHttpClient.setInternalCache(internalCache);
            }

            @Override // com.squareup.okhttp.internal.d
            public void addLenient(Headers.Builder builder, String str, String str2) {
                builder.addLenient(str, str2);
            }
        };
    }

    public OkHttpClient() {
        this.interceptors = new ArrayList();
        this.networkInterceptors = new ArrayList();
        this.followSslRedirects = true;
        this.followRedirects = true;
        this.retryOnConnectionFailure = true;
        this.connectTimeout = 10000;
        this.readTimeout = 10000;
        this.writeTimeout = 10000;
        this.routeDatabase = new h();
        this.dispatcher = new Dispatcher();
    }

    private synchronized SSLSocketFactory getDefaultSSLSocketFactory() {
        if (defaultSslSocketFactory == null) {
            try {
                SSLContext sSLContext = SSLContext.getInstance(org.apache.http.conn.ssl.SSLSocketFactory.TLS);
                sSLContext.init(null, null, null);
                defaultSslSocketFactory = sSLContext.getSocketFactory();
            } catch (GeneralSecurityException unused) {
                throw new AssertionError();
            }
        }
        return defaultSslSocketFactory;
    }

    public OkHttpClient cancel(Object obj) {
        getDispatcher().cancel(obj);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OkHttpClient copyWithDefaults() {
        OkHttpClient okHttpClient = new OkHttpClient(this);
        if (okHttpClient.proxySelector == null) {
            okHttpClient.proxySelector = ProxySelector.getDefault();
        }
        if (okHttpClient.cookieHandler == null) {
            okHttpClient.cookieHandler = CookieHandler.getDefault();
        }
        if (okHttpClient.socketFactory == null) {
            okHttpClient.socketFactory = SocketFactory.getDefault();
        }
        if (okHttpClient.sslSocketFactory == null) {
            okHttpClient.sslSocketFactory = getDefaultSSLSocketFactory();
        }
        if (okHttpClient.hostnameVerifier == null) {
            okHttpClient.hostnameVerifier = se.d.f57882a;
        }
        if (okHttpClient.certificatePinner == null) {
            okHttpClient.certificatePinner = CertificatePinner.DEFAULT;
        }
        if (okHttpClient.authenticator == null) {
            okHttpClient.authenticator = qe.a.f57189a;
        }
        if (okHttpClient.connectionPool == null) {
            okHttpClient.connectionPool = ConnectionPool.getDefault();
        }
        if (okHttpClient.protocols == null) {
            okHttpClient.protocols = DEFAULT_PROTOCOLS;
        }
        if (okHttpClient.connectionSpecs == null) {
            okHttpClient.connectionSpecs = DEFAULT_CONNECTION_SPECS;
        }
        if (okHttpClient.dns == null) {
            okHttpClient.dns = Dns.SYSTEM;
        }
        return okHttpClient;
    }

    public Authenticator getAuthenticator() {
        return this.authenticator;
    }

    public Cache getCache() {
        return this.cache;
    }

    public CertificatePinner getCertificatePinner() {
        return this.certificatePinner;
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public ConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    public List<ConnectionSpec> getConnectionSpecs() {
        return this.connectionSpecs;
    }

    public CookieHandler getCookieHandler() {
        return this.cookieHandler;
    }

    public Dispatcher getDispatcher() {
        return this.dispatcher;
    }

    public Dns getDns() {
        return this.dns;
    }

    public boolean getFollowRedirects() {
        return this.followRedirects;
    }

    public boolean getFollowSslRedirects() {
        return this.followSslRedirects;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    public List<Protocol> getProtocols() {
        return this.protocols;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public ProxySelector getProxySelector() {
        return this.proxySelector;
    }

    public int getReadTimeout() {
        return this.readTimeout;
    }

    public boolean getRetryOnConnectionFailure() {
        return this.retryOnConnectionFailure;
    }

    public SocketFactory getSocketFactory() {
        return this.socketFactory;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    public int getWriteTimeout() {
        return this.writeTimeout;
    }

    public List<Interceptor> interceptors() {
        return this.interceptors;
    }

    InternalCache internalCache() {
        return this.internalCache;
    }

    public List<Interceptor> networkInterceptors() {
        return this.networkInterceptors;
    }

    public Call newCall(Request request) {
        return new Call(this, request);
    }

    h routeDatabase() {
        return this.routeDatabase;
    }

    public OkHttpClient setAuthenticator(Authenticator authenticator) {
        this.authenticator = authenticator;
        return this;
    }

    public OkHttpClient setCache(Cache cache) {
        this.cache = cache;
        this.internalCache = null;
        return this;
    }

    public OkHttpClient setCertificatePinner(CertificatePinner certificatePinner) {
        this.certificatePinner = certificatePinner;
        return this;
    }

    public void setConnectTimeout(long j10, TimeUnit timeUnit) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit != null) {
            long millis = timeUnit.toMillis(j10);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && i9 > 0) {
                throw new IllegalArgumentException("Timeout too small.");
            }
            this.connectTimeout = (int) millis;
            return;
        }
        throw new IllegalArgumentException("unit == null");
    }

    public OkHttpClient setConnectionPool(ConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        return this;
    }

    public OkHttpClient setConnectionSpecs(List<ConnectionSpec> list) {
        this.connectionSpecs = i.j(list);
        return this;
    }

    public OkHttpClient setCookieHandler(CookieHandler cookieHandler) {
        this.cookieHandler = cookieHandler;
        return this;
    }

    public OkHttpClient setDispatcher(Dispatcher dispatcher) {
        if (dispatcher != null) {
            this.dispatcher = dispatcher;
            return this;
        }
        throw new IllegalArgumentException("dispatcher == null");
    }

    public OkHttpClient setDns(Dns dns) {
        this.dns = dns;
        return this;
    }

    public void setFollowRedirects(boolean z10) {
        this.followRedirects = z10;
    }

    public OkHttpClient setFollowSslRedirects(boolean z10) {
        this.followSslRedirects = z10;
        return this;
    }

    public OkHttpClient setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.hostnameVerifier = hostnameVerifier;
        return this;
    }

    void setInternalCache(InternalCache internalCache) {
        this.internalCache = internalCache;
        this.cache = null;
    }

    public OkHttpClient setProtocols(List<Protocol> list) {
        List j10 = i.j(list);
        if (j10.contains(Protocol.HTTP_1_1)) {
            if (!j10.contains(Protocol.HTTP_1_0)) {
                if (!j10.contains(null)) {
                    this.protocols = i.j(j10);
                    return this;
                }
                throw new IllegalArgumentException("protocols must not contain null");
            }
            throw new IllegalArgumentException("protocols must not contain http/1.0: " + j10);
        }
        throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + j10);
    }

    public OkHttpClient setProxy(Proxy proxy) {
        this.proxy = proxy;
        return this;
    }

    public OkHttpClient setProxySelector(ProxySelector proxySelector) {
        this.proxySelector = proxySelector;
        return this;
    }

    public void setReadTimeout(long j10, TimeUnit timeUnit) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit != null) {
            long millis = timeUnit.toMillis(j10);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && i9 > 0) {
                throw new IllegalArgumentException("Timeout too small.");
            }
            this.readTimeout = (int) millis;
            return;
        }
        throw new IllegalArgumentException("unit == null");
    }

    public void setRetryOnConnectionFailure(boolean z10) {
        this.retryOnConnectionFailure = z10;
    }

    public OkHttpClient setSocketFactory(SocketFactory socketFactory) {
        this.socketFactory = socketFactory;
        return this;
    }

    public OkHttpClient setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
        return this;
    }

    public void setWriteTimeout(long j10, TimeUnit timeUnit) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit != null) {
            long millis = timeUnit.toMillis(j10);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && i9 > 0) {
                throw new IllegalArgumentException("Timeout too small.");
            }
            this.writeTimeout = (int) millis;
            return;
        }
        throw new IllegalArgumentException("unit == null");
    }

    /* renamed from: clone */
    public OkHttpClient m828clone() {
        return new OkHttpClient(this);
    }

    private OkHttpClient(OkHttpClient okHttpClient) {
        ArrayList arrayList = new ArrayList();
        this.interceptors = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.networkInterceptors = arrayList2;
        this.followSslRedirects = true;
        this.followRedirects = true;
        this.retryOnConnectionFailure = true;
        this.connectTimeout = 10000;
        this.readTimeout = 10000;
        this.writeTimeout = 10000;
        this.routeDatabase = okHttpClient.routeDatabase;
        this.dispatcher = okHttpClient.dispatcher;
        this.proxy = okHttpClient.proxy;
        this.protocols = okHttpClient.protocols;
        this.connectionSpecs = okHttpClient.connectionSpecs;
        arrayList.addAll(okHttpClient.interceptors);
        arrayList2.addAll(okHttpClient.networkInterceptors);
        this.proxySelector = okHttpClient.proxySelector;
        this.cookieHandler = okHttpClient.cookieHandler;
        Cache cache = okHttpClient.cache;
        this.cache = cache;
        this.internalCache = cache != null ? cache.internalCache : okHttpClient.internalCache;
        this.socketFactory = okHttpClient.socketFactory;
        this.sslSocketFactory = okHttpClient.sslSocketFactory;
        this.hostnameVerifier = okHttpClient.hostnameVerifier;
        this.certificatePinner = okHttpClient.certificatePinner;
        this.authenticator = okHttpClient.authenticator;
        this.connectionPool = okHttpClient.connectionPool;
        this.dns = okHttpClient.dns;
        this.followSslRedirects = okHttpClient.followSslRedirects;
        this.followRedirects = okHttpClient.followRedirects;
        this.retryOnConnectionFailure = okHttpClient.retryOnConnectionFailure;
        this.connectTimeout = okHttpClient.connectTimeout;
        this.readTimeout = okHttpClient.readTimeout;
        this.writeTimeout = okHttpClient.writeTimeout;
    }
}
