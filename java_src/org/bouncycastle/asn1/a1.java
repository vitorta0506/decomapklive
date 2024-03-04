package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class a1 extends s {

    /* renamed from: b  reason: collision with root package name */
    private int f55897b;

    public a1() {
        this.f55897b = -1;
    }

    public a1(f fVar) {
        super(fVar);
        this.f55897b = -1;
    }

    public a1(e[] eVarArr) {
        super(eVarArr);
        this.f55897b = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(e[] eVarArr, boolean z10) {
        super(eVarArr, z10);
        this.f55897b = -1;
    }

    public static a1 P(s sVar) {
        return (a1) sVar.I();
    }

    private int Q() throws IOException {
        if (this.f55897b < 0) {
            int length = this.f55965a.length;
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                i9 += this.f55965a[i10].f().I().z();
            }
            this.f55897b = i9;
        }
        return this.f55897b;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.r
    r I() {
        return this;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.r
    r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        if (z10) {
            qVar.f(48);
        }
        y0 d10 = qVar.d();
        int length = this.f55965a.length;
        int i9 = 0;
        if (this.f55897b >= 0 || length > 16) {
            qVar.r(Q());
            while (i9 < length) {
                this.f55965a[i9].f().I().y(d10, true);
                i9++;
            }
            return;
        }
        r[] rVarArr = new r[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            r I = this.f55965a[i11].f().I();
            rVarArr[i11] = I;
            i10 += I.z();
        }
        this.f55897b = i10;
        qVar.r(i10);
        while (i9 < length) {
            rVarArr[i9].y(d10, true);
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int Q = Q();
        return a2.a(Q) + 1 + Q;
    }
}
