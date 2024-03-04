package n1;
/* loaded from: classes.dex */
public final class v implements q1.b<t> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<y1.a> f55287a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<y1.a> f55288b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<u1.e> f55289c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<v1.o> f55290d;

    /* renamed from: e  reason: collision with root package name */
    private final fi.a<v1.s> f55291e;

    public v(fi.a<y1.a> aVar, fi.a<y1.a> aVar2, fi.a<u1.e> aVar3, fi.a<v1.o> aVar4, fi.a<v1.s> aVar5) {
        this.f55287a = aVar;
        this.f55288b = aVar2;
        this.f55289c = aVar3;
        this.f55290d = aVar4;
        this.f55291e = aVar5;
    }

    public static v a(fi.a<y1.a> aVar, fi.a<y1.a> aVar2, fi.a<u1.e> aVar3, fi.a<v1.o> aVar4, fi.a<v1.s> aVar5) {
        return new v(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static t c(y1.a aVar, y1.a aVar2, u1.e eVar, v1.o oVar, v1.s sVar) {
        return new t(aVar, aVar2, eVar, oVar, sVar);
    }

    @Override // fi.a
    /* renamed from: b */
    public t get() {
        return c(this.f55287a.get(), this.f55288b.get(), this.f55289c.get(), this.f55290d.get(), this.f55291e.get());
    }
}
