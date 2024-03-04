package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes7.dex */
public class m0 extends r implements x {

    /* renamed from: a  reason: collision with root package name */
    private final char[] f55951a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(char[] cArr) {
        Objects.requireNonNull(cArr, "'string' cannot be null");
        this.f55951a = cArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.x
    public String g() {
        return new String(this.f55951a);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.t(this.f55951a);
    }

    public String toString() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof m0) {
            return org.bouncycastle.util.a.b(this.f55951a, ((m0) rVar).f55951a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        int length = this.f55951a.length;
        if (z10) {
            qVar.f(30);
        }
        qVar.r(length * 2);
        byte[] bArr = new byte[8];
        int i9 = length & (-4);
        int i10 = 0;
        while (i10 < i9) {
            char[] cArr = this.f55951a;
            char c10 = cArr[i10];
            char c11 = cArr[i10 + 1];
            char c12 = cArr[i10 + 2];
            char c13 = cArr[i10 + 3];
            i10 += 4;
            bArr[0] = (byte) (c10 >> '\b');
            bArr[1] = (byte) c10;
            bArr[2] = (byte) (c11 >> '\b');
            bArr[3] = (byte) c11;
            bArr[4] = (byte) (c12 >> '\b');
            bArr[5] = (byte) c12;
            bArr[6] = (byte) (c13 >> '\b');
            bArr[7] = (byte) c13;
            qVar.g(bArr, 0, 8);
        }
        if (i10 < length) {
            int i11 = 0;
            do {
                char c14 = this.f55951a[i10];
                i10++;
                int i12 = i11 + 1;
                bArr[i11] = (byte) (c14 >> '\b');
                i11 = i12 + 1;
                bArr[i12] = (byte) c14;
            } while (i10 < length);
            qVar.g(bArr, 0, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55951a.length * 2) + 1 + (this.f55951a.length * 2);
    }
}
