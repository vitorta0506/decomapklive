package oj;

import java.io.IOException;
import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.t0;
/* loaded from: classes7.dex */
public class n extends org.bouncycastle.asn1.m implements org.bouncycastle.asn1.d {

    /* renamed from: a  reason: collision with root package name */
    private org.bouncycastle.asn1.e f55793a;

    /* renamed from: b  reason: collision with root package name */
    private int f55794b;

    public n(int i9, org.bouncycastle.asn1.e eVar) {
        this.f55793a = eVar;
        this.f55794b = i9;
    }

    public n(mj.c cVar) {
        this.f55793a = cVar;
        this.f55794b = 4;
    }

    public static n x(Object obj) {
        if (obj == null || (obj instanceof n)) {
            return (n) obj;
        }
        if (!(obj instanceof org.bouncycastle.asn1.y)) {
            if (obj instanceof byte[]) {
                try {
                    return x(org.bouncycastle.asn1.r.G((byte[]) obj));
                } catch (IOException unused) {
                    throw new IllegalArgumentException("unable to parse encoded general name");
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        org.bouncycastle.asn1.y yVar = (org.bouncycastle.asn1.y) obj;
        int N = yVar.N();
        switch (N) {
            case 0:
            case 3:
            case 5:
                return new n(N, org.bouncycastle.asn1.s.L(yVar, false));
            case 1:
            case 2:
            case 6:
                return new n(N, t0.L(yVar, false));
            case 4:
                return new n(N, mj.c.z(yVar, true));
            case 7:
                return new n(N, org.bouncycastle.asn1.o.L(yVar, false));
            case 8:
                return new n(N, org.bouncycastle.asn1.n.Q(yVar, false));
            default:
                throw new IllegalArgumentException("unknown tag: " + N);
        }
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        int i9 = this.f55794b;
        return new d1(i9 == 4, i9, this.f55793a);
    }

    public String toString() {
        String g10;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f55794b);
        stringBuffer.append(": ");
        int i9 = this.f55794b;
        if (i9 != 1 && i9 != 2) {
            if (i9 == 4) {
                g10 = mj.c.x(this.f55793a).toString();
            } else if (i9 != 6) {
                g10 = this.f55793a.toString();
            }
            stringBuffer.append(g10);
            return stringBuffer.toString();
        }
        g10 = t0.K(this.f55793a).g();
        stringBuffer.append(g10);
        return stringBuffer.toString();
    }

    public org.bouncycastle.asn1.e y() {
        return this.f55793a;
    }

    public int z() {
        return this.f55794b;
    }
}
