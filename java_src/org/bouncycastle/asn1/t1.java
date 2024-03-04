package org.bouncycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
class t1 extends y1 {

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f55973e = new byte[0];

    /* renamed from: c  reason: collision with root package name */
    private final int f55974c;

    /* renamed from: d  reason: collision with root package name */
    private int f55975d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t1(InputStream inputStream, int i9, int i10) {
        super(inputStream, i10);
        if (i9 < 0) {
            throw new IllegalArgumentException("negative lengths not allowed");
        }
        this.f55974c = i9;
        this.f55975d = i9;
        if (i9 == 0) {
            b(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f55975d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(byte[] bArr) throws IOException {
        int i9 = this.f55975d;
        if (i9 != bArr.length) {
            throw new IllegalArgumentException("buffer length not right for data");
        }
        if (i9 == 0) {
            return;
        }
        int a10 = a();
        int i10 = this.f55975d;
        if (i10 >= a10) {
            throw new IOException("corrupted stream - out of bounds length found: " + this.f55975d + " >= " + a10);
        }
        int c10 = i10 - dl.a.c(this.f55997a, bArr);
        this.f55975d = c10;
        if (c10 == 0) {
            b(true);
            return;
        }
        throw new EOFException("DEF length " + this.f55974c + " object truncated by " + this.f55975d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] e() throws IOException {
        if (this.f55975d == 0) {
            return f55973e;
        }
        int a10 = a();
        int i9 = this.f55975d;
        if (i9 >= a10) {
            throw new IOException("corrupted stream - out of bounds length found: " + this.f55975d + " >= " + a10);
        }
        byte[] bArr = new byte[i9];
        int c10 = i9 - dl.a.c(this.f55997a, bArr);
        this.f55975d = c10;
        if (c10 == 0) {
            b(true);
            return bArr;
        }
        throw new EOFException("DEF length " + this.f55974c + " object truncated by " + this.f55975d);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f55975d == 0) {
            return -1;
        }
        int read = this.f55997a.read();
        if (read >= 0) {
            int i9 = this.f55975d - 1;
            this.f55975d = i9;
            if (i9 == 0) {
                b(true);
            }
            return read;
        }
        throw new EOFException("DEF length " + this.f55974c + " object truncated by " + this.f55975d);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        int i11 = this.f55975d;
        if (i11 == 0) {
            return -1;
        }
        int read = this.f55997a.read(bArr, i9, Math.min(i10, i11));
        if (read >= 0) {
            int i12 = this.f55975d - read;
            this.f55975d = i12;
            if (i12 == 0) {
                b(true);
            }
            return read;
        }
        throw new EOFException("DEF length " + this.f55974c + " object truncated by " + this.f55975d);
    }
}
