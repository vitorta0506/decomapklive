package org.bouncycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class v1 extends y1 {

    /* renamed from: c  reason: collision with root package name */
    private int f55983c;

    /* renamed from: d  reason: collision with root package name */
    private int f55984d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55985e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f55986f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v1(InputStream inputStream, int i9) throws IOException {
        super(inputStream, i9);
        this.f55985e = false;
        this.f55986f = true;
        this.f55983c = inputStream.read();
        int read = inputStream.read();
        this.f55984d = read;
        if (read < 0) {
            throw new EOFException();
        }
        c();
    }

    private boolean c() {
        if (!this.f55985e && this.f55986f && this.f55983c == 0 && this.f55984d == 0) {
            this.f55985e = true;
            b(true);
        }
        return this.f55985e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z10) {
        this.f55986f = z10;
        c();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (c()) {
            return -1;
        }
        int read = this.f55997a.read();
        if (read >= 0) {
            int i9 = this.f55983c;
            this.f55983c = this.f55984d;
            this.f55984d = read;
            return i9;
        }
        throw new EOFException();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        if (this.f55986f || i10 < 3) {
            return super.read(bArr, i9, i10);
        }
        if (this.f55985e) {
            return -1;
        }
        int read = this.f55997a.read(bArr, i9 + 2, i10 - 2);
        if (read >= 0) {
            bArr[i9] = (byte) this.f55983c;
            bArr[i9 + 1] = (byte) this.f55984d;
            this.f55983c = this.f55997a.read();
            int read2 = this.f55997a.read();
            this.f55984d = read2;
            if (read2 >= 0) {
                return read + 2;
            }
            throw new EOFException();
        }
        throw new EOFException();
    }
}
