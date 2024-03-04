package gj;

import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.d1;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.asn1.y;
/* loaded from: classes7.dex */
public class g extends m {

    /* renamed from: e  reason: collision with root package name */
    public static final oj.a f40186e;

    /* renamed from: f  reason: collision with root package name */
    public static final oj.a f40187f;

    /* renamed from: g  reason: collision with root package name */
    public static final k f40188g;

    /* renamed from: h  reason: collision with root package name */
    public static final k f40189h;

    /* renamed from: a  reason: collision with root package name */
    private oj.a f40190a;

    /* renamed from: b  reason: collision with root package name */
    private oj.a f40191b;

    /* renamed from: c  reason: collision with root package name */
    private k f40192c;

    /* renamed from: d  reason: collision with root package name */
    private k f40193d;

    static {
        oj.a aVar = new oj.a(fj.b.f39757i, u0.f55980a);
        f40186e = aVar;
        f40187f = new oj.a(c.f40145s0, aVar);
        f40188g = new k(20L);
        f40189h = new k(1L);
    }

    public g() {
        this.f40190a = f40186e;
        this.f40191b = f40187f;
        this.f40192c = f40188g;
        this.f40193d = f40189h;
    }

    private g(s sVar) {
        this.f40190a = f40186e;
        this.f40191b = f40187f;
        this.f40192c = f40188g;
        this.f40193d = f40189h;
        for (int i9 = 0; i9 != sVar.size(); i9++) {
            y yVar = (y) sVar.M(i9);
            int N = yVar.N();
            if (N == 0) {
                this.f40190a = oj.a.z(yVar, true);
            } else if (N == 1) {
                this.f40191b = oj.a.z(yVar, true);
            } else if (N == 2) {
                this.f40192c = k.L(yVar, true);
            } else if (N != 3) {
                throw new IllegalArgumentException("unknown tag");
            } else {
                this.f40193d = k.L(yVar, true);
            }
        }
    }

    public static g y(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(s.K(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public r f() {
        org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f(4);
        if (!this.f40190a.equals(f40186e)) {
            fVar.a(new d1(true, 0, this.f40190a));
        }
        if (!this.f40191b.equals(f40187f)) {
            fVar.a(new d1(true, 1, this.f40191b));
        }
        if (!this.f40192c.F(f40188g)) {
            fVar.a(new d1(true, 2, this.f40192c));
        }
        if (!this.f40193d.F(f40189h)) {
            fVar.a(new d1(true, 3, this.f40193d));
        }
        return new a1(fVar);
    }

    public oj.a x() {
        return this.f40190a;
    }
}
