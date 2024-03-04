package qe;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.http.HttpStream;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class d implements HttpStream {

    /* renamed from: a  reason: collision with root package name */
    private final o f57204a;

    /* renamed from: b  reason: collision with root package name */
    private final BufferedSource f57205b;

    /* renamed from: c  reason: collision with root package name */
    private final BufferedSink f57206c;

    /* renamed from: d  reason: collision with root package name */
    private qe.g f57207d;

    /* renamed from: e  reason: collision with root package name */
    private int f57208e = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public abstract class b implements Source {

        /* renamed from: a  reason: collision with root package name */
        protected final ForwardingTimeout f57209a;

        /* renamed from: b  reason: collision with root package name */
        protected boolean f57210b;

        private b() {
            this.f57209a = new ForwardingTimeout(d.this.f57205b.timeout());
        }

        protected final void a() throws IOException {
            if (d.this.f57208e == 5) {
                d.this.g(this.f57209a);
                d.this.f57208e = 6;
                if (d.this.f57204a != null) {
                    d.this.f57204a.r(d.this);
                    return;
                }
                return;
            }
            throw new IllegalStateException("state: " + d.this.f57208e);
        }

        protected final void c() {
            if (d.this.f57208e == 6) {
                return;
            }
            d.this.f57208e = 6;
            if (d.this.f57204a != null) {
                d.this.f57204a.l();
                d.this.f57204a.r(d.this);
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.f57209a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class c implements Sink {

        /* renamed from: a  reason: collision with root package name */
        private final ForwardingTimeout f57212a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f57213b;

        private c() {
            this.f57212a = new ForwardingTimeout(d.this.f57206c.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.f57213b) {
                return;
            }
            this.f57213b = true;
            d.this.f57206c.writeUtf8("0\r\n\r\n");
            d.this.g(this.f57212a);
            d.this.f57208e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.f57213b) {
                return;
            }
            d.this.f57206c.flush();
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.f57212a;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j10) throws IOException {
            if (this.f57213b) {
                throw new IllegalStateException("closed");
            }
            if (j10 == 0) {
                return;
            }
            d.this.f57206c.writeHexadecimalUnsignedLong(j10);
            d.this.f57206c.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            d.this.f57206c.write(buffer, j10);
            d.this.f57206c.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: qe.d$d  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0625d extends b {

        /* renamed from: d  reason: collision with root package name */
        private long f57215d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f57216e;

        /* renamed from: f  reason: collision with root package name */
        private final qe.g f57217f;

        C0625d(qe.g gVar) throws IOException {
            super();
            this.f57215d = -1L;
            this.f57216e = true;
            this.f57217f = gVar;
        }

        private void e() throws IOException {
            if (this.f57215d != -1) {
                d.this.f57205b.readUtf8LineStrict();
            }
            try {
                this.f57215d = d.this.f57205b.readHexadecimalUnsignedLong();
                String trim = d.this.f57205b.readUtf8LineStrict().trim();
                if (this.f57215d >= 0 && (trim.isEmpty() || trim.startsWith(";"))) {
                    if (this.f57215d == 0) {
                        this.f57216e = false;
                        this.f57217f.t(d.this.n());
                        a();
                        return;
                    }
                    return;
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f57215d + trim + "\"");
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f57210b) {
                return;
            }
            if (this.f57216e && !com.squareup.okhttp.internal.i.g(this, 100, TimeUnit.MILLISECONDS)) {
                c();
            }
            this.f57210b = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.f57210b) {
                    if (this.f57216e) {
                        long j11 = this.f57215d;
                        if (j11 == 0 || j11 == -1) {
                            e();
                            if (!this.f57216e) {
                                return -1L;
                            }
                        }
                        long read = d.this.f57205b.read(buffer, Math.min(j10, this.f57215d));
                        if (read != -1) {
                            this.f57215d -= read;
                            return read;
                        }
                        c();
                        throw new ProtocolException("unexpected end of stream");
                    }
                    return -1L;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class e implements Sink {

        /* renamed from: a  reason: collision with root package name */
        private final ForwardingTimeout f57219a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f57220b;

        /* renamed from: c  reason: collision with root package name */
        private long f57221c;

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f57220b) {
                return;
            }
            this.f57220b = true;
            if (this.f57221c <= 0) {
                d.this.g(this.f57219a);
                d.this.f57208e = 3;
                return;
            }
            throw new ProtocolException("unexpected end of stream");
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if (this.f57220b) {
                return;
            }
            d.this.f57206c.flush();
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return this.f57219a;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j10) throws IOException {
            if (!this.f57220b) {
                com.squareup.okhttp.internal.i.a(buffer.size(), 0L, j10);
                if (j10 <= this.f57221c) {
                    d.this.f57206c.write(buffer, j10);
                    this.f57221c -= j10;
                    return;
                }
                throw new ProtocolException("expected " + this.f57221c + " bytes but received " + j10);
            }
            throw new IllegalStateException("closed");
        }

        private e(long j10) {
            this.f57219a = new ForwardingTimeout(d.this.f57206c.timeout());
            this.f57221c = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class f extends b {

        /* renamed from: d  reason: collision with root package name */
        private long f57223d;

        public f(long j10) throws IOException {
            super();
            this.f57223d = j10;
            if (j10 == 0) {
                a();
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f57210b) {
                return;
            }
            if (this.f57223d != 0 && !com.squareup.okhttp.internal.i.g(this, 100, TimeUnit.MILLISECONDS)) {
                c();
            }
            this.f57210b = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.f57210b) {
                    if (this.f57223d == 0) {
                        return -1L;
                    }
                    long read = d.this.f57205b.read(buffer, Math.min(this.f57223d, j10));
                    if (read != -1) {
                        long j11 = this.f57223d - read;
                        this.f57223d = j11;
                        if (j11 == 0) {
                            a();
                        }
                        return read;
                    }
                    c();
                    throw new ProtocolException("unexpected end of stream");
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class g extends b {

        /* renamed from: d  reason: collision with root package name */
        private boolean f57225d;

        private g() {
            super();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f57210b) {
                return;
            }
            if (!this.f57225d) {
                c();
            }
            this.f57210b = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            if (j10 >= 0) {
                if (!this.f57210b) {
                    if (this.f57225d) {
                        return -1L;
                    }
                    long read = d.this.f57205b.read(buffer, j10);
                    if (read == -1) {
                        this.f57225d = true;
                        a();
                        return -1L;
                    }
                    return read;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
    }

    public d(o oVar, BufferedSource bufferedSource, BufferedSink bufferedSink) {
        this.f57204a = oVar;
        this.f57205b = bufferedSource;
        this.f57206c = bufferedSink;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(ForwardingTimeout forwardingTimeout) {
        Timeout delegate = forwardingTimeout.delegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    private Source h(Response response) throws IOException {
        if (!qe.g.n(response)) {
            return l(0L);
        }
        if ("chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) {
            return j(this.f57207d);
        }
        long e10 = i.e(response);
        if (e10 != -1) {
            return l(e10);
        }
        return m();
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void cancel() {
        re.a c10 = this.f57204a.c();
        if (c10 != null) {
            c10.b();
        }
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public Sink createRequestBody(Request request, long j10) throws IOException {
        if ("chunked".equalsIgnoreCase(request.header("Transfer-Encoding"))) {
            return i();
        }
        if (j10 != -1) {
            return k(j10);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void finishRequest() throws IOException {
        this.f57206c.flush();
    }

    public Sink i() {
        if (this.f57208e == 1) {
            this.f57208e = 2;
            return new c();
        }
        throw new IllegalStateException("state: " + this.f57208e);
    }

    public Source j(qe.g gVar) throws IOException {
        if (this.f57208e == 4) {
            this.f57208e = 5;
            return new C0625d(gVar);
        }
        throw new IllegalStateException("state: " + this.f57208e);
    }

    public Sink k(long j10) {
        if (this.f57208e == 1) {
            this.f57208e = 2;
            return new e(j10);
        }
        throw new IllegalStateException("state: " + this.f57208e);
    }

    public Source l(long j10) throws IOException {
        if (this.f57208e == 4) {
            this.f57208e = 5;
            return new f(j10);
        }
        throw new IllegalStateException("state: " + this.f57208e);
    }

    public Source m() throws IOException {
        if (this.f57208e == 4) {
            o oVar = this.f57204a;
            if (oVar != null) {
                this.f57208e = 5;
                oVar.l();
                return new g();
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        throw new IllegalStateException("state: " + this.f57208e);
    }

    public Headers n() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String readUtf8LineStrict = this.f57205b.readUtf8LineStrict();
            if (readUtf8LineStrict.length() != 0) {
                com.squareup.okhttp.internal.d.instance.addLenient(builder, readUtf8LineStrict);
            } else {
                return builder.build();
            }
        }
    }

    public Response.Builder o() throws IOException {
        n a10;
        Response.Builder headers;
        int i9 = this.f57208e;
        if (i9 != 1 && i9 != 3) {
            throw new IllegalStateException("state: " + this.f57208e);
        }
        do {
            try {
                a10 = n.a(this.f57205b.readUtf8LineStrict());
                headers = new Response.Builder().protocol(a10.f57295a).code(a10.f57296b).message(a10.f57297c).headers(n());
            } catch (EOFException e10) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f57204a);
                iOException.initCause(e10);
                throw iOException;
            }
        } while (a10.f57296b == 100);
        this.f57208e = 4;
        return headers;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public ResponseBody openResponseBody(Response response) throws IOException {
        return new j(response.headers(), Okio.buffer(h(response)));
    }

    public void p(Headers headers, String str) throws IOException {
        if (this.f57208e == 0) {
            this.f57206c.writeUtf8(str).writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            int size = headers.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.f57206c.writeUtf8(headers.name(i9)).writeUtf8(": ").writeUtf8(headers.value(i9)).writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            this.f57206c.writeUtf8(IOUtils.LINE_SEPARATOR_WINDOWS);
            this.f57208e = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f57208e);
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public Response.Builder readResponseHeaders() throws IOException {
        return o();
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void setHttpEngine(qe.g gVar) {
        this.f57207d = gVar;
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void writeRequestBody(l lVar) throws IOException {
        if (this.f57208e == 1) {
            this.f57208e = 3;
            lVar.b(this.f57206c);
            return;
        }
        throw new IllegalStateException("state: " + this.f57208e);
    }

    @Override // com.squareup.okhttp.internal.http.HttpStream
    public void writeRequestHeaders(Request request) throws IOException {
        this.f57207d.C();
        p(request.headers(), k.a(request, this.f57207d.k().getRoute().getProxy().type()));
    }
}
