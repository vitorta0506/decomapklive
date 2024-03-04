package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
/* loaded from: classes7.dex */
final class l {

    /* renamed from: a  reason: collision with root package name */
    private final byte[][] f56175a;

    /* JADX INFO: Access modifiers changed from: protected */
    public l(k kVar, byte[][] bArr) {
        Objects.requireNonNull(kVar, "params == null");
        Objects.requireNonNull(bArr, "publicKey == null");
        if (x.k(bArr)) {
            throw new NullPointerException("publicKey byte array == null");
        }
        if (bArr.length != kVar.a()) {
            throw new IllegalArgumentException("wrong publicKey size");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != kVar.c()) {
                throw new IllegalArgumentException("wrong publicKey format");
            }
        }
        this.f56175a = x.d(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[][] a() {
        return x.d(this.f56175a);
    }
}
