package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class b0 implements e, u1 {

    /* renamed from: a  reason: collision with root package name */
    private final int f55902a;

    /* renamed from: b  reason: collision with root package name */
    private final w f55903b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(int i9, w wVar) {
        this.f55902a = i9;
        this.f55903b = wVar;
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() throws IOException {
        return new a0(this.f55902a, this.f55903b.d());
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
