package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class w0 extends o {
    public w0(e eVar) throws IOException {
        super(eVar.f().u("DER"));
    }

    public w0(byte[] bArr) {
        super(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.o, org.bouncycastle.asn1.r
    public r I() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.o, org.bouncycastle.asn1.r
    public r J() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 4, this.f55958a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55958a.length) + 1 + this.f55958a.length;
    }
}
