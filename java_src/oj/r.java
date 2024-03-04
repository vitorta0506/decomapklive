package oj;

import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.tencent.bugly.Bugly;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class r extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private k f55803a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f55804b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f55805c;

    /* renamed from: d  reason: collision with root package name */
    private u f55806d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55807e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f55808f;

    /* renamed from: g  reason: collision with root package name */
    private org.bouncycastle.asn1.s f55809g;

    private r(org.bouncycastle.asn1.s sVar) {
        this.f55809g = sVar;
        for (int i9 = 0; i9 != sVar.size(); i9++) {
            org.bouncycastle.asn1.y K = org.bouncycastle.asn1.y.K(sVar.M(i9));
            int N = K.N();
            if (N == 0) {
                this.f55803a = k.z(K, true);
            } else if (N == 1) {
                this.f55804b = org.bouncycastle.asn1.c.M(K, false).O();
            } else if (N == 2) {
                this.f55805c = org.bouncycastle.asn1.c.M(K, false).O();
            } else if (N == 3) {
                this.f55806d = new u(n0.Q(K, false));
            } else if (N == 4) {
                this.f55807e = org.bouncycastle.asn1.c.M(K, false).O();
            } else if (N != 5) {
                throw new IllegalArgumentException("unknown tag in IssuingDistributionPoint");
            } else {
                this.f55808f = org.bouncycastle.asn1.c.M(K, false).O();
            }
        }
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

    private String y(boolean z10) {
        return z10 ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : Bugly.SDK_IS_DEV;
    }

    public static r z(Object obj) {
        if (obj instanceof r) {
            return (r) obj;
        }
        if (obj != null) {
            return new r(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    public boolean B() {
        return this.f55807e;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        return this.f55809g;
    }

    public String toString() {
        String d10 = org.bouncycastle.util.i.d();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("IssuingDistributionPoint: [");
        stringBuffer.append(d10);
        k kVar = this.f55803a;
        if (kVar != null) {
            x(stringBuffer, d10, "distributionPoint", kVar.toString());
        }
        boolean z10 = this.f55804b;
        if (z10) {
            x(stringBuffer, d10, "onlyContainsUserCerts", y(z10));
        }
        boolean z11 = this.f55805c;
        if (z11) {
            x(stringBuffer, d10, "onlyContainsCACerts", y(z11));
        }
        u uVar = this.f55806d;
        if (uVar != null) {
            x(stringBuffer, d10, "onlySomeReasons", uVar.toString());
        }
        boolean z12 = this.f55808f;
        if (z12) {
            x(stringBuffer, d10, "onlyContainsAttributeCerts", y(z12));
        }
        boolean z13 = this.f55807e;
        if (z13) {
            x(stringBuffer, d10, "indirectCRL", y(z13));
        }
        stringBuffer.append("]");
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
