package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class x1 extends s {

    /* renamed from: b  reason: collision with root package name */
    private byte[] f55993b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x1(byte[] bArr) throws IOException {
        this.f55993b = bArr;
    }

    private void P() {
        if (this.f55993b != null) {
            f fVar = new f();
            w1 w1Var = new w1(this.f55993b);
            while (w1Var.hasMoreElements()) {
                fVar.a((r) w1Var.nextElement());
            }
            this.f55965a = fVar.g();
            this.f55993b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.r
    public synchronized r I() {
        P();
        return super.I();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.r
    public synchronized r J() {
        P();
        return super.J();
    }

    @Override // org.bouncycastle.asn1.s
    public synchronized e M(int i9) {
        P();
        return super.M(i9);
    }

    @Override // org.bouncycastle.asn1.s
    public synchronized Enumeration N() {
        byte[] bArr = this.f55993b;
        if (bArr != null) {
            return new w1(bArr);
        }
        return super.N();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.s
    public e[] O() {
        P();
        return super.O();
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public synchronized int hashCode() {
        P();
        return super.hashCode();
    }

    @Override // org.bouncycastle.asn1.s, java.lang.Iterable
    public synchronized Iterator<e> iterator() {
        P();
        return super.iterator();
    }

    @Override // org.bouncycastle.asn1.s
    public synchronized int size() {
        P();
        return super.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public synchronized void y(q qVar, boolean z10) throws IOException {
        byte[] bArr = this.f55993b;
        if (bArr != null) {
            qVar.n(z10, 48, bArr);
        } else {
            super.J().y(qVar, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public synchronized int z() throws IOException {
        byte[] bArr = this.f55993b;
        if (bArr != null) {
            return a2.a(bArr.length) + 1 + this.f55993b.length;
        }
        return super.J().z();
    }
}
