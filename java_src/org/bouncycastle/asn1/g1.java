package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class g1 extends r implements x {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f55929a;

    public g1(byte[] bArr) {
        this.f55929a = org.bouncycastle.util.a.e(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.x
    public String g() {
        return org.bouncycastle.util.i.b(this.f55929a);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55929a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof g1) {
            return org.bouncycastle.util.a.a(this.f55929a, ((g1) rVar).f55929a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 21, this.f55929a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55929a.length) + 1 + this.f55929a.length;
    }
}
