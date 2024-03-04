package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class h0 extends u {
    public h0() {
    }

    public h0(e eVar) {
        super(eVar);
    }

    public h0(f fVar) {
        super(fVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(boolean z10, e[] eVarArr) {
        super(z10, eVarArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.q(z10, 49, this.f55976a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int length = this.f55976a.length;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            i9 += this.f55976a[i10].f().z();
        }
        return i9 + 2 + 2;
    }
}
