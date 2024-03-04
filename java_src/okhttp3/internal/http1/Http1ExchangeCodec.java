package okhttp3.internal.http1;

import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 ?2\u00020\u0001:\u0007<=>?@ABB'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020\u001cH\u0016J\b\u0010&\u001a\u00020\u001cH\u0016J\b\u0010'\u001a\u00020\u001eH\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\u0010\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020!H\u0002J\b\u0010.\u001a\u00020\u001eH\u0002J\b\u0010/\u001a\u00020)H\u0002J\u0010\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020\u0019H\u0016J\u0012\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u00020\u0010H\u0016J\u0010\u00105\u001a\u00020!2\u0006\u00101\u001a\u00020\u0019H\u0016J\u000e\u00106\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\u0019J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u00107\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u00152\u0006\u00109\u001a\u00020:J\u0010\u0010;\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0017H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0011R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0016\u001a\u00020\u0010*\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018R\u0018\u0010\u0016\u001a\u00020\u0010*\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u001a¨\u0006C"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "client", "Lokhttp3/OkHttpClient;", "connection", "Lokhttp3/internal/connection/RealConnection;", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "sink", "Lokio/BufferedSink;", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V", "getConnection", "()Lokhttp3/internal/connection/RealConnection;", "headersReader", "Lokhttp3/internal/http1/HeadersReader;", "isClosed", "", "()Z", ServerProtocol.DIALOG_PARAM_STATE, "", "trailers", "Lokhttp3/Headers;", "isChunked", "Lokhttp3/Request;", "(Lokhttp3/Request;)Z", "Lokhttp3/Response;", "(Lokhttp3/Response;)Z", "cancel", "", "createRequestBody", "Lokio/Sink;", "request", "contentLength", "", "detachTimeout", "timeout", "Lokio/ForwardingTimeout;", "finishRequest", "flushRequest", "newChunkedSink", "newChunkedSource", "Lokio/Source;", "url", "Lokhttp3/HttpUrl;", "newFixedLengthSource", "length", "newKnownLengthSink", "newUnknownLengthSource", "openResponseBodySource", "response", "readResponseHeaders", "Lokhttp3/Response$Builder;", "expectContinue", "reportedContentLength", "skipConnectBody", "writeRequest", "headers", "requestLine", "", "writeRequestHeaders", "AbstractSource", "ChunkedSink", "ChunkedSource", "Companion", "FixedLengthSource", "KnownLengthSink", "UnknownLengthSource", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long NO_CHUNK_YET = -1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    @Nullable
    private final OkHttpClient client;
    @NotNull
    private final RealConnection connection;
    @NotNull
    private final HeadersReader headersReader;
    @NotNull
    private final BufferedSink sink;
    @NotNull
    private final BufferedSource source;
    private int state;
    @Nullable
    private Headers trailers;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b¢\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\t\u001a\u00020\u0014H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokio/Source;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "closed", "", "getClosed", "()Z", "setClosed", "(Z)V", "timeout", "Lokio/ForwardingTimeout;", "getTimeout", "()Lokio/ForwardingTimeout;", "read", "", "sink", "Lokio/Buffer;", "byteCount", "responseBodyComplete", "", "Lokio/Timeout;", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public abstract class AbstractSource implements Source {
        private boolean closed;
        final /* synthetic */ Http1ExchangeCodec this$0;
        @NotNull
        private final ForwardingTimeout timeout;

        public AbstractSource(Http1ExchangeCodec this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            this.timeout = new ForwardingTimeout(this$0.source.timeout());
        }

        protected final boolean getClosed() {
            return this.closed;
        }

        @NotNull
        protected final ForwardingTimeout getTimeout() {
            return this.timeout;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            try {
                return this.this$0.source.read(sink, j10);
            } catch (IOException e10) {
                this.this$0.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
                throw e10;
            }
        }

        public final void responseBodyComplete() {
            if (this.this$0.state == 6) {
                return;
            }
            if (this.this$0.state == 5) {
                this.this$0.detachTimeout(this.timeout);
                this.this$0.state = 6;
                return;
            }
            throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(this.this$0.state)));
        }

        protected final void setClosed(boolean z10) {
            this.closed = z10;
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.timeout;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0005\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;", "Lokio/Sink;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "closed", "", "timeout", "Lokio/ForwardingTimeout;", "close", "", "flush", "Lokio/Timeout;", "write", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Buffer;", "byteCount", "", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class ChunkedSink implements Sink {
        private boolean closed;
        final /* synthetic */ Http1ExchangeCodec this$0;
        @NotNull
        private final ForwardingTimeout timeout;

        public ChunkedSink(Http1ExchangeCodec this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            this.timeout = new ForwardingTimeout(this$0.sink.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            this.this$0.sink.writeUtf8("0\r\n\r\n");
            this.this$0.detachTimeout(this.timeout);
            this.this$0.state = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() {
            if (this.closed) {
                return;
            }
            this.this$0.sink.flush();
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j10) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            if (j10 == 0) {
                return;
            }
            this.this$0.sink.writeHexadecimalUnsignedLong(j10);
            this.this$0.sink.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            this.this$0.sink.write(source, j10);
            this.this$0.sink.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0016J\b\u0010\u0010\u001a\u00020\u000bH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "url", "Lokhttp3/HttpUrl;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", "bytesRemainingInChunk", "", "hasMoreChunks", "", "close", "", "read", "sink", "Lokio/Buffer;", "byteCount", "readChunkSize", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class ChunkedSource extends AbstractSource {
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        final /* synthetic */ Http1ExchangeCodec this$0;
        @NotNull
        private final HttpUrl url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(@NotNull Http1ExchangeCodec this$0, HttpUrl url) {
            super(this$0);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(url, "url");
            this.this$0 = this$0;
            this.url = url;
            this.bytesRemainingInChunk = -1L;
            this.hasMoreChunks = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
            if (r1 != false) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void readChunkSize() {
            /*
                r7 = this;
                long r0 = r7.bytesRemainingInChunk
                r2 = -1
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r4 == 0) goto L11
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.this$0
                okio.BufferedSource r0 = okhttp3.internal.http1.Http1ExchangeCodec.access$getSource$p(r0)
                r0.readUtf8LineStrict()
            L11:
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.this$0     // Catch: java.lang.NumberFormatException -> La2
                okio.BufferedSource r0 = okhttp3.internal.http1.Http1ExchangeCodec.access$getSource$p(r0)     // Catch: java.lang.NumberFormatException -> La2
                long r0 = r0.readHexadecimalUnsignedLong()     // Catch: java.lang.NumberFormatException -> La2
                r7.bytesRemainingInChunk = r0     // Catch: java.lang.NumberFormatException -> La2
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.this$0     // Catch: java.lang.NumberFormatException -> La2
                okio.BufferedSource r0 = okhttp3.internal.http1.Http1ExchangeCodec.access$getSource$p(r0)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r0 = r0.readUtf8LineStrict()     // Catch: java.lang.NumberFormatException -> La2
                java.lang.CharSequence r0 = kotlin.text.StringsKt.trim(r0)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r0 = r0.toString()     // Catch: java.lang.NumberFormatException -> La2
                long r1 = r7.bytesRemainingInChunk     // Catch: java.lang.NumberFormatException -> La2
                r3 = 0
                int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r5 < 0) goto L81
                int r1 = r0.length()     // Catch: java.lang.NumberFormatException -> La2
                r2 = 0
                if (r1 <= 0) goto L40
                r1 = 1
                goto L41
            L40:
                r1 = 0
            L41:
                if (r1 == 0) goto L4d
                java.lang.String r1 = ";"
                r5 = 2
                r6 = 0
                boolean r1 = kotlin.text.StringsKt.startsWith$default(r0, r1, r2, r5, r6)     // Catch: java.lang.NumberFormatException -> La2
                if (r1 == 0) goto L81
            L4d:
                long r0 = r7.bytesRemainingInChunk
                int r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                if (r5 != 0) goto L80
                r7.hasMoreChunks = r2
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.this$0
                okhttp3.internal.http1.HeadersReader r1 = okhttp3.internal.http1.Http1ExchangeCodec.access$getHeadersReader$p(r0)
                okhttp3.Headers r1 = r1.readHeaders()
                okhttp3.internal.http1.Http1ExchangeCodec.access$setTrailers$p(r0, r1)
                okhttp3.internal.http1.Http1ExchangeCodec r0 = r7.this$0
                okhttp3.OkHttpClient r0 = okhttp3.internal.http1.Http1ExchangeCodec.access$getClient$p(r0)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
                okhttp3.CookieJar r0 = r0.cookieJar()
                okhttp3.HttpUrl r1 = r7.url
                okhttp3.internal.http1.Http1ExchangeCodec r2 = r7.this$0
                okhttp3.Headers r2 = okhttp3.internal.http1.Http1ExchangeCodec.access$getTrailers$p(r2)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
                okhttp3.internal.http.HttpHeaders.receiveHeaders(r0, r1, r2)
                r7.responseBodyComplete()
            L80:
                return
            L81:
                java.net.ProtocolException r1 = new java.net.ProtocolException     // Catch: java.lang.NumberFormatException -> La2
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La2
                r2.<init>()     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r3 = "expected chunk size and optional extensions but was \""
                r2.append(r3)     // Catch: java.lang.NumberFormatException -> La2
                long r3 = r7.bytesRemainingInChunk     // Catch: java.lang.NumberFormatException -> La2
                r2.append(r3)     // Catch: java.lang.NumberFormatException -> La2
                r2.append(r0)     // Catch: java.lang.NumberFormatException -> La2
                r0 = 34
                r2.append(r0)     // Catch: java.lang.NumberFormatException -> La2
                java.lang.String r0 = r2.toString()     // Catch: java.lang.NumberFormatException -> La2
                r1.<init>(r0)     // Catch: java.lang.NumberFormatException -> La2
                throw r1     // Catch: java.lang.NumberFormatException -> La2
            La2:
                r0 = move-exception
                java.net.ProtocolException r1 = new java.net.ProtocolException
                java.lang.String r0 = r0.getMessage()
                r1.<init>(r0)
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http1.Http1ExchangeCodec.ChunkedSource.readChunkSize():void");
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.this$0.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j10 >= 0) {
                if (true ^ getClosed()) {
                    if (this.hasMoreChunks) {
                        long j11 = this.bytesRemainingInChunk;
                        if (j11 == 0 || j11 == -1) {
                            readChunkSize();
                            if (!this.hasMoreChunks) {
                                return -1L;
                            }
                        }
                        long read = super.read(sink, Math.min(j10, this.bytesRemainingInChunk));
                        if (read != -1) {
                            this.bytesRemainingInChunk -= read;
                            return read;
                        }
                        this.this$0.getConnection().noNewExchanges$okhttp();
                        ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                        responseBodyComplete();
                        throw protocolException;
                    }
                    return -1L;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j10)).toString());
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;", "", "()V", "NO_CHUNK_YET", "", "STATE_CLOSED", "", "STATE_IDLE", "STATE_OPEN_REQUEST_BODY", "STATE_OPEN_RESPONSE_BODY", "STATE_READING_RESPONSE_BODY", "STATE_READ_RESPONSE_HEADERS", "STATE_WRITING_REQUEST_BODY", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "bytesRemaining", "", "(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V", "close", "", "read", "sink", "Lokio/Buffer;", "byteCount", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;
        final /* synthetic */ Http1ExchangeCodec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FixedLengthSource(Http1ExchangeCodec this$0, long j10) {
            super(this$0);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            this.bytesRemaining = j10;
            if (j10 == 0) {
                responseBodyComplete();
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.this$0.getConnection().noNewExchanges$okhttp();
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j10 >= 0) {
                if (true ^ getClosed()) {
                    long j11 = this.bytesRemaining;
                    if (j11 == 0) {
                        return -1L;
                    }
                    long read = super.read(sink, Math.min(j11, j10));
                    if (read != -1) {
                        long j12 = this.bytesRemaining - read;
                        this.bytesRemaining = j12;
                        if (j12 == 0) {
                            responseBodyComplete();
                        }
                        return read;
                    }
                    this.this$0.getConnection().noNewExchanges$okhttp();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    responseBodyComplete();
                    throw protocolException;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j10)).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0005\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;", "Lokio/Sink;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "closed", "", "timeout", "Lokio/ForwardingTimeout;", "close", "", "flush", "Lokio/Timeout;", "write", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Buffer;", "byteCount", "", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class KnownLengthSink implements Sink {
        private boolean closed;
        final /* synthetic */ Http1ExchangeCodec this$0;
        @NotNull
        private final ForwardingTimeout timeout;

        public KnownLengthSink(Http1ExchangeCodec this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            this.timeout = new ForwardingTimeout(this$0.sink.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            this.this$0.detachTimeout(this.timeout);
            this.this$0.state = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (this.closed) {
                return;
            }
            this.this$0.sink.flush();
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j10) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.closed) {
                Util.checkOffsetAndCount(source.size(), 0L, j10);
                this.this$0.sink.write(source, j10);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "inputExhausted", "", "close", "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;
        final /* synthetic */ Http1ExchangeCodec this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnknownLengthSource(Http1ExchangeCodec this$0) {
            super(this$0);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (getClosed()) {
                return;
            }
            if (!this.inputExhausted) {
                responseBodyComplete();
            }
            setClosed(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j10 >= 0) {
                if (!getClosed()) {
                    if (this.inputExhausted) {
                        return -1L;
                    }
                    long read = super.read(sink, j10);
                    if (read == -1) {
                        this.inputExhausted = true;
                        responseBodyComplete();
                        return -1L;
                    }
                    return read;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j10)).toString());
        }
    }

    public Http1ExchangeCodec(@Nullable OkHttpClient okHttpClient, @NotNull RealConnection connection, @NotNull BufferedSource source, @NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.client = okHttpClient;
        this.connection = connection;
        this.source = source;
        this.sink = sink;
        this.headersReader = new HeadersReader(source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void detachTimeout(ForwardingTimeout forwardingTimeout) {
        Timeout delegate = forwardingTimeout.delegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    private final boolean isChunked(Response response) {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals("chunked", Response.header$default(response, "Transfer-Encoding", null, 2, null), true);
        return equals;
    }

    private final Sink newChunkedSink() {
        int i9 = this.state;
        if (i9 == 1) {
            this.state = 2;
            return new ChunkedSink(this);
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i9)).toString());
    }

    private final Source newChunkedSource(HttpUrl httpUrl) {
        int i9 = this.state;
        if (i9 == 4) {
            this.state = 5;
            return new ChunkedSource(this, httpUrl);
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i9)).toString());
    }

    private final Source newFixedLengthSource(long j10) {
        int i9 = this.state;
        if (i9 == 4) {
            this.state = 5;
            return new FixedLengthSource(this, j10);
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i9)).toString());
    }

    private final Sink newKnownLengthSink() {
        int i9 = this.state;
        if (i9 == 1) {
            this.state = 2;
            return new KnownLengthSink(this);
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i9)).toString());
    }

    private final Source newUnknownLengthSource() {
        int i9 = this.state;
        if (i9 == 4) {
            this.state = 5;
            getConnection().noNewExchanges$okhttp();
            return new UnknownLengthSource(this);
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i9)).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getConnection().cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Sink createRequestBody(@NotNull Request request, long j10) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (request.body() == null || !request.body().isDuplex()) {
            if (isChunked(request)) {
                return newChunkedSink();
            }
            if (j10 != -1) {
                return newKnownLengthSink();
            }
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        throw new ProtocolException("Duplex connections are not supported for HTTP/1");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        this.sink.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public RealConnection getConnection() {
        return this.connection;
    }

    public final boolean isClosed() {
        return this.state == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Source openResponseBodySource(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (HttpHeaders.promisesBody(response)) {
            if (isChunked(response)) {
                return newChunkedSource(response.request().url());
            }
            long headersContentLength = Util.headersContentLength(response);
            if (headersContentLength != -1) {
                return newFixedLengthSource(headersContentLength);
            }
            return newUnknownLengthSource();
        }
        return newFixedLengthSource(0L);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @Nullable
    public Response.Builder readResponseHeaders(boolean z10) {
        int i9 = this.state;
        boolean z11 = true;
        if (i9 != 1 && i9 != 3) {
            z11 = false;
        }
        if (z11) {
            try {
                StatusLine parse = StatusLine.Companion.parse(this.headersReader.readLine());
                Response.Builder headers = new Response.Builder().protocol(parse.protocol).code(parse.code).message(parse.message).headers(this.headersReader.readHeaders());
                if (z10 && parse.code == 100) {
                    return null;
                }
                if (parse.code == 100) {
                    this.state = 3;
                    return headers;
                }
                this.state = 4;
                return headers;
            } catch (EOFException e10) {
                throw new IOException(Intrinsics.stringPlus("unexpected end of stream on ", getConnection().route().address().url().redact()), e10);
            }
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i9)).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (HttpHeaders.promisesBody(response)) {
            if (isChunked(response)) {
                return -1L;
            }
            return Util.headersContentLength(response);
        }
        return 0L;
    }

    public final void skipConnectBody(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        long headersContentLength = Util.headersContentLength(response);
        if (headersContentLength == -1) {
            return;
        }
        Source newFixedLengthSource = newFixedLengthSource(headersContentLength);
        Util.skipAll(newFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        newFixedLengthSource.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Headers trailers() {
        if (this.state == 6) {
            Headers headers = this.trailers;
            return headers == null ? Util.EMPTY_HEADERS : headers;
        }
        throw new IllegalStateException("too early; can't read the trailers yet".toString());
    }

    public final void writeRequest(@NotNull Headers headers, @NotNull String requestLine) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(requestLine, "requestLine");
        int i9 = this.state;
        if (i9 == 0) {
            this.sink.writeUtf8(requestLine).writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.sink.writeUtf8(headers.name(i10)).writeUtf8(": ").writeUtf8(headers.value(i10)).writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            this.sink.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            this.state = 1;
            return;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("state: ", Integer.valueOf(i9)).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        RequestLine requestLine = RequestLine.INSTANCE;
        Proxy.Type type = getConnection().route().proxy().type();
        Intrinsics.checkNotNullExpressionValue(type, "connection.route().proxy.type()");
        writeRequest(request.headers(), requestLine.get(request, type));
    }

    private final boolean isChunked(Request request) {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals("chunked", request.header("Transfer-Encoding"), true);
        return equals;
    }
}
