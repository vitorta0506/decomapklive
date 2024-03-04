package oj;

import org.bouncycastle.asn1.a1;
/* loaded from: classes7.dex */
public class o extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final n[] f55795a;

    public o(n nVar) {
        this.f55795a = new n[]{nVar};
    }

    private o(org.bouncycastle.asn1.s sVar) {
        this.f55795a = new n[sVar.size()];
        for (int i9 = 0; i9 != sVar.size(); i9++) {
            this.f55795a[i9] = n.x(sVar.M(i9));
        }
    }

    public static o x(Object obj) {
        if (obj instanceof o) {
            return (o) obj;
        }
        if (obj != null) {
            return new o(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public static o y(org.bouncycastle.asn1.y yVar, boolean z10) {
        return new o(org.bouncycastle.asn1.s.L(yVar, z10));
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        return new a1(this.f55795a);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = org.bouncycastle.util.i.d();
        stringBuffer.append("GeneralNames:");
        stringBuffer.append(d10);
        for (int i9 = 0; i9 != this.f55795a.length; i9++) {
            stringBuffer.append("    ");
            stringBuffer.append(this.f55795a[i9]);
            stringBuffer.append(d10);
        }
        return stringBuffer.toString();
    }
}
