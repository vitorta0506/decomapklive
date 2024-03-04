package v0;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* loaded from: classes.dex */
public final class c extends InputStream {
    @GuardedBy("POOL")

    /* renamed from: c  reason: collision with root package name */
    private static final Queue<c> f58602c = k.f(0);

    /* renamed from: a  reason: collision with root package name */
    private InputStream f58603a;

    /* renamed from: b  reason: collision with root package name */
    private IOException f58604b;

    c() {
    }

    @NonNull
    public static c b(@NonNull InputStream inputStream) {
        c poll;
        Queue<c> queue = f58602c;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new c();
        }
        poll.d(inputStream);
        return poll;
    }

    @Nullable
    public IOException a() {
        return this.f58604b;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f58603a.available();
    }

    public void c() {
        this.f58604b = null;
        this.f58603a = null;
        Queue<c> queue = f58602c;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f58603a.close();
    }

    void d(@NonNull InputStream inputStream) {
        this.f58603a = inputStream;
    }

    @Override // java.io.InputStream
    public void mark(int i9) {
        this.f58603a.mark(i9);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f58603a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            return this.f58603a.read();
        } catch (IOException e10) {
            this.f58604b = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f58603a.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        try {
            return this.f58603a.skip(j10);
        } catch (IOException e10) {
            this.f58604b = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            return this.f58603a.read(bArr);
        } catch (IOException e10) {
            this.f58604b = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        try {
            return this.f58603a.read(bArr, i9, i10);
        } catch (IOException e10) {
            this.f58604b = e10;
            throw e10;
        }
    }
}
