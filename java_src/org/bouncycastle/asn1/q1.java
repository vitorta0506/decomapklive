package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class q1 implements v {

    /* renamed from: a  reason: collision with root package name */
    private w f55964a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q1(w wVar) {
        this.f55964a = wVar;
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() throws IOException {
        return new p1(this.f55964a.d());
    }

    @Override // org.bouncycastle.asn1.e
    public r f() {
        try {
            return d();
        } catch (IOException e10) {
            throw new ASN1ParsingException(e10.getMessage(), e10);
        }
    }
}
