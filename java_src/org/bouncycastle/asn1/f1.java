package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public class f1 extends r implements x {

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f55923b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f55924a;

    public f1(byte[] bArr) {
        this.f55924a = org.bouncycastle.util.a.e(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    @Override // org.bouncycastle.asn1.x
    public String g() {
        StringBuffer stringBuffer = new StringBuffer("#");
        try {
            byte[] encoded = getEncoded();
            for (int i9 = 0; i9 != encoded.length; i9++) {
                char[] cArr = f55923b;
                stringBuffer.append(cArr[(encoded[i9] >>> 4) & 15]);
                stringBuffer.append(cArr[encoded[i9] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException unused) {
            throw new ASN1ParsingException("internal error encoding UniversalString");
        }
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55924a);
    }

    public String toString() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof f1) {
            return org.bouncycastle.util.a.a(this.f55924a, ((f1) rVar).f55924a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 28, this.f55924a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55924a.length) + 1 + this.f55924a.length;
    }
}
