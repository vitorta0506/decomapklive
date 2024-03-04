package sk;
/* loaded from: classes7.dex */
public class c extends a {

    /* renamed from: c  reason: collision with root package name */
    private int f57975c;

    /* renamed from: d  reason: collision with root package name */
    private int f57976d;

    /* renamed from: e  reason: collision with root package name */
    private cl.a f57977e;

    public c(int i9, int i10, cl.a aVar, String str) {
        super(false, str);
        this.f57975c = i9;
        this.f57976d = i10;
        this.f57977e = new cl.a(aVar);
    }

    public cl.a c() {
        return this.f57977e;
    }

    public int d() {
        return this.f57977e.b();
    }

    public int e() {
        return this.f57975c;
    }

    public int f() {
        return this.f57976d;
    }
}
