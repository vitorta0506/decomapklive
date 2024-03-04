package eh;
/* loaded from: classes5.dex */
final class z1<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f39420a;

    /* renamed from: b  reason: collision with root package name */
    private int f39421b;

    private z1(T t10) {
        this.f39420a = t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> z1<T> e(T t10) {
        com.google.common.base.o.t(t10, "instance");
        return new z1<>(t10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T a() {
        return this.f39420a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f39421b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        com.google.common.base.o.A(this.f39421b > 0, "reference reached 0");
        this.f39421b--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f39421b++;
    }
}
