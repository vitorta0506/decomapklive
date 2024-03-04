package we;
/* loaded from: classes4.dex */
public class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final a f59467a;

    /* renamed from: b  reason: collision with root package name */
    private final d<T> f59468b;

    /* renamed from: c  reason: collision with root package name */
    private final String f59469c;

    public c(a aVar, d<T> dVar, String str) {
        this.f59467a = aVar;
        this.f59468b = dVar;
        this.f59469c = str;
    }

    public void a() {
        this.f59467a.edit().remove(this.f59469c).commit();
    }

    public T b() {
        return this.f59468b.a(this.f59467a.get().getString(this.f59469c, null));
    }

    public void c(T t10) {
        a aVar = this.f59467a;
        aVar.a(aVar.edit().putString(this.f59469c, this.f59468b.serialize(t10)));
    }
}
