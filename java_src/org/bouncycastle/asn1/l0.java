package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class l0 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final w f55946a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f55947b = true;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f55948c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(w wVar) {
        this.f55946a = wVar;
    }

    private p a() throws IOException {
        e b10 = this.f55946a.b();
        if (b10 == null) {
            return null;
        }
        if (b10 instanceof p) {
            return (p) b10;
        }
        throw new IOException("unknown object encountered: " + b10.getClass());
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        p a10;
        if (this.f55948c == null) {
            if (!this.f55947b || (a10 = a()) == null) {
                return -1;
            }
            this.f55947b = false;
            this.f55948c = a10.c();
        }
        while (true) {
            int read = this.f55948c.read();
            if (read >= 0) {
                return read;
            }
            p a11 = a();
            if (a11 == null) {
                this.f55948c = null;
                return -1;
            }
            this.f55948c = a11.c();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        p a10;
        int i11 = 0;
        if (this.f55948c == null) {
            if (!this.f55947b || (a10 = a()) == null) {
                return -1;
            }
            this.f55947b = false;
            this.f55948c = a10.c();
        }
        while (true) {
            int read = this.f55948c.read(bArr, i9 + i11, i10 - i11);
            if (read >= 0) {
                i11 += read;
                if (i11 == i10) {
                    return i11;
                }
            } else {
                p a11 = a();
                if (a11 == null) {
                    this.f55948c = null;
                    if (i11 < 1) {
                        return -1;
                    }
                    return i11;
                }
                this.f55948c = a11.c();
            }
        }
    }
}
