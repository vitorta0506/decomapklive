package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class k extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final org.bouncycastle.asn1.k f57063a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57064b;

    /* renamed from: c  reason: collision with root package name */
    private final int f57065c;

    /* renamed from: d  reason: collision with root package name */
    private final oj.a f57066d;

    public k(int i9, int i10, oj.a aVar) {
        this.f57063a = new org.bouncycastle.asn1.k(0L);
        this.f57064b = i9;
        this.f57065c = i10;
        this.f57066d = aVar;
    }

    private k(s sVar) {
        this.f57063a = org.bouncycastle.asn1.k.K(sVar.M(0));
        this.f57064b = org.bouncycastle.asn1.k.K(sVar.M(1)).R();
        this.f57065c = org.bouncycastle.asn1.k.K(sVar.M(2)).R();
        this.f57066d = oj.a.y(sVar.M(3));
    }

    public static k y(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj != null) {
            return new k(s.K(obj));
        }
        return null;
    }

    public oj.a B() {
        return this.f57066d;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(this.f57063a);
        fVar.a(new org.bouncycastle.asn1.k(this.f57064b));
        fVar.a(new org.bouncycastle.asn1.k(this.f57065c));
        fVar.a(this.f57066d);
        return new a1(fVar);
    }

    public int x() {
        return this.f57064b;
    }

    public int z() {
        return this.f57065c;
    }
}
