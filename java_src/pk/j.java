package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class j extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final org.bouncycastle.asn1.k f57060a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57061b;

    /* renamed from: c  reason: collision with root package name */
    private final oj.a f57062c;

    public j(int i9, oj.a aVar) {
        this.f57060a = new org.bouncycastle.asn1.k(0L);
        this.f57061b = i9;
        this.f57062c = aVar;
    }

    private j(s sVar) {
        this.f57060a = org.bouncycastle.asn1.k.K(sVar.M(0));
        this.f57061b = org.bouncycastle.asn1.k.K(sVar.M(1)).R();
        this.f57062c = oj.a.y(sVar.M(2));
    }

    public static j y(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(this.f57060a);
        fVar.a(new org.bouncycastle.asn1.k(this.f57061b));
        fVar.a(this.f57062c);
        return new a1(fVar);
    }

    public int x() {
        return this.f57061b;
    }

    public oj.a z() {
        return this.f57062c;
    }
}
