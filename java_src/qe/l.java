package qe;

import java.io.IOException;
import java.net.ProtocolException;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;
/* loaded from: classes4.dex */
public final class l implements Sink {

    /* renamed from: a  reason: collision with root package name */
    private boolean f57283a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57284b;

    /* renamed from: c  reason: collision with root package name */
    private final Buffer f57285c;

    public l(int i9) {
        this.f57285c = new Buffer();
        this.f57284b = i9;
    }

    public long a() throws IOException {
        return this.f57285c.size();
    }

    public void b(Sink sink) throws IOException {
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.f57285c;
        buffer2.copyTo(buffer, 0L, buffer2.size());
        sink.write(buffer, buffer.size());
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f57283a) {
            return;
        }
        this.f57283a = true;
        if (this.f57285c.size() >= this.f57284b) {
            return;
        }
        throw new ProtocolException("content-length promised " + this.f57284b + " bytes, but received " + this.f57285c.size());
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        if (!this.f57283a) {
            com.squareup.okhttp.internal.i.a(buffer.size(), 0L, j10);
            if (this.f57284b != -1 && this.f57285c.size() > this.f57284b - j10) {
                throw new ProtocolException("exceeded content-length limit of " + this.f57284b + " bytes");
            }
            this.f57285c.write(buffer, j10);
            return;
        }
        throw new IllegalStateException("closed");
    }

    public l() {
        this(-1);
    }
}
