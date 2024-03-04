package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class k0 implements e, u1 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f55943a;

    /* renamed from: b  reason: collision with root package name */
    private int f55944b;

    /* renamed from: c  reason: collision with root package name */
    private w f55945c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(boolean z10, int i9, w wVar) {
        this.f55943a = z10;
        this.f55944b = i9;
        this.f55945c = wVar;
    }

    @Override // org.bouncycastle.asn1.u1
    public r d() throws IOException {
        return this.f55945c.c(this.f55943a, this.f55944b);
    }

    @Override // org.bouncycastle.asn1.e
    public r f() {
        try {
            return d();
        } catch (IOException e10) {
            throw new ASN1ParsingException(e10.getMessage());
        }
    }
}
