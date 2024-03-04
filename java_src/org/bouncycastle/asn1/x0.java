package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
public class x0 implements p {

    /* renamed from: a  reason: collision with root package name */
    private t1 f55992a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(t1 t1Var) {
        this.f55992a = t1Var;
    }

    @Override // org.bouncycastle.asn1.p
    public InputStream c() {
        return this.f55992a;
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() throws IOException {
        return new w0(this.f55992a.e());
    }

    @Override // org.bouncycastle.asn1.e
    public r f() {
        try {
            return d();
        } catch (IOException e10) {
            throw new ASN1ParsingException("IOException converting stream to byte array: " + e10.getMessage(), e10);
        }
    }
}
