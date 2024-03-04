package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
/* loaded from: classes7.dex */
public class j0 extends y {
    public j0(boolean z10, int i9, e eVar) {
        super(z10, i9, eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return this.f55995b || this.f55996c.f().H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        Enumeration O;
        qVar.v(z10, 160, this.f55994a);
        qVar.f(128);
        if (this.f55995b) {
            qVar.u(this.f55996c.f(), true);
        } else {
            e eVar = this.f55996c;
            if (eVar instanceof o) {
                O = eVar instanceof d0 ? ((d0) eVar).Q() : new d0(((o) eVar).M()).Q();
            } else if (eVar instanceof s) {
                O = ((s) eVar).N();
            } else if (!(eVar instanceof u)) {
                throw new ASN1Exception("not implemented: " + this.f55996c.getClass().getName());
            } else {
                O = ((u) eVar).O();
            }
            qVar.h(O);
        }
        qVar.f(0);
        qVar.f(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int b10;
        int z10 = this.f55996c.f().z();
        if (this.f55995b) {
            b10 = a2.b(this.f55994a) + a2.a(z10);
        } else {
            z10--;
            b10 = a2.b(this.f55994a);
        }
        return b10 + z10;
    }
}
