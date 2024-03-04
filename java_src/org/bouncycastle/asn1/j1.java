package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class j1 extends b {
    public j1(byte[] bArr, int i9) {
        super(bArr, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.b, org.bouncycastle.asn1.r
    r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.k(z10, 3, (byte) this.f55901b, this.f55900a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55900a.length + 1) + 1 + this.f55900a.length + 1;
    }
}
