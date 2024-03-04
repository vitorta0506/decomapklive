package com.squareup.okhttp.internal.framed;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    long f29736b;

    /* renamed from: c  reason: collision with root package name */
    private final int f29737c;

    /* renamed from: d  reason: collision with root package name */
    private final com.squareup.okhttp.internal.framed.a f29738d;

    /* renamed from: e  reason: collision with root package name */
    private final List<com.squareup.okhttp.internal.framed.c> f29739e;

    /* renamed from: f  reason: collision with root package name */
    private List<com.squareup.okhttp.internal.framed.c> f29740f;

    /* renamed from: g  reason: collision with root package name */
    private final c f29741g;

    /* renamed from: h  reason: collision with root package name */
    final C0296b f29742h;

    /* renamed from: a  reason: collision with root package name */
    long f29735a = 0;

    /* renamed from: i  reason: collision with root package name */
    private final d f29743i = new d();

    /* renamed from: j  reason: collision with root package name */
    private final d f29744j = new d();

    /* renamed from: k  reason: collision with root package name */
    private ErrorCode f29745k = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.framed.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public final class C0296b implements Sink {

        /* renamed from: a  reason: collision with root package name */
        private final Buffer f29746a = new Buffer();

        /* renamed from: b  reason: collision with root package name */
        private boolean f29747b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f29748c;

        C0296b() {
        }

        private void d(boolean z10) throws IOException {
            long min;
            b bVar;
            synchronized (b.this) {
                b.this.f29744j.enter();
                while (true) {
                    b bVar2 = b.this;
                    if (bVar2.f29736b > 0 || this.f29748c || this.f29747b || bVar2.f29745k != null) {
                        break;
                    }
                    b.this.z();
                }
                b.this.f29744j.exitAndThrowIfTimedOut();
                b.this.k();
                min = Math.min(b.this.f29736b, this.f29746a.size());
                bVar = b.this;
                bVar.f29736b -= min;
            }
            bVar.f29744j.enter();
            try {
                b.this.f29738d.h0(b.this.f29737c, z10 && min == this.f29746a.size(), this.f29746a, min);
            } finally {
                b.this.f29744j.exitAndThrowIfTimedOut();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (b.this) {
                if (this.f29747b) {
                    return;
                }
                if (!b.this.f29742h.f29748c) {
                    if (this.f29746a.size() > 0) {
                        while (this.f29746a.size() > 0) {
                            d(true);
                        }
                    } else {
                        b.this.f29738d.h0(b.this.f29737c, true, null, 0L);
                    }
                }
                synchronized (b.this) {
                    this.f29747b = true;
                }
                b.this.f29738d.flush();
                b.this.j();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            synchronized (b.this) {
                b.this.k();
            }
            while (this.f29746a.size() > 0) {
                d(false);
                b.this.f29738d.flush();
            }
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return b.this.f29744j;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j10) throws IOException {
            this.f29746a.write(buffer, j10);
            while (this.f29746a.size() >= 16384) {
                d(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class c implements Source {

        /* renamed from: a  reason: collision with root package name */
        private final Buffer f29750a;

        /* renamed from: b  reason: collision with root package name */
        private final Buffer f29751b;

        /* renamed from: c  reason: collision with root package name */
        private final long f29752c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f29753d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f29754e;

        private void e() throws IOException {
            if (!this.f29753d) {
                if (b.this.f29745k == null) {
                    return;
                }
                throw new IOException("stream was reset: " + b.this.f29745k);
            }
            throw new IOException("stream closed");
        }

        private void j() throws IOException {
            b.this.f29743i.enter();
            while (this.f29751b.size() == 0 && !this.f29754e && !this.f29753d && b.this.f29745k == null) {
                try {
                    b.this.z();
                } finally {
                    b.this.f29743i.exitAndThrowIfTimedOut();
                }
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (b.this) {
                this.f29753d = true;
                this.f29751b.clear();
                b.this.notifyAll();
            }
            b.this.j();
        }

        void h(BufferedSource bufferedSource, long j10) throws IOException {
            boolean z10;
            boolean z11;
            boolean z12;
            while (j10 > 0) {
                synchronized (b.this) {
                    z10 = this.f29754e;
                    z11 = true;
                    z12 = this.f29751b.size() + j10 > this.f29752c;
                }
                if (z12) {
                    bufferedSource.skip(j10);
                    b.this.n(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                } else if (z10) {
                    bufferedSource.skip(j10);
                    return;
                } else {
                    long read = bufferedSource.read(this.f29750a, j10);
                    if (read != -1) {
                        j10 -= read;
                        synchronized (b.this) {
                            if (this.f29751b.size() != 0) {
                                z11 = false;
                            }
                            this.f29751b.writeAll(this.f29750a);
                            if (z11) {
                                b.this.notifyAll();
                            }
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            if (j10 >= 0) {
                synchronized (b.this) {
                    j();
                    e();
                    if (this.f29751b.size() == 0) {
                        return -1L;
                    }
                    Buffer buffer2 = this.f29751b;
                    long read = buffer2.read(buffer, Math.min(j10, buffer2.size()));
                    b bVar = b.this;
                    long j11 = bVar.f29735a + read;
                    bVar.f29735a = j11;
                    if (j11 >= bVar.f29738d.f29685p.e(65536) / 2) {
                        b.this.f29738d.r0(b.this.f29737c, b.this.f29735a);
                        b.this.f29735a = 0L;
                    }
                    synchronized (b.this.f29738d) {
                        b.this.f29738d.f29683n += read;
                        if (b.this.f29738d.f29683n >= b.this.f29738d.f29685p.e(65536) / 2) {
                            b.this.f29738d.r0(0, b.this.f29738d.f29683n);
                            b.this.f29738d.f29683n = 0L;
                        }
                    }
                    return read;
                }
            }
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }

        @Override // okio.Source
        public Timeout timeout() {
            return b.this.f29743i;
        }

        private c(long j10) {
            this.f29750a = new Buffer();
            this.f29751b = new Buffer();
            this.f29752c = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends AsyncTimeout {
        d() {
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // okio.AsyncTimeout
        protected IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.AsyncTimeout
        protected void timedOut() {
            b.this.n(ErrorCode.CANCEL);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i9, com.squareup.okhttp.internal.framed.a aVar, boolean z10, boolean z11, List<com.squareup.okhttp.internal.framed.c> list) {
        Objects.requireNonNull(aVar, "connection == null");
        Objects.requireNonNull(list, "requestHeaders == null");
        this.f29737c = i9;
        this.f29738d = aVar;
        this.f29736b = aVar.f29686q.e(65536);
        c cVar = new c(aVar.f29685p.e(65536));
        this.f29741g = cVar;
        C0296b c0296b = new C0296b();
        this.f29742h = c0296b;
        cVar.f29754e = z11;
        c0296b.f29748c = z10;
        this.f29739e = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() throws IOException {
        boolean z10;
        boolean t10;
        synchronized (this) {
            z10 = !this.f29741g.f29754e && this.f29741g.f29753d && (this.f29742h.f29748c || this.f29742h.f29747b);
            t10 = t();
        }
        if (z10) {
            l(ErrorCode.CANCEL);
        } else if (t10) {
        } else {
            this.f29738d.c0(this.f29737c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws IOException {
        if (!this.f29742h.f29747b) {
            if (!this.f29742h.f29748c) {
                if (this.f29745k == null) {
                    return;
                }
                throw new IOException("stream was reset: " + this.f29745k);
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    private boolean m(ErrorCode errorCode) {
        synchronized (this) {
            if (this.f29745k != null) {
                return false;
            }
            if (this.f29741g.f29754e && this.f29742h.f29748c) {
                return false;
            }
            this.f29745k = errorCode;
            notifyAll();
            this.f29738d.c0(this.f29737c);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public Timeout A() {
        return this.f29744j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(long j10) {
        this.f29736b += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    public void l(ErrorCode errorCode) throws IOException {
        if (m(errorCode)) {
            this.f29738d.l0(this.f29737c, errorCode);
        }
    }

    public void n(ErrorCode errorCode) {
        if (m(errorCode)) {
            this.f29738d.p0(this.f29737c, errorCode);
        }
    }

    public int o() {
        return this.f29737c;
    }

    public synchronized List<com.squareup.okhttp.internal.framed.c> p() throws IOException {
        List<com.squareup.okhttp.internal.framed.c> list;
        this.f29743i.enter();
        while (this.f29740f == null && this.f29745k == null) {
            z();
        }
        this.f29743i.exitAndThrowIfTimedOut();
        list = this.f29740f;
        if (list == null) {
            throw new IOException("stream was reset: " + this.f29745k);
        }
        return list;
    }

    public Sink q() {
        synchronized (this) {
            if (this.f29740f == null && !s()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f29742h;
    }

    public Source r() {
        return this.f29741g;
    }

    public boolean s() {
        return this.f29738d.f29671b == ((this.f29737c & 1) == 1);
    }

    public synchronized boolean t() {
        if (this.f29745k != null) {
            return false;
        }
        if ((this.f29741g.f29754e || this.f29741g.f29753d) && (this.f29742h.f29748c || this.f29742h.f29747b)) {
            if (this.f29740f != null) {
                return false;
            }
        }
        return true;
    }

    public Timeout u() {
        return this.f29743i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(BufferedSource bufferedSource, int i9) throws IOException {
        this.f29741g.h(bufferedSource, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w() {
        boolean t10;
        synchronized (this) {
            this.f29741g.f29754e = true;
            t10 = t();
            notifyAll();
        }
        if (t10) {
            return;
        }
        this.f29738d.c0(this.f29737c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(List<com.squareup.okhttp.internal.framed.c> list, HeadersMode headersMode) {
        ErrorCode errorCode = null;
        boolean z10 = true;
        synchronized (this) {
            if (this.f29740f == null) {
                if (headersMode.failIfHeadersAbsent()) {
                    errorCode = ErrorCode.PROTOCOL_ERROR;
                } else {
                    this.f29740f = list;
                    z10 = t();
                    notifyAll();
                }
            } else if (headersMode.failIfHeadersPresent()) {
                errorCode = ErrorCode.STREAM_IN_USE;
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.f29740f);
                arrayList.addAll(list);
                this.f29740f = arrayList;
            }
        }
        if (errorCode != null) {
            n(errorCode);
        } else if (z10) {
        } else {
            this.f29738d.c0(this.f29737c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void y(ErrorCode errorCode) {
        if (this.f29745k == null) {
            this.f29745k = errorCode;
            notifyAll();
        }
    }
}
