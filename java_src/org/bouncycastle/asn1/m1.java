package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class m1 extends q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m1(OutputStream outputStream) {
        super(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.q
    public q e() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.q
    public void u(r rVar, boolean z10) throws IOException {
        rVar.J().y(this, z10);
    }
}
