package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes7.dex */
public class a0 extends a {
    public a0(int i9, f fVar) {
        super(true, i9, P(fVar));
    }

    private static byte[] P(f fVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i9 = 0; i9 != fVar.f(); i9++) {
            try {
                byteArrayOutputStream.write(((m) fVar.d(i9)).u("BER"));
            } catch (IOException e10) {
                throw new ASN1ParsingException("malformed object: " + e10, e10);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.a, org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.o(z10, this.f55894a ? 96 : 64, this.f55895b, this.f55896c);
    }
}
