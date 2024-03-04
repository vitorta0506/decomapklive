package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class n0 extends b {
    public n0(e eVar) throws IOException {
        super(eVar.f().u("DER"), 0);
    }

    public n0(byte[] bArr) {
        this(bArr, 0);
    }

    public n0(byte[] bArr, int i9) {
        super(bArr, i9);
    }

    static n0 O(byte[] bArr) {
        if (bArr.length >= 1) {
            byte b10 = bArr[0];
            int length = bArr.length - 1;
            byte[] bArr2 = new byte[length];
            if (length != 0) {
                System.arraycopy(bArr, 1, bArr2, 0, bArr.length - 1);
            }
            return new n0(bArr2, b10);
        }
        throw new IllegalArgumentException("truncated BIT STRING detected");
    }

    public static n0 P(Object obj) {
        if (obj == null || (obj instanceof n0)) {
            return (n0) obj;
        }
        if (obj instanceof j1) {
            j1 j1Var = (j1) obj;
            return new n0(j1Var.f55900a, j1Var.f55901b);
        } else if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        } else {
            try {
                return (n0) r.G((byte[]) obj);
            } catch (Exception e10) {
                throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
            }
        }
    }

    public static n0 Q(y yVar, boolean z10) {
        r M = yVar.M();
        return (z10 || (M instanceof n0)) ? P(M) : O(o.K(M).M());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.b, org.bouncycastle.asn1.r
    r I() {
        return this;
    }

    @Override // org.bouncycastle.asn1.b, org.bouncycastle.asn1.r
    r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        int i9;
        byte[] bArr = this.f55900a;
        int length = bArr.length;
        if (length != 0 && (i9 = this.f55901b) != 0) {
            int i10 = length - 1;
            if (bArr[i10] != ((byte) (bArr[i10] & (255 << i9)))) {
                qVar.l(z10, 3, (byte) i9, bArr, 0, i10, (byte) (bArr[i10] & (255 << i9)));
                return;
            }
        }
        qVar.k(z10, 3, (byte) this.f55901b, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55900a.length + 1) + 1 + this.f55900a.length + 1;
    }
}
