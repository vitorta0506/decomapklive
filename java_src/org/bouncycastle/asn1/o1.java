package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class o1 implements t {

    /* renamed from: a  reason: collision with root package name */
    private w f55959a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1(w wVar) {
        this.f55959a = wVar;
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() throws IOException {
        return new n1(this.f55959a.d());
    }

    @Override // org.bouncycastle.asn1.e
    public r f() {
        try {
            return d();
        } catch (IOException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }
}
