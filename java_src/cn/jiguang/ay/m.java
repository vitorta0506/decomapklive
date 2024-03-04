package cn.jiguang.ay;
/* loaded from: classes.dex */
public class m extends i {

    /* renamed from: e  reason: collision with root package name */
    private int f2285e;

    /* renamed from: f  reason: collision with root package name */
    private int f2286f;

    /* renamed from: g  reason: collision with root package name */
    private int f2287g;

    /* renamed from: h  reason: collision with root package name */
    private g f2288h;

    @Override // cn.jiguang.ay.i
    void a(b bVar) {
        this.f2285e = bVar.g();
        this.f2286f = bVar.g();
        this.f2287g = bVar.g();
        this.f2288h = new g(bVar);
    }

    @Override // cn.jiguang.ay.i
    void a(c cVar, a aVar, boolean z10) {
        cVar.c(this.f2285e);
        cVar.c(this.f2286f);
        cVar.c(this.f2287g);
        this.f2288h.a(cVar, (a) null, z10);
    }

    @Override // cn.jiguang.ay.i
    String b() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f2285e + " ");
        stringBuffer.append(this.f2286f + " ");
        stringBuffer.append(this.f2287g + " ");
        stringBuffer.append(this.f2288h);
        return stringBuffer.toString();
    }

    public int j() {
        return this.f2287g;
    }

    public g k() {
        return this.f2288h;
    }
}
