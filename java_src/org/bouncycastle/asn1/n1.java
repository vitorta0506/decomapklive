package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class n1 extends s {

    /* renamed from: b  reason: collision with root package name */
    private int f55957b;

    public n1() {
        this.f55957b = -1;
    }

    public n1(e eVar) {
        super(eVar);
        this.f55957b = -1;
    }

    public n1(f fVar) {
        super(fVar);
        this.f55957b = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n1(e[] eVarArr, boolean z10) {
        super(eVarArr, z10);
        this.f55957b = -1;
    }

    private int P() throws IOException {
        if (this.f55957b < 0) {
            int length = this.f55965a.length;
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                i9 += this.f55965a[i10].f().J().z();
            }
            this.f55957b = i9;
        }
        return this.f55957b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.r
    public r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        if (z10) {
            qVar.f(48);
        }
        q e10 = qVar.e();
        int length = this.f55965a.length;
        int i9 = 0;
        if (this.f55957b >= 0 || length > 16) {
            qVar.r(P());
            while (i9 < length) {
                e10.u(this.f55965a[i9].f(), true);
                i9++;
            }
            return;
        }
        r[] rVarArr = new r[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            r J = this.f55965a[i11].f().J();
            rVarArr[i11] = J;
            i10 += J.z();
        }
        this.f55957b = i10;
        qVar.r(i10);
        while (i9 < length) {
            e10.u(rVarArr[i9], true);
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int P = P();
        return a2.a(P) + 1 + P;
    }
}
