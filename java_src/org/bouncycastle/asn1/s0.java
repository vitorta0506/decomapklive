package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class s0 extends r implements x {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f55968a;

    public s0(byte[] bArr) {
        this.f55968a = org.bouncycastle.util.a.e(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.x
    public String g() {
        return org.bouncycastle.util.i.b(this.f55968a);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55968a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof s0) {
            return org.bouncycastle.util.a.a(this.f55968a, ((s0) rVar).f55968a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 25, this.f55968a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55968a.length) + 1 + this.f55968a.length;
    }
}
