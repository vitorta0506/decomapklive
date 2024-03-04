package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class r1 extends y {
    public r1(boolean z10, int i9, e eVar) {
        super(z10, i9, eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return this.f55995b || this.f55996c.f().J().H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.y, org.bouncycastle.asn1.r
    public r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        r J = this.f55996c.f().J();
        qVar.v(z10, (this.f55995b || J.H()) ? 160 : 128, this.f55994a);
        if (this.f55995b) {
            qVar.r(J.z());
        }
        qVar.e().u(J, this.f55995b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int b10;
        int z10 = this.f55996c.f().J().z();
        if (this.f55995b) {
            b10 = a2.b(this.f55994a) + a2.a(z10);
        } else {
            z10--;
            b10 = a2.b(this.f55994a);
        }
        return b10 + z10;
    }
}
