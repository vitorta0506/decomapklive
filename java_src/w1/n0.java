package w1;
/* loaded from: classes.dex */
public final class n0 implements q1.b<m0> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<y1.a> f59319a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<y1.a> f59320b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<e> f59321c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<t0> f59322d;

    /* renamed from: e  reason: collision with root package name */
    private final fi.a<String> f59323e;

    public n0(fi.a<y1.a> aVar, fi.a<y1.a> aVar2, fi.a<e> aVar3, fi.a<t0> aVar4, fi.a<String> aVar5) {
        this.f59319a = aVar;
        this.f59320b = aVar2;
        this.f59321c = aVar3;
        this.f59322d = aVar4;
        this.f59323e = aVar5;
    }

    public static n0 a(fi.a<y1.a> aVar, fi.a<y1.a> aVar2, fi.a<e> aVar3, fi.a<t0> aVar4, fi.a<String> aVar5) {
        return new n0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static m0 c(y1.a aVar, y1.a aVar2, Object obj, Object obj2, p1.a<String> aVar3) {
        return new m0(aVar, aVar2, (e) obj, (t0) obj2, aVar3);
    }

    @Override // fi.a
    /* renamed from: b */
    public m0 get() {
        return c(this.f59319a.get(), this.f59320b.get(), this.f59321c.get(), this.f59322d.get(), q1.a.a(this.f59323e));
    }
}
