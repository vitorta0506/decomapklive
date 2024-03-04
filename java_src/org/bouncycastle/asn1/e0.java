package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
public class e0 implements p {

    /* renamed from: a  reason: collision with root package name */
    private w f55917a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(w wVar) {
        this.f55917a = wVar;
    }

    @Override // org.bouncycastle.asn1.p
    public InputStream c() {
        return new l0(this.f55917a);
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() throws IOException {
        return new d0(dl.a.b(c()));
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
