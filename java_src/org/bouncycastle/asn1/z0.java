package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class z0 extends r implements x {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f56000a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z0(byte[] bArr) {
        this.f56000a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.x
    public String g() {
        return org.bouncycastle.util.i.b(this.f56000a);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f56000a);
    }

    public String toString() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof z0) {
            return org.bouncycastle.util.a.a(this.f56000a, ((z0) rVar).f56000a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 19, this.f56000a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f56000a.length) + 1 + this.f56000a.length;
    }
}
