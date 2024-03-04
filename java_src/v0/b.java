package v0;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class b extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final long f58600a;

    /* renamed from: b  reason: collision with root package name */
    private int f58601b;

    private b(@NonNull InputStream inputStream, long j10) {
        super(inputStream);
        this.f58600a = j10;
    }

    private int a(int i9) throws IOException {
        if (i9 >= 0) {
            this.f58601b += i9;
        } else if (this.f58600a - this.f58601b > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f58600a + ", but read: " + this.f58601b);
        }
        return i9;
    }

    @NonNull
    public static InputStream b(@NonNull InputStream inputStream, long j10) {
        return new b(inputStream, j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f58600a - this.f58601b, ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        a(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i9, int i10) throws IOException {
        return a(super.read(bArr, i9, i10));
    }
}
