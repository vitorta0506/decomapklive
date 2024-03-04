package j3;

import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
/* loaded from: classes2.dex */
public final class j extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final i f53025a;

    /* renamed from: b  reason: collision with root package name */
    private final l f53026b;

    /* renamed from: f  reason: collision with root package name */
    private long f53030f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f53028d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53029e = false;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f53027c = new byte[1];

    public j(i iVar, l lVar) {
        this.f53025a = iVar;
        this.f53026b = lVar;
    }

    private void a() throws IOException {
        if (this.f53028d) {
            return;
        }
        this.f53025a.b(this.f53026b);
        this.f53028d = true;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f53029e) {
            return;
        }
        this.f53025a.close();
        this.f53029e = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f53027c) == -1) {
            return -1;
        }
        return this.f53027c[0] & UByte.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        com.google.android.exoplayer2.util.a.f(!this.f53029e);
        a();
        int read = this.f53025a.read(bArr, i9, i10);
        if (read == -1) {
            return -1;
        }
        this.f53030f += read;
        return read;
    }
}
