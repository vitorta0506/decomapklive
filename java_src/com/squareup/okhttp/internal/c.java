package com.squareup.okhttp.internal;

import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;
/* loaded from: classes4.dex */
class c extends ForwardingSink {

    /* renamed from: a  reason: collision with root package name */
    private boolean f29665a;

    public c(Sink sink) {
        super(sink);
    }

    protected void a(IOException iOException) {
        throw null;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f29665a) {
            return;
        }
        try {
            super.close();
        } catch (IOException e10) {
            this.f29665a = true;
            a(e10);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        if (this.f29665a) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e10) {
            this.f29665a = true;
            a(e10);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        if (this.f29665a) {
            buffer.skip(j10);
            return;
        }
        try {
            super.write(buffer, j10);
        } catch (IOException e10) {
            this.f29665a = true;
            a(e10);
        }
    }
}
