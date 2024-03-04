package mj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class a extends m {

    /* renamed from: a  reason: collision with root package name */
    private n f55159a;

    /* renamed from: b  reason: collision with root package name */
    private e f55160b;

    private a(s sVar) {
        this.f55159a = (n) sVar.M(0);
        this.f55160b = sVar.M(1);
    }

    public static a x(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(s.K(obj));
        }
        throw new IllegalArgumentException("null value in getInstance()");
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        f fVar = new f(2);
        fVar.a(this.f55159a);
        fVar.a(this.f55160b);
        return new a1(fVar);
    }

    public n y() {
        return this.f55159a;
    }

    public e z() {
        return this.f55160b;
    }
}
