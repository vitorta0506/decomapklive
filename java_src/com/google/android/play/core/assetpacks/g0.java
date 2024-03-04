package com.google.android.play.core.assetpacks;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
final class g0 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f10227a;

    /* renamed from: b  reason: collision with root package name */
    private long f10228b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(InputStream inputStream, long j10) {
        this.f10227a = inputStream;
        this.f10228b = j10;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f10227a.close();
        this.f10228b = 0L;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j10 = this.f10228b;
        if (j10 <= 0) {
            return -1;
        }
        this.f10228b = j10 - 1;
        return this.f10227a.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) throws IOException {
        long j10 = this.f10228b;
        if (j10 <= 0) {
            return -1;
        }
        int read = this.f10227a.read(bArr, i9, (int) Math.min(i10, j10));
        if (read != -1) {
            this.f10228b -= read;
        }
        return read;
    }
}
