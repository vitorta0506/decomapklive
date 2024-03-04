package q1;
/* loaded from: classes.dex */
public final class a<T> implements fi.a<T>, p1.a<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f57099c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile fi.a<T> f57100a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f57101b = f57099c;

    private a(fi.a<T> aVar) {
        this.f57100a = aVar;
    }

    public static <P extends fi.a<T>, T> p1.a<T> a(P p10) {
        if (p10 instanceof p1.a) {
            return (p1.a) p10;
        }
        return new a((fi.a) d.b(p10));
    }

    public static <P extends fi.a<T>, T> fi.a<T> b(P p10) {
        d.b(p10);
        return p10 instanceof a ? p10 : new a(p10);
    }

    public static Object c(Object obj, Object obj2) {
        if (!(obj != f57099c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // fi.a
    public T get() {
        T t10 = (T) this.f57101b;
        Object obj = f57099c;
        if (t10 == obj) {
            synchronized (this) {
                t10 = this.f57101b;
                if (t10 == obj) {
                    t10 = this.f57100a.get();
                    this.f57101b = c(this.f57101b, t10);
                    this.f57100a = null;
                }
            }
        }
        return t10;
    }
}
