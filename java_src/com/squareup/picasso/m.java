package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4.dex */
final class m extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f29968a;

    /* renamed from: b  reason: collision with root package name */
    private long f29969b;

    /* renamed from: c  reason: collision with root package name */
    private long f29970c;

    /* renamed from: d  reason: collision with root package name */
    private long f29971d;

    /* renamed from: e  reason: collision with root package name */
    private long f29972e;

    public m(InputStream inputStream) {
        this(inputStream, 4096);
    }

    private void c(long j10) {
        try {
            long j11 = this.f29970c;
            long j12 = this.f29969b;
            if (j11 < j12 && j12 <= this.f29971d) {
                this.f29968a.reset();
                this.f29968a.mark((int) (j10 - this.f29970c));
                d(this.f29970c, this.f29969b);
            } else {
                this.f29970c = j12;
                this.f29968a.mark((int) (j10 - j12));
            }
            this.f29971d = j10;
        } catch (IOException e10) {
            throw new IllegalStateException("Unable to mark: " + e10);
        }
    }

    private void d(long j10, long j11) throws IOException {
        while (j10 < j11) {
            long skip = this.f29968a.skip(j11 - j10);
            if (skip == 0) {
                if (read() == -1) {
                    return;
                }
                skip = 1;
            }
            j10 += skip;
        }
    }

    public void a(long j10) throws IOException {
        if (this.f29969b <= this.f29971d && j10 >= this.f29970c) {
            this.f29968a.reset();
            d(this.f29970c, j10);
            this.f29969b = j10;
            return;
        }
        throw new IOException("Cannot reset");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f29968a.available();
    }

    public long b(int i9) {
        long j10 = this.f29969b + i9;
        if (this.f29971d < j10) {
            c(j10);
        }
        return this.f29969b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f29968a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i9) {
        this.f29972e = b(i9);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f29968a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int read = this.f29968a.read();
        if (read != -1) {
            this.f29969b++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        a(this.f29972e);
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        long skip = this.f29968a.skip(j10);
        this.f29969b += skip;
        return skip;
    }

    public m(InputStream inputStream, int i9) {
        this.f29972e = -1L;
        this.f29968a = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i9);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int read = this.f29968a.read(bArr);
        if (read != -1) {
            this.f29969b += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        int read = this.f29968a.read(bArr, i9, i10);
        if (read != -1) {
            this.f29969b += read;
        }
        return read;
    }
}
