package eg;
/* loaded from: classes5.dex */
public final class a<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    private fi.a<T> f38585a;

    public static <T> void a(fi.a<T> aVar, fi.a<T> aVar2) {
        d.a(aVar2);
        a aVar3 = (a) aVar;
        if (aVar3.f38585a == null) {
            aVar3.f38585a = aVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Deprecated
    public void b(fi.a<T> aVar) {
        a(this, aVar);
    }

    @Override // fi.a
    public T get() {
        fi.a<T> aVar = this.f38585a;
        if (aVar != null) {
            return aVar.get();
        }
        throw new IllegalStateException();
    }
}
