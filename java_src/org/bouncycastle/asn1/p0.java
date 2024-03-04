package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class p0 implements e, u1 {

    /* renamed from: a  reason: collision with root package name */
    private w f55960a;

    public p0(w wVar) {
        this.f55960a = wVar;
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() throws IOException {
        try {
            return new k1(this.f55960a.d());
        } catch (IllegalArgumentException e10) {
            throw new ASN1Exception(e10.getMessage(), e10);
        }
    }

    @Override // org.bouncycastle.asn1.e
    public r f() {
        try {
            return d();
        } catch (IOException e10) {
            throw new ASN1ParsingException("unable to get DER object", e10);
        } catch (IllegalArgumentException e11) {
            throw new ASN1ParsingException("unable to get DER object", e11);
        }
    }
}
