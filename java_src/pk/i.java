package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class i extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final org.bouncycastle.asn1.k f57058a;

    /* renamed from: b  reason: collision with root package name */
    private final oj.a f57059b;

    public i(oj.a aVar) {
        this.f57058a = new org.bouncycastle.asn1.k(0L);
        this.f57059b = aVar;
    }

    private i(s sVar) {
        this.f57058a = org.bouncycastle.asn1.k.K(sVar.M(0));
        this.f57059b = oj.a.y(sVar.M(1));
    }

    public static final i x(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(this.f57058a);
        fVar.a(this.f57059b);
        return new a1(fVar);
    }

    public oj.a y() {
        return this.f57059b;
    }
}
