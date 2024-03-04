package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class r0 extends i {
    public r0(byte[] bArr) {
        super(bArr);
    }

    private byte[] c0() {
        byte[] bArr = this.f55936a;
        if (bArr[bArr.length - 1] == 90) {
            if (!R()) {
                byte[] bArr2 = this.f55936a;
                byte[] bArr3 = new byte[bArr2.length + 4];
                System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length - 1);
                System.arraycopy(org.bouncycastle.util.i.e("0000Z"), 0, bArr3, this.f55936a.length - 1, 5);
                return bArr3;
            } else if (!S()) {
                byte[] bArr4 = this.f55936a;
                byte[] bArr5 = new byte[bArr4.length + 2];
                System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length - 1);
                System.arraycopy(org.bouncycastle.util.i.e("00Z"), 0, bArr5, this.f55936a.length - 1, 3);
                return bArr5;
            } else if (Q()) {
                int length = this.f55936a.length - 2;
                while (length > 0 && this.f55936a[length] == 48) {
                    length--;
                }
                byte[] bArr6 = this.f55936a;
                if (bArr6[length] == 46) {
                    byte[] bArr7 = new byte[length + 1];
                    System.arraycopy(bArr6, 0, bArr7, 0, length);
                    bArr7[length] = 90;
                    return bArr7;
                }
                byte[] bArr8 = new byte[length + 2];
                int i9 = length + 1;
                System.arraycopy(bArr6, 0, bArr8, 0, i9);
                bArr8[i9] = 90;
                return bArr8;
            } else {
                return this.f55936a;
            }
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.i, org.bouncycastle.asn1.r
    public r I() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.i, org.bouncycastle.asn1.r
    public r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.i, org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 24, c0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.i, org.bouncycastle.asn1.r
    public int z() {
        int length = c0().length;
        return a2.a(length) + 1 + length;
    }
}
