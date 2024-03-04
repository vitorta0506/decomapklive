package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class c extends r {

    /* renamed from: b  reason: collision with root package name */
    public static final c f55905b = new c((byte) 0);

    /* renamed from: c  reason: collision with root package name */
    public static final c f55906c = new c((byte) -1);

    /* renamed from: a  reason: collision with root package name */
    private final byte f55907a;

    private c(byte b10) {
        this.f55907a = b10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c K(byte[] bArr) {
        if (bArr.length == 1) {
            byte b10 = bArr[0];
            return b10 != -1 ? b10 != 0 ? new c(b10) : f55905b : f55906c;
        }
        throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
    }

    public static c L(Object obj) {
        if (obj == null || (obj instanceof c)) {
            return (c) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (c) r.G((byte[]) obj);
        } catch (IOException e10) {
            throw new IllegalArgumentException("failed to construct boolean from byte[]: " + e10.getMessage());
        }
    }

    public static c M(y yVar, boolean z10) {
        r M = yVar.M();
        return (z10 || (M instanceof c)) ? L(M) : K(o.K(M).M());
    }

    public static c N(boolean z10) {
        return z10 ? f55906c : f55905b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r I() {
        return O() ? f55906c : f55905b;
    }

    public boolean O() {
        return this.f55907a != 0;
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return O() ? 1 : 0;
    }

    public String toString() {
        return O() ? "TRUE" : "FALSE";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        return (rVar instanceof c) && O() == ((c) rVar).O();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.j(z10, 1, this.f55907a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return 3;
    }
}
