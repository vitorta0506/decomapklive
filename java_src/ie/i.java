package ie;
/* loaded from: classes4.dex */
public final class i implements eg.c<h> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<String> f41051a;

    private i(fi.a<String> aVar) {
        this.f41051a = aVar;
    }

    public static eg.c<h> a(fi.a<String> aVar) {
        return new i(aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new h(this.f41051a.get());
    }
}
