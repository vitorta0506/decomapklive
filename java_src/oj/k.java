package oj;

import com.facebook.internal.security.CertificateUtil;
import org.bouncycastle.asn1.d1;
/* loaded from: classes7.dex */
public class k extends org.bouncycastle.asn1.m implements org.bouncycastle.asn1.d {

    /* renamed from: a  reason: collision with root package name */
    org.bouncycastle.asn1.e f55763a;

    /* renamed from: b  reason: collision with root package name */
    int f55764b;

    public k(org.bouncycastle.asn1.y yVar) {
        int N = yVar.N();
        this.f55764b = N;
        this.f55763a = N == 0 ? o.y(yVar, false) : org.bouncycastle.asn1.u.M(yVar, false);
    }

    private void x(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("    ");
        stringBuffer.append(str2);
        stringBuffer.append(CertificateUtil.DELIMITER);
        stringBuffer.append(str);
        stringBuffer.append("    ");
        stringBuffer.append("    ");
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    public static k y(Object obj) {
        if (obj == null || (obj instanceof k)) {
            return (k) obj;
        }
        if (obj instanceof org.bouncycastle.asn1.y) {
            return new k((org.bouncycastle.asn1.y) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static k z(org.bouncycastle.asn1.y yVar, boolean z10) {
        return y(org.bouncycastle.asn1.y.L(yVar, true));
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        return new d1(false, this.f55764b, this.f55763a);
    }

    public String toString() {
        String obj;
        String str;
        String d10 = org.bouncycastle.util.i.d();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DistributionPointName: [");
        stringBuffer.append(d10);
        if (this.f55764b == 0) {
            obj = this.f55763a.toString();
            str = "fullName";
        } else {
            obj = this.f55763a.toString();
            str = "nameRelativeToCRLIssuer";
        }
        x(stringBuffer, d10, str, obj);
        stringBuffer.append("]");
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
