package org.apache.http.impl.auth;

import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;
/* loaded from: classes7.dex */
class b extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final MessageDigest f55891a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f55892b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f55893c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(MessageDigest messageDigest) {
        this.f55891a = messageDigest;
        messageDigest.reset();
    }

    public byte[] a() {
        return this.f55893c;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f55892b) {
            return;
        }
        this.f55892b = true;
        this.f55893c = this.f55891a.digest();
        super.close();
    }

    @Override // java.io.OutputStream
    public void write(int i9) throws IOException {
        if (!this.f55892b) {
            this.f55891a.update((byte) i9);
            return;
        }
        throw new IOException("Stream has been already closed");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i9, int i10) throws IOException {
        if (!this.f55892b) {
            this.f55891a.update(bArr, i9, i10);
            return;
        }
        throw new IOException("Stream has been already closed");
    }
}
