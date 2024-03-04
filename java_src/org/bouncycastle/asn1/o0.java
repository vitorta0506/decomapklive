package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes7.dex */
public class o0 extends h {
    public o0(n nVar, k kVar, r rVar, int i9, r rVar2) {
        super(nVar, kVar, rVar, i9, rVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.h, org.bouncycastle.asn1.r
    public r I() {
        return this;
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
            byteArrayOutputStream.write(nVar.u("DER"));
        }
        k kVar = this.f55931b;
        if (kVar != null) {
            byteArrayOutputStream.write(kVar.u("DER"));
        }
        r rVar = this.f55932c;
        if (rVar != null) {
            byteArrayOutputStream.write(rVar.u("DER"));
        }
        byteArrayOutputStream.write(new d1(true, this.f55933d, this.f55934e).u("DER"));
        qVar.m(z10, 32, 8, byteArrayOutputStream.toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.h, org.bouncycastle.asn1.r
    public int z() throws IOException {
        return getEncoded().length;
    }
}
