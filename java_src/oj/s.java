package oj;

import kotlin.UByte;
import org.bouncycastle.asn1.n0;
/* loaded from: classes7.dex */
public class s extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private n0 f55810a;

    private s(n0 n0Var) {
        this.f55810a = n0Var;
    }

    public static s x(Object obj) {
        if (obj instanceof s) {
            return (s) obj;
        }
        if (obj != null) {
            return new s(n0.P(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        return this.f55810a;
    }

    public String toString() {
        StringBuilder sb2;
        int i9;
        byte[] L = this.f55810a.L();
        if (L.length == 1) {
            sb2 = new StringBuilder();
            sb2.append("KeyUsage: 0x");
            i9 = L[0] & UByte.MAX_VALUE;
        } else {
            sb2 = new StringBuilder();
            sb2.append("KeyUsage: 0x");
            i9 = (L[0] & UByte.MAX_VALUE) | ((L[1] & UByte.MAX_VALUE) << 8);
        }
        sb2.append(Integer.toHexString(i9));
        return sb2.toString();
    }
}
