package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class b1 extends u {

    /* renamed from: c  reason: collision with root package name */
    private int f55904c;

    public b1() {
        this.f55904c = -1;
    }

    public b1(f fVar) {
        super(fVar, true);
        this.f55904c = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(boolean z10, e[] eVarArr) {
        super(S(z10), eVarArr);
        this.f55904c = -1;
    }

    private static boolean S(boolean z10) {
        if (z10) {
            return z10;
        }
        throw new IllegalStateException("DERSet elements should always be in sorted order");
    }

    private int a0() throws IOException {
        if (this.f55904c < 0) {
            int length = this.f55976a.length;
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                i9 += this.f55976a[i10].f().I().z();
            }
            this.f55904c = i9;
        }
        return this.f55904c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.u, org.bouncycastle.asn1.r
    public r I() {
        return this.f55977b ? this : super.I();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.u, org.bouncycastle.asn1.r
    public r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        if (z10) {
            qVar.f(49);
        }
        y0 d10 = qVar.d();
        int length = this.f55976a.length;
        int i9 = 0;
        if (this.f55904c >= 0 || length > 16) {
            qVar.r(a0());
            while (i9 < length) {
                this.f55976a[i9].f().I().y(d10, true);
                i9++;
            }
            return;
        }
        r[] rVarArr = new r[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            r I = this.f55976a[i11].f().I();
            rVarArr[i11] = I;
            i10 += I.z();
        }
        this.f55904c = i10;
        qVar.r(i10);
        while (i9 < length) {
            rVarArr[i9].y(d10, true);
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int a02 = a0();
        return a2.a(a02) + 1 + a02;
    }
}
