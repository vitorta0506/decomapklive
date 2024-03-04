package org.conscrypt;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
class OpenSSLBIOInputStream extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f56299a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OpenSSLBIOInputStream(InputStream inputStream, boolean z10) {
        super(inputStream);
        this.f56299a = NativeCrypto.create_BIO_InputStream(this, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        return this.f56299a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        NativeCrypto.BIO_free_all(this.f56299a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        if (i9 < 0 || i10 < 0 || i10 > bArr.length - i9) {
            throw new IndexOutOfBoundsException("Invalid bounds");
        }
        int i11 = 0;
        if (i10 == 0) {
            return 0;
        }
        do {
            int read = super.read(bArr, i9 + i11, (i10 - i11) - i9);
            if (read == -1) {
                break;
            }
            i11 += read;
        } while (i9 + i11 < i10);
        if (i11 == 0) {
            return -1;
        }
        return i11;
    }
}
