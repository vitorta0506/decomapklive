package qe;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.HttpStream;
import com.squareup.okhttp.internal.http.RequestException;
import com.squareup.okhttp.internal.http.RouteException;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import qe.b;
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: r  reason: collision with root package name */
    private static final ResponseBody f57248r = new a();

    /* renamed from: a  reason: collision with root package name */
    final OkHttpClient f57249a;

    /* renamed from: b  reason: collision with root package name */
    public final o f57250b;

    /* renamed from: c  reason: collision with root package name */
    private final Response f57251c;

    /* renamed from: d  reason: collision with root package name */
    private HttpStream f57252d;

    /* renamed from: e  reason: collision with root package name */
    long f57253e = -1;

    /* renamed from: f  reason: collision with root package name */
    private boolean f57254f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f57255g;

    /* renamed from: h  reason: collision with root package name */
    private final Request f57256h;

    /* renamed from: i  reason: collision with root package name */
    private Request f57257i;

    /* renamed from: j  reason: collision with root package name */
    private Response f57258j;

    /* renamed from: k  reason: collision with root package name */
    private Response f57259k;

    /* renamed from: l  reason: collision with root package name */
    private Sink f57260l;

    /* renamed from: m  reason: collision with root package name */
    private BufferedSink f57261m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f57262n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f57263o;

    /* renamed from: p  reason: collision with root package name */
    private CacheRequest f57264p;

    /* renamed from: q  reason: collision with root package name */
    private qe.b f57265q;

    /* loaded from: classes4.dex */
    static class a extends ResponseBody {
        a() {
        }

        @Override // com.squareup.okhttp.ResponseBody
        public long contentLength() {
            return 0L;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public MediaType contentType() {
            return null;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public BufferedSource source() {
            return new Buffer();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Source {

        /* renamed from: a  reason: collision with root package name */
        boolean f57266a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BufferedSource f57267b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CacheRequest f57268c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ BufferedSink f57269d;

        b(BufferedSource bufferedSource, CacheRequest cacheRequest, BufferedSink bufferedSink) {
            this.f57267b = bufferedSource;
            this.f57268c = cacheRequest;
            this.f57269d = bufferedSink;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f57266a && !com.squareup.okhttp.internal.i.g(this, 100, TimeUnit.MILLISECONDS)) {
                this.f57266a = true;
                this.f57268c.abort();
            }
            this.f57267b.close();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            try {
                long read = this.f57267b.read(buffer, j10);
                if (read == -1) {
                    if (!this.f57266a) {
                        this.f57266a = true;
                        this.f57269d.close();
                    }
                    return -1L;
                }
                buffer.copyTo(this.f57269d.buffer(), buffer.size() - read, read);
                this.f57269d.emitCompleteSegments();
                return read;
            } catch (IOException e10) {
                if (!this.f57266a) {
                    this.f57266a = true;
                    this.f57268c.abort();
                }
                throw e10;
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.f57267b.timeout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements Interceptor.Chain {

        /* renamed from: a  reason: collision with root package name */
        private final int f57271a;

        /* renamed from: b  reason: collision with root package name */
        private final Request f57272b;

        /* renamed from: c  reason: collision with root package name */
        private int f57273c;

        c(int i9, Request request) {
            this.f57271a = i9;
            this.f57272b = request;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Connection connection() {
            return g.this.f57250b.c();
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Response proceed(Request request) throws IOException {
            this.f57273c++;
            if (this.f57271a > 0) {
                Interceptor interceptor = g.this.f57249a.networkInterceptors().get(this.f57271a - 1);
                Address address = connection().getRoute().getAddress();
                if (request.httpUrl().host().equals(address.getUriHost()) && request.httpUrl().port() == address.getUriPort()) {
                    if (this.f57273c > 1) {
                        throw new IllegalStateException("network interceptor " + interceptor + " must call proceed() exactly once");
                    }
                } else {
                    throw new IllegalStateException("network interceptor " + interceptor + " must retain the same host and port");
                }
            }
            if (this.f57271a < g.this.f57249a.networkInterceptors().size()) {
                c cVar = new c(this.f57271a + 1, request);
                Interceptor interceptor2 = g.this.f57249a.networkInterceptors().get(this.f57271a);
                Response intercept = interceptor2.intercept(cVar);
                if (cVar.f57273c != 1) {
                    throw new IllegalStateException("network interceptor " + interceptor2 + " must call proceed() exactly once");
                } else if (intercept != null) {
                    return intercept;
                } else {
                    throw new NullPointerException("network interceptor " + interceptor2 + " returned null");
                }
            }
            g.this.f57252d.writeRequestHeaders(request);
            g.this.f57257i = request;
            if (g.this.q(request) && request.body() != null) {
                BufferedSink buffer = Okio.buffer(g.this.f57252d.createRequestBody(request, request.body().contentLength()));
                request.body().writeTo(buffer);
                buffer.close();
            }
            Response r10 = g.this.r();
            int code = r10.code();
            if ((code == 204 || code == 205) && r10.body().contentLength() > 0) {
                throw new ProtocolException("HTTP " + code + " had non-zero Content-Length: " + r10.body().contentLength());
            }
            return r10;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Request request() {
            return this.f57272b;
        }
    }

    public g(OkHttpClient okHttpClient, Request request, boolean z10, boolean z11, boolean z12, o oVar, l lVar, Response response) {
        this.f57249a = okHttpClient;
        this.f57256h = request;
        this.f57255g = z10;
        this.f57262n = z11;
        this.f57263o = z12;
        this.f57250b = oVar == null ? new o(okHttpClient.getConnectionPool(), i(okHttpClient, request)) : oVar;
        this.f57260l = lVar;
        this.f57251c = response;
    }

    private Response A(Response response) throws IOException {
        if (this.f57254f && "gzip".equalsIgnoreCase(this.f57259k.header("Content-Encoding")) && response.body() != null) {
            GzipSource gzipSource = new GzipSource(response.body().source());
            Headers build = response.headers().newBuilder().removeAll("Content-Encoding").removeAll("Content-Length").build();
            return response.newBuilder().headers(build).body(new j(build, Okio.buffer(gzipSource))).build();
        }
        return response;
    }

    private static boolean B(Response response, Response response2) {
        Date date;
        if (response2.code() == 304) {
            return true;
        }
        Date date2 = response.headers().getDate("Last-Modified");
        return (date2 == null || (date = response2.headers().getDate("Last-Modified")) == null || date.getTime() >= date2.getTime()) ? false : true;
    }

    private Response d(CacheRequest cacheRequest, Response response) throws IOException {
        Sink body;
        return (cacheRequest == null || (body = cacheRequest.body()) == null) ? response : response.newBuilder().body(new j(response.headers(), Okio.buffer(new b(response.body().source(), cacheRequest, Okio.buffer(body))))).build();
    }

    private static Headers g(Headers headers, Headers headers2) throws IOException {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i9 = 0; i9 < size; i9++) {
            String name = headers.name(i9);
            String value = headers.value(i9);
            if ((!"Warning".equalsIgnoreCase(name) || !value.startsWith("1")) && (!i.h(name) || headers2.get(name) == null)) {
                builder.add(name, value);
            }
        }
        int size2 = headers2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            String name2 = headers2.name(i10);
            if (!"Content-Length".equalsIgnoreCase(name2) && i.h(name2)) {
                builder.add(name2, headers2.value(i10));
            }
        }
        return builder.build();
    }

    private HttpStream h() throws RouteException, RequestException, IOException {
        return this.f57250b.k(this.f57249a.getConnectTimeout(), this.f57249a.getReadTimeout(), this.f57249a.getWriteTimeout(), this.f57249a.getRetryOnConnectionFailure(), !this.f57257i.method().equals("GET"));
    }

    private static Address i(OkHttpClient okHttpClient, Request request) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        if (request.isHttps()) {
            SSLSocketFactory sslSocketFactory = okHttpClient.getSslSocketFactory();
            hostnameVerifier = okHttpClient.getHostnameVerifier();
            sSLSocketFactory = sslSocketFactory;
            certificatePinner = okHttpClient.getCertificatePinner();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(request.httpUrl().host(), request.httpUrl().port(), okHttpClient.getDns(), okHttpClient.getSocketFactory(), sSLSocketFactory, hostnameVerifier, certificatePinner, okHttpClient.getAuthenticator(), okHttpClient.getProxy(), okHttpClient.getProtocols(), okHttpClient.getConnectionSpecs(), okHttpClient.getProxySelector());
    }

    public static boolean n(Response response) {
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int code = response.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && i.e(response) == -1 && !"chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) ? false : true;
    }

    private void o() throws IOException {
        InternalCache internalCache = com.squareup.okhttp.internal.d.instance.internalCache(this.f57249a);
        if (internalCache == null) {
            return;
        }
        if (!qe.b.a(this.f57259k, this.f57257i)) {
            if (h.a(this.f57257i.method())) {
                try {
                    internalCache.remove(this.f57257i);
                    return;
                } catch (IOException unused) {
                    return;
                }
            }
            return;
        }
        this.f57264p = internalCache.put(z(this.f57259k));
    }

    private Request p(Request request) throws IOException {
        Request.Builder newBuilder = request.newBuilder();
        if (request.header(EngineConst.PluginName.HOST_NAME) == null) {
            newBuilder.header(EngineConst.PluginName.HOST_NAME, com.squareup.okhttp.internal.i.i(request.httpUrl()));
        }
        if (request.header("Connection") == null) {
            newBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null) {
            this.f57254f = true;
            newBuilder.header("Accept-Encoding", "gzip");
        }
        CookieHandler cookieHandler = this.f57249a.getCookieHandler();
        if (cookieHandler != null) {
            i.a(newBuilder, cookieHandler.get(request.uri(), i.l(newBuilder.build().headers(), null)));
        }
        if (request.header("User-Agent") == null) {
            newBuilder.header("User-Agent", com.squareup.okhttp.internal.j.a());
        }
        return newBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response r() throws IOException {
        this.f57252d.finishRequest();
        Response build = this.f57252d.readResponseHeaders().request(this.f57257i).handshake(this.f57250b.c().getHandshake()).header(i.f57277c, Long.toString(this.f57253e)).header(i.f57278d, Long.toString(System.currentTimeMillis())).build();
        if (!this.f57263o) {
            build = build.newBuilder().body(this.f57252d.openResponseBody(build)).build();
        }
        if ("close".equalsIgnoreCase(build.request().header("Connection")) || "close".equalsIgnoreCase(build.header("Connection"))) {
            this.f57250b.l();
        }
        return build;
    }

    private static Response z(Response response) {
        return (response == null || response.body() == null) ? response : response.newBuilder().body(null).build();
    }

    public void C() {
        if (this.f57253e == -1) {
            this.f57253e = System.currentTimeMillis();
            return;
        }
        throw new IllegalStateException();
    }

    public void e() {
        this.f57250b.b();
    }

    public o f() {
        BufferedSink bufferedSink = this.f57261m;
        if (bufferedSink != null) {
            com.squareup.okhttp.internal.i.c(bufferedSink);
        } else {
            Sink sink = this.f57260l;
            if (sink != null) {
                com.squareup.okhttp.internal.i.c(sink);
            }
        }
        Response response = this.f57259k;
        if (response != null) {
            com.squareup.okhttp.internal.i.c(response.body());
        } else {
            this.f57250b.d();
        }
        return this.f57250b;
    }

    public Request j() throws IOException {
        String header;
        HttpUrl resolve;
        if (this.f57259k != null) {
            re.a c10 = this.f57250b.c();
            Route route = c10 != null ? c10.getRoute() : null;
            Proxy proxy = route != null ? route.getProxy() : this.f57249a.getProxy();
            int code = this.f57259k.code();
            String method = this.f57256h.method();
            if (code != 307 && code != 308) {
                if (code != 401) {
                    if (code != 407) {
                        switch (code) {
                            case 300:
                            case 301:
                            case 302:
                            case 303:
                                break;
                            default:
                                return null;
                        }
                    } else if (proxy.type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                }
                return i.j(this.f57249a.getAuthenticator(), this.f57259k, proxy);
            } else if (!method.equals("GET") && !method.equals("HEAD")) {
                return null;
            }
            if (!this.f57249a.getFollowRedirects() || (header = this.f57259k.header("Location")) == null || (resolve = this.f57256h.httpUrl().resolve(header)) == null) {
                return null;
            }
            if (resolve.scheme().equals(this.f57256h.httpUrl().scheme()) || this.f57249a.getFollowSslRedirects()) {
                Request.Builder newBuilder = this.f57256h.newBuilder();
                if (h.b(method)) {
                    if (h.c(method)) {
                        newBuilder.method("GET", null);
                    } else {
                        newBuilder.method(method, null);
                    }
                    newBuilder.removeHeader("Transfer-Encoding");
                    newBuilder.removeHeader("Content-Length");
                    newBuilder.removeHeader("Content-Type");
                }
                if (!x(resolve)) {
                    newBuilder.removeHeader("Authorization");
                }
                return newBuilder.url(resolve).build();
            }
            return null;
        }
        throw new IllegalStateException();
    }

    public Connection k() {
        return this.f57250b.c();
    }

    public Request l() {
        return this.f57256h;
    }

    public Response m() {
        Response response = this.f57259k;
        if (response != null) {
            return response;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q(Request request) {
        return h.b(request.method());
    }

    public void s() throws IOException {
        Response r10;
        if (this.f57259k != null) {
            return;
        }
        Request request = this.f57257i;
        if (request == null && this.f57258j == null) {
            throw new IllegalStateException("call sendRequest() first!");
        }
        if (request == null) {
            return;
        }
        if (this.f57263o) {
            this.f57252d.writeRequestHeaders(request);
            r10 = r();
        } else if (!this.f57262n) {
            r10 = new c(0, request).proceed(this.f57257i);
        } else {
            BufferedSink bufferedSink = this.f57261m;
            if (bufferedSink != null && bufferedSink.buffer().size() > 0) {
                this.f57261m.emit();
            }
            if (this.f57253e == -1) {
                if (i.d(this.f57257i) == -1) {
                    Sink sink = this.f57260l;
                    if (sink instanceof l) {
                        this.f57257i = this.f57257i.newBuilder().header("Content-Length", Long.toString(((l) sink).a())).build();
                    }
                }
                this.f57252d.writeRequestHeaders(this.f57257i);
            }
            Sink sink2 = this.f57260l;
            if (sink2 != null) {
                BufferedSink bufferedSink2 = this.f57261m;
                if (bufferedSink2 != null) {
                    bufferedSink2.close();
                } else {
                    sink2.close();
                }
                Sink sink3 = this.f57260l;
                if (sink3 instanceof l) {
                    this.f57252d.writeRequestBody((l) sink3);
                }
            }
            r10 = r();
        }
        t(r10.headers());
        Response response = this.f57258j;
        if (response != null) {
            if (B(response, r10)) {
                this.f57259k = this.f57258j.newBuilder().request(this.f57256h).priorResponse(z(this.f57251c)).headers(g(this.f57258j.headers(), r10.headers())).cacheResponse(z(this.f57258j)).networkResponse(z(r10)).build();
                r10.body().close();
                w();
                InternalCache internalCache = com.squareup.okhttp.internal.d.instance.internalCache(this.f57249a);
                internalCache.trackConditionalCacheHit();
                internalCache.update(this.f57258j, z(this.f57259k));
                this.f57259k = A(this.f57259k);
                return;
            }
            com.squareup.okhttp.internal.i.c(this.f57258j.body());
        }
        Response build = r10.newBuilder().request(this.f57256h).priorResponse(z(this.f57251c)).cacheResponse(z(this.f57258j)).networkResponse(z(r10)).build();
        this.f57259k = build;
        if (n(build)) {
            o();
            this.f57259k = A(d(this.f57264p, this.f57259k));
        }
    }

    public void t(Headers headers) throws IOException {
        CookieHandler cookieHandler = this.f57249a.getCookieHandler();
        if (cookieHandler != null) {
            cookieHandler.put(this.f57256h.uri(), i.l(headers, null));
        }
    }

    public g u(RouteException routeException) {
        if (this.f57250b.m(routeException) && this.f57249a.getRetryOnConnectionFailure()) {
            return new g(this.f57249a, this.f57256h, this.f57255g, this.f57262n, this.f57263o, f(), (l) this.f57260l, this.f57251c);
        }
        return null;
    }

    public g v(IOException iOException, Sink sink) {
        if (this.f57250b.n(iOException, sink) && this.f57249a.getRetryOnConnectionFailure()) {
            return new g(this.f57249a, this.f57256h, this.f57255g, this.f57262n, this.f57263o, f(), (l) sink, this.f57251c);
        }
        return null;
    }

    public void w() throws IOException {
        this.f57250b.o();
    }

    public boolean x(HttpUrl httpUrl) {
        HttpUrl httpUrl2 = this.f57256h.httpUrl();
        return httpUrl2.host().equals(httpUrl.host()) && httpUrl2.port() == httpUrl.port() && httpUrl2.scheme().equals(httpUrl.scheme());
    }

    public void y() throws RequestException, RouteException, IOException {
        if (this.f57265q != null) {
            return;
        }
        if (this.f57252d == null) {
            Request p10 = p(this.f57256h);
            InternalCache internalCache = com.squareup.okhttp.internal.d.instance.internalCache(this.f57249a);
            Response response = internalCache != null ? internalCache.get(p10) : null;
            qe.b c10 = new b.C0624b(System.currentTimeMillis(), p10, response).c();
            this.f57265q = c10;
            this.f57257i = c10.f57190a;
            this.f57258j = c10.f57191b;
            if (internalCache != null) {
                internalCache.trackResponse(c10);
            }
            if (response != null && this.f57258j == null) {
                com.squareup.okhttp.internal.i.c(response.body());
            }
            if (this.f57257i != null) {
                HttpStream h10 = h();
                this.f57252d = h10;
                h10.setHttpEngine(this);
                if (this.f57262n && q(this.f57257i) && this.f57260l == null) {
                    long d10 = i.d(p10);
                    if (!this.f57255g) {
                        this.f57252d.writeRequestHeaders(this.f57257i);
                        this.f57260l = this.f57252d.createRequestBody(this.f57257i, d10);
                        return;
                    } else if (d10 > 2147483647L) {
                        throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
                    } else {
                        if (d10 != -1) {
                            this.f57252d.writeRequestHeaders(this.f57257i);
                            this.f57260l = new l((int) d10);
                            return;
                        }
                        this.f57260l = new l();
                        return;
                    }
                }
                return;
            }
            Response response2 = this.f57258j;
            if (response2 != null) {
                this.f57259k = response2.newBuilder().request(this.f57256h).priorResponse(z(this.f57251c)).cacheResponse(z(this.f57258j)).build();
            } else {
                this.f57259k = new Response.Builder().request(this.f57256h).priorResponse(z(this.f57251c)).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(f57248r).build();
            }
            this.f57259k = A(this.f57259k);
            return;
        }
        throw new IllegalStateException();
    }
}
