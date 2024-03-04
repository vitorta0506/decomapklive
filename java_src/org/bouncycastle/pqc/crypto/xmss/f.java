package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final org.bouncycastle.crypto.e f56147a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56148b;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(org.bouncycastle.asn1.n nVar, int i9) {
        Objects.requireNonNull(nVar, "digest == null");
        this.f56147a = d.a(nVar);
        this.f56148b = i9;
    }

    private byte[] d(int i9, byte[] bArr, byte[] bArr2) {
        byte[] q10 = x.q(i9, this.f56148b);
        this.f56147a.c(q10, 0, q10.length);
        this.f56147a.c(bArr, 0, bArr.length);
        this.f56147a.c(bArr2, 0, bArr2.length);
        int i10 = this.f56148b;
        byte[] bArr3 = new byte[i10];
        org.bouncycastle.crypto.e eVar = this.f56147a;
        if (eVar instanceof org.bouncycastle.crypto.i) {
            ((org.bouncycastle.crypto.i) eVar).e(bArr3, 0, i10);
        } else {
            eVar.a(bArr3, 0);
        }
        return bArr3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i9 = this.f56148b;
        if (length == i9) {
            if (bArr2.length == i9) {
                return d(0, bArr, bArr2);
            }
            throw new IllegalArgumentException("wrong in length");
        }
        throw new IllegalArgumentException("wrong key length");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i9 = this.f56148b;
        if (length == i9) {
            if (bArr2.length == i9 * 2) {
                return d(1, bArr, bArr2);
            }
            throw new IllegalArgumentException("wrong in length");
        }
        throw new IllegalArgumentException("wrong key length");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] c(byte[] bArr, byte[] bArr2) {
        if (bArr.length == this.f56148b) {
            if (bArr2.length == 32) {
                return d(3, bArr, bArr2);
            }
            throw new IllegalArgumentException("wrong address length");
        }
        throw new IllegalArgumentException("wrong key length");
    }
}
