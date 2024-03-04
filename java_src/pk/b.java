package pk;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
/* loaded from: classes7.dex */
public class b extends org.bouncycastle.asn1.m {

    /* renamed from: a  reason: collision with root package name */
    private final int f56999a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57000b;

    /* renamed from: c  reason: collision with root package name */
    private final cl.a f57001c;

    /* renamed from: d  reason: collision with root package name */
    private final oj.a f57002d;

    public b(int i9, int i10, cl.a aVar, oj.a aVar2) {
        this.f56999a = i9;
        this.f57000b = i10;
        this.f57001c = new cl.a(aVar.c());
        this.f57002d = aVar2;
    }

    private b(s sVar) {
        this.f56999a = ((org.bouncycastle.asn1.k) sVar.M(0)).R();
        this.f57000b = ((org.bouncycastle.asn1.k) sVar.M(1)).R();
        this.f57001c = new cl.a(((org.bouncycastle.asn1.o) sVar.M(2)).M());
        this.f57002d = oj.a.y(sVar.M(3));
    }

    public static b z(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(s.K(obj));
        }
        return null;
    }

    public int B() {
        return this.f56999a;
    }

    public int F() {
        return this.f57000b;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
        fVar.a(new org.bouncycastle.asn1.k(this.f56999a));
        fVar.a(new org.bouncycastle.asn1.k(this.f57000b));
        fVar.a(new w0(this.f57001c.c()));
        fVar.a(this.f57002d);
        return new a1(fVar);
    }

    public oj.a x() {
        return this.f57002d;
    }

    public cl.a y() {
        return this.f57001c;
    }
}
