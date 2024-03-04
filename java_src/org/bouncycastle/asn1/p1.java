package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class p1 extends u {

    /* renamed from: c  reason: collision with root package name */
    private int f55961c;

    public p1() {
        this.f55961c = -1;
    }

    public p1(e eVar) {
        super(eVar);
        this.f55961c = -1;
    }

    public p1(f fVar) {
        super(fVar, false);
        this.f55961c = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p1(boolean z10, e[] eVarArr) {
        super(z10, eVarArr);
        this.f55961c = -1;
    }

    private int S() throws IOException {
        if (this.f55961c < 0) {
            int length = this.f55976a.length;
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                i9 += this.f55976a[i10].f().J().z();
            }
            this.f55961c = i9;
        }
        return this.f55961c;
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
        q e10 = qVar.e();
        int length = this.f55976a.length;
        int i9 = 0;
        if (this.f55961c >= 0 || length > 16) {
            qVar.r(S());
            while (i9 < length) {
                e10.u(this.f55976a[i9].f(), true);
                i9++;
            }
            return;
        }
        r[] rVarArr = new r[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            r J = this.f55976a[i11].f().J();
            rVarArr[i11] = J;
            i10 += J.z();
        }
        this.f55961c = i10;
        qVar.r(i10);
        while (i9 < length) {
            e10.u(rVarArr[i9], true);
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int S = S();
        return a2.a(S) + 1 + S;
    }
}
