package v0;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class h extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f58616a;

    public h(@NonNull InputStream inputStream) {
        super(inputStream);
        this.f58616a = Integer.MIN_VALUE;
    }

    private long a(long j10) {
        int i9 = this.f58616a;
        if (i9 == 0) {
            return -1L;
        }
        return (i9 == Integer.MIN_VALUE || j10 <= ((long) i9)) ? j10 : i9;
    }

    private void b(long j10) {
        int i9 = this.f58616a;
        if (i9 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f58616a = (int) (i9 - j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i9 = this.f58616a;
        if (i9 == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i9, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i9) {
        super.mark(i9);
        this.f58616a = i9;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        b(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.f58616a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        long a10 = a(j10);
        if (a10 == -1) {
            return 0L;
        }
        long skip = super.skip(a10);
        b(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i9, int i10) throws IOException {
        int a10 = (int) a(i10);
        if (a10 == -1) {
            return -1;
        }
        int read = super.read(bArr, i9, a10);
        b(read);
        return read;
    }
}
