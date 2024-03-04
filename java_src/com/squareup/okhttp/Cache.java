package com.squareup.okhttp;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.b;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.i;
import com.squareup.okhttp.internal.io.FileSystem;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import qe.h;
import qe.n;
/* loaded from: classes4.dex */
public final class Cache {
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    private final b cache;
    private int hitCount;
    final InternalCache internalCache;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class CacheRequestImpl implements CacheRequest {
        private Sink body;
        private Sink cacheOut;
        private boolean done;
        private final b.e editor;

        public CacheRequestImpl(final b.e eVar) throws IOException {
            this.editor = eVar;
            Sink f10 = eVar.f(1);
            this.cacheOut = f10;
            this.body = new ForwardingSink(f10) { // from class: com.squareup.okhttp.Cache.CacheRequestImpl.1
                @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    synchronized (Cache.this) {
                        if (CacheRequestImpl.this.done) {
                            return;
                        }
                        CacheRequestImpl.this.done = true;
                        Cache.access$808(Cache.this);
                        super.close();
                        eVar.e();
                    }
                }
            };
        }

        @Override // com.squareup.okhttp.internal.http.CacheRequest
        public void abort() {
            synchronized (Cache.this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                Cache.access$908(Cache.this);
                i.c(this.cacheOut);
                try {
                    this.editor.a();
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.squareup.okhttp.internal.http.CacheRequest
        public Sink body() {
            return this.body;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class CacheResponseBody extends ResponseBody {
        private final BufferedSource bodySource;
        private final String contentLength;
        private final String contentType;
        private final b.g snapshot;

        public CacheResponseBody(final b.g gVar, String str, String str2) {
            this.snapshot = gVar;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = Okio.buffer(new ForwardingSource(gVar.d(1)) { // from class: com.squareup.okhttp.Cache.CacheResponseBody.1
                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    gVar.close();
                    super.close();
                }
            });
        }

        @Override // com.squareup.okhttp.ResponseBody
        public long contentLength() {
            try {
                String str = this.contentLength;
                if (str != null) {
                    return Long.parseLong(str);
                }
                return -1L;
            } catch (NumberFormatException unused) {
                return -1L;
            }
        }

        @Override // com.squareup.okhttp.ResponseBody
        public MediaType contentType() {
            String str = this.contentType;
            if (str != null) {
                return MediaType.parse(str);
            }
            return null;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public BufferedSource source() {
            return this.bodySource;
        }
    }

    public Cache(File file, long j10) {
        this(file, j10, FileSystem.SYSTEM);
    }

    private void abortQuietly(b.e eVar) {
        if (eVar != null) {
            try {
                eVar.a();
            } catch (IOException unused) {
            }
        }
    }

    static /* synthetic */ int access$808(Cache cache) {
        int i9 = cache.writeSuccessCount;
        cache.writeSuccessCount = i9 + 1;
        return i9;
    }

    static /* synthetic */ int access$908(Cache cache) {
        int i9 = cache.writeAbortCount;
        cache.writeAbortCount = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CacheRequest put(Response response) throws IOException {
        b.e eVar;
        String method = response.request().method();
        if (h.a(response.request().method())) {
            try {
                remove(response.request());
            } catch (IOException unused) {
            }
            return null;
        } else if (!method.equals("GET") || qe.i.g(response)) {
            return null;
        } else {
            Entry entry = new Entry(response);
            try {
                eVar = this.cache.C(urlToKey(response.request()));
                if (eVar == null) {
                    return null;
                }
                try {
                    entry.writeTo(eVar);
                    return new CacheRequestImpl(eVar);
                } catch (IOException unused2) {
                    abortQuietly(eVar);
                    return null;
                }
            } catch (IOException unused3) {
                eVar = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readInt(BufferedSource bufferedSource) throws IOException {
        try {
            long readDecimalLong = bufferedSource.readDecimalLong();
            String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
            if (readDecimalLong < 0 || readDecimalLong > 2147483647L || !readUtf8LineStrict.isEmpty()) {
                throw new IOException("expected an int but was \"" + readDecimalLong + readUtf8LineStrict + "\"");
            }
            return (int) readDecimalLong;
        } catch (NumberFormatException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void remove(Request request) throws IOException {
        this.cache.X(urlToKey(request));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void trackConditionalCacheHit() {
        this.hitCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void trackResponse(qe.b bVar) {
        this.requestCount++;
        if (bVar.f57190a != null) {
            this.networkCount++;
        } else if (bVar.f57191b != null) {
            this.hitCount++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(Response response, Response response2) {
        b.e eVar;
        Entry entry = new Entry(response2);
        try {
            eVar = ((CacheResponseBody) response.body()).snapshot.c();
            if (eVar != null) {
                try {
                    entry.writeTo(eVar);
                    eVar.e();
                } catch (IOException unused) {
                    abortQuietly(eVar);
                }
            }
        } catch (IOException unused2) {
            eVar = null;
        }
    }

    private static String urlToKey(Request request) {
        return i.p(request.urlString());
    }

    public void close() throws IOException {
        this.cache.close();
    }

    public void delete() throws IOException {
        this.cache.A();
    }

    public void evictAll() throws IOException {
        this.cache.I();
    }

    public void flush() throws IOException {
        this.cache.flush();
    }

    Response get(Request request) {
        try {
            b.g K = this.cache.K(urlToKey(request));
            if (K == null) {
                return null;
            }
            try {
                Entry entry = new Entry(K.d(0));
                Response response = entry.response(request, K);
                if (entry.matches(request, response)) {
                    return response;
                }
                i.c(response.body());
                return null;
            } catch (IOException unused) {
                i.c(K);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    public File getDirectory() {
        return this.cache.L();
    }

    public synchronized int getHitCount() {
        return this.hitCount;
    }

    public long getMaxSize() {
        return this.cache.M();
    }

    public synchronized int getNetworkCount() {
        return this.networkCount;
    }

    public synchronized int getRequestCount() {
        return this.requestCount;
    }

    public long getSize() throws IOException {
        return this.cache.Z();
    }

    public synchronized int getWriteAbortCount() {
        return this.writeAbortCount;
    }

    public synchronized int getWriteSuccessCount() {
        return this.writeSuccessCount;
    }

    public void initialize() throws IOException {
        this.cache.N();
    }

    public boolean isClosed() {
        return this.cache.isClosed();
    }

    public Iterator<String> urls() throws IOException {
        return new Iterator<String>() { // from class: com.squareup.okhttp.Cache.2
            boolean canRemove;
            final Iterator<b.g> delegate;
            String nextUrl;

            {
                this.delegate = Cache.this.cache.c0();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.nextUrl != null) {
                    return true;
                }
                this.canRemove = false;
                while (this.delegate.hasNext()) {
                    b.g next = this.delegate.next();
                    try {
                        this.nextUrl = Okio.buffer(next.d(0)).readUtf8LineStrict();
                        return true;
                    } catch (IOException unused) {
                    } finally {
                        next.close();
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public void remove() {
                if (this.canRemove) {
                    this.delegate.remove();
                    return;
                }
                throw new IllegalStateException("remove() before next()");
            }

            @Override // java.util.Iterator
            public String next() {
                if (hasNext()) {
                    String str = this.nextUrl;
                    this.nextUrl = null;
                    this.canRemove = true;
                    return str;
                }
                throw new NoSuchElementException();
            }
        };
    }

    Cache(File file, long j10, FileSystem fileSystem) {
        this.internalCache = new InternalCache() { // from class: com.squareup.okhttp.Cache.1
            @Override // com.squareup.okhttp.internal.InternalCache
            public Response get(Request request) throws IOException {
                return Cache.this.get(request);
            }

            @Override // com.squareup.okhttp.internal.InternalCache
            public CacheRequest put(Response response) throws IOException {
                return Cache.this.put(response);
            }

            @Override // com.squareup.okhttp.internal.InternalCache
            public void remove(Request request) throws IOException {
                Cache.this.remove(request);
            }

            @Override // com.squareup.okhttp.internal.InternalCache
            public void trackConditionalCacheHit() {
                Cache.this.trackConditionalCacheHit();
            }

            @Override // com.squareup.okhttp.internal.InternalCache
            public void trackResponse(qe.b bVar) {
                Cache.this.trackResponse(bVar);
            }

            @Override // com.squareup.okhttp.internal.InternalCache
            public void update(Response response, Response response2) throws IOException {
                Cache.this.update(response, response2);
            }
        };
        this.cache = b.y(fileSystem, file, VERSION, 2, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class Entry {
        private final int code;
        private final Handshake handshake;
        private final String message;
        private final Protocol protocol;
        private final String requestMethod;
        private final Headers responseHeaders;
        private final String url;
        private final Headers varyHeaders;

        public Entry(Source source) throws IOException {
            try {
                BufferedSource buffer = Okio.buffer(source);
                this.url = buffer.readUtf8LineStrict();
                this.requestMethod = buffer.readUtf8LineStrict();
                Headers.Builder builder = new Headers.Builder();
                int readInt = Cache.readInt(buffer);
                for (int i9 = 0; i9 < readInt; i9++) {
                    builder.addLenient(buffer.readUtf8LineStrict());
                }
                this.varyHeaders = builder.build();
                n a10 = n.a(buffer.readUtf8LineStrict());
                this.protocol = a10.f57295a;
                this.code = a10.f57296b;
                this.message = a10.f57297c;
                Headers.Builder builder2 = new Headers.Builder();
                int readInt2 = Cache.readInt(buffer);
                for (int i10 = 0; i10 < readInt2; i10++) {
                    builder2.addLenient(buffer.readUtf8LineStrict());
                }
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String readUtf8LineStrict = buffer.readUtf8LineStrict();
                    if (readUtf8LineStrict.length() <= 0) {
                        this.handshake = Handshake.get(buffer.readUtf8LineStrict(), readCertificateList(buffer), readCertificateList(buffer));
                    } else {
                        throw new IOException("expected \"\" but was \"" + readUtf8LineStrict + "\"");
                    }
                } else {
                    this.handshake = null;
                }
            } finally {
                source.close();
            }
        }

        private boolean isHttps() {
            return this.url.startsWith("https://");
        }

        private List<Certificate> readCertificateList(BufferedSource bufferedSource) throws IOException {
            int readInt = Cache.readInt(bufferedSource);
            if (readInt == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(readInt);
                for (int i9 = 0; i9 < readInt; i9++) {
                    String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
                    Buffer buffer = new Buffer();
                    buffer.write(ByteString.decodeBase64(readUtf8LineStrict));
                    arrayList.add(certificateFactory.generateCertificate(buffer.inputStream()));
                }
                return arrayList;
            } catch (CertificateException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        private void writeCertList(BufferedSink bufferedSink, List<Certificate> list) throws IOException {
            try {
                bufferedSink.writeDecimalLong(list.size());
                bufferedSink.writeByte(10);
                int size = list.size();
                for (int i9 = 0; i9 < size; i9++) {
                    bufferedSink.writeUtf8(ByteString.of(list.get(i9).getEncoded()).base64());
                    bufferedSink.writeByte(10);
                }
            } catch (CertificateEncodingException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public boolean matches(Request request, Response response) {
            return this.url.equals(request.urlString()) && this.requestMethod.equals(request.method()) && qe.i.q(response, this.varyHeaders, request);
        }

        public Response response(Request request, b.g gVar) {
            String str = this.responseHeaders.get("Content-Type");
            String str2 = this.responseHeaders.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(gVar, str, str2)).handshake(this.handshake).build();
        }

        public void writeTo(b.e eVar) throws IOException {
            BufferedSink buffer = Okio.buffer(eVar.f(0));
            buffer.writeUtf8(this.url);
            buffer.writeByte(10);
            buffer.writeUtf8(this.requestMethod);
            buffer.writeByte(10);
            buffer.writeDecimalLong(this.varyHeaders.size());
            buffer.writeByte(10);
            int size = this.varyHeaders.size();
            for (int i9 = 0; i9 < size; i9++) {
                buffer.writeUtf8(this.varyHeaders.name(i9));
                buffer.writeUtf8(": ");
                buffer.writeUtf8(this.varyHeaders.value(i9));
                buffer.writeByte(10);
            }
            buffer.writeUtf8(new n(this.protocol, this.code, this.message).toString());
            buffer.writeByte(10);
            buffer.writeDecimalLong(this.responseHeaders.size());
            buffer.writeByte(10);
            int size2 = this.responseHeaders.size();
            for (int i10 = 0; i10 < size2; i10++) {
                buffer.writeUtf8(this.responseHeaders.name(i10));
                buffer.writeUtf8(": ");
                buffer.writeUtf8(this.responseHeaders.value(i10));
                buffer.writeByte(10);
            }
            if (isHttps()) {
                buffer.writeByte(10);
                buffer.writeUtf8(this.handshake.cipherSuite());
                buffer.writeByte(10);
                writeCertList(buffer, this.handshake.peerCertificates());
                writeCertList(buffer, this.handshake.localCertificates());
            }
            buffer.close();
        }

        public Entry(Response response) {
            this.url = response.request().urlString();
            this.varyHeaders = qe.i.p(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
        }
    }
}
