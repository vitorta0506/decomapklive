package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes7.dex */
public class k1 extends h {
    public k1(f fVar) {
        super(fVar);
    }

    public k1(n nVar, k kVar, r rVar, int i9, r rVar2) {
        super(nVar, kVar, rVar, i9, rVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.h, org.bouncycastle.asn1.r
    public r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        n nVar = this.f55930a;
        if (nVar != null) {
            byteArrayOutputStream.write(nVar.u("DL"));
        }
        k kVar = this.f55931b;
        if (kVar != null) {
            byteArrayOutputStream.write(kVar.u("DL"));
        }
        r rVar = this.f55932c;
        if (rVar != null) {
            byteArrayOutputStream.write(rVar.u("DL"));
        }
        byteArrayOutputStream.write(new r1(true, this.f55933d, this.f55934e).u("DL"));
        qVar.m(z10, 32, 8, byteArrayOutputStream.toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.h, org.bouncycastle.asn1.r
    public int z() throws IOException {
        return getEncoded().length;
    }
}
