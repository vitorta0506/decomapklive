package q1;
/* loaded from: classes.dex */
public final class c<T> implements b<T>, p1.a<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final c<Object> f57102b = new c<>(null);

    /* renamed from: a  reason: collision with root package name */
    private final T f57103a;

    private c(T t10) {
        this.f57103a = t10;
    }

    public static <T> b<T> a(T t10) {
        return new c(d.c(t10, "instance cannot be null"));
    }

    @Override // fi.a
    public T get() {
        return this.f57103a;
    }
}
