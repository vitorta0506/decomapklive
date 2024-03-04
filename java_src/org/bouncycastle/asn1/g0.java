package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class g0 implements t {

    /* renamed from: a  reason: collision with root package name */
    private w f55928a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(w wVar) {
        this.f55928a = wVar;
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() throws IOException {
        return new f0(this.f55928a.d());
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
