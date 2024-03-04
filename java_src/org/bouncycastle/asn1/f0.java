package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class f0 extends s {
    public f0() {
    }

    public f0(e eVar) {
        super(eVar);
    }

    public f0(f fVar) {
        super(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.q(z10, 48, this.f55965a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int length = this.f55965a.length;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            i9 += this.f55965a[i10].f().z();
        }
        return i9 + 2 + 2;
    }
}
