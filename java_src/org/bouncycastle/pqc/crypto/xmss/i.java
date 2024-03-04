package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final k f56161a;

    /* renamed from: b  reason: collision with root package name */
    private final f f56162b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f56163c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f56164d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(k kVar) {
        Objects.requireNonNull(kVar, "params == null");
        this.f56161a = kVar;
        int c10 = kVar.c();
        this.f56162b = new f(kVar.b(), c10);
        this.f56163c = new byte[c10];
        this.f56164d = new byte[c10];
    }

    private byte[] a(byte[] bArr, int i9, int i10, h hVar) {
        int c10 = this.f56161a.c();
        Objects.requireNonNull(bArr, "startHash == null");
        if (bArr.length != c10) {
            throw new IllegalArgumentException("startHash needs to be " + c10 + "bytes");
        }
        Objects.requireNonNull(hVar, "otsHashAddress == null");
        Objects.requireNonNull(hVar.d(), "otsHashAddress byte array == null");
        int i11 = i9 + i10;
        if (i11 <= this.f56161a.d() - 1) {
            if (i10 == 0) {
                return bArr;
            }
            byte[] a10 = a(bArr, i9, i10 - 1, hVar);
            h hVar2 = (h) new h.b().g(hVar.b()).h(hVar.c()).p(hVar.g()).n(hVar.e()).o(i11 - 1).f(0).l();
            byte[] c11 = this.f56162b.c(this.f56164d, hVar2.d());
            byte[] c12 = this.f56162b.c(this.f56164d, ((h) new h.b().g(hVar2.b()).h(hVar2.c()).p(hVar2.g()).n(hVar2.e()).o(hVar2.f()).f(1).l()).d());
            byte[] bArr2 = new byte[c10];
            for (int i12 = 0; i12 < c10; i12++) {
                bArr2[i12] = (byte) (a10[i12] ^ c12[i12]);
            }
            return this.f56162b.a(c11, bArr2);
        }
        throw new IllegalArgumentException("max chain length must not be greater than w");
    }

    private byte[] b(int i9) {
        if (i9 < 0 || i9 >= this.f56161a.a()) {
            throw new IllegalArgumentException("index out of bounds");
        }
        return this.f56162b.c(this.f56163c, x.q(i9, 32));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f c() {
        return this.f56162b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k d() {
        return this.f56161a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l e(h hVar) {
        Objects.requireNonNull(hVar, "otsHashAddress == null");
        byte[][] bArr = new byte[this.f56161a.a()];
        for (int i9 = 0; i9 < this.f56161a.a(); i9++) {
            hVar = (h) new h.b().g(hVar.b()).h(hVar.c()).p(hVar.g()).n(i9).o(hVar.f()).f(hVar.a()).l();
            bArr[i9] = a(b(i9), 0, this.f56161a.d() - 1, hVar);
        }
        return new l(this.f56161a, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] f() {
        return org.bouncycastle.util.a.e(this.f56164d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] g(byte[] bArr, h hVar) {
        return this.f56162b.c(bArr, ((h) new h.b().g(hVar.b()).h(hVar.c()).p(hVar.g()).l()).d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(byte[] bArr, byte[] bArr2) {
        Objects.requireNonNull(bArr, "secretKeySeed == null");
        if (bArr.length != this.f56161a.c()) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
        }
        Objects.requireNonNull(bArr2, "publicSeed == null");
        if (bArr2.length != this.f56161a.c()) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
        }
        this.f56163c = bArr;
        this.f56164d = bArr2;
    }
}
