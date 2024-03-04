package eg;
/* loaded from: classes5.dex */
public final class b<T> implements fi.a<T>, dg.a<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f38586c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile fi.a<T> f38587a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f38588b = f38586c;

    private b(fi.a<T> aVar) {
        this.f38587a = aVar;
    }

    public static <P extends fi.a<T>, T> dg.a<T> a(P p10) {
        if (p10 instanceof dg.a) {
            return (dg.a) p10;
        }
        return new b((fi.a) d.a(p10));
    }

    public static <P extends fi.a<T>, T> fi.a<T> b(P p10) {
        d.a(p10);
        return p10 instanceof b ? p10 : new b(p10);
    }

    private static Object c(Object obj, Object obj2) {
        if (!(obj != f38586c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // fi.a
    public T get() {
        T t10 = (T) this.f38588b;
        Object obj = f38586c;
        if (t10 == obj) {
            synchronized (this) {
                t10 = this.f38588b;
                if (t10 == obj) {
                    t10 = this.f38587a.get();
                    this.f38588b = c(this.f38588b, t10);
                    this.f38587a = null;
                }
            }
        }
        return t10;
    }
}
