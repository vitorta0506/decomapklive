package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class h1 extends r implements x {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f55935a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h1(byte[] bArr) {
        this.f55935a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.x
    public String g() {
        return org.bouncycastle.util.i.b(this.f55935a);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55935a);
    }

    public String toString() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof h1) {
            return org.bouncycastle.util.a.a(this.f55935a, ((h1) rVar).f55935a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 26, this.f55935a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55935a.length) + 1 + this.f55935a.length;
    }
}
