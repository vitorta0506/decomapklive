package a6;
/* loaded from: classes2.dex */
public class u<T> implements k6.b<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f697c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f698a = f697c;

    /* renamed from: b  reason: collision with root package name */
    private volatile k6.b<T> f699b;

    public u(k6.b<T> bVar) {
        this.f699b = bVar;
    }

    @Override // k6.b
    public T get() {
        T t10 = (T) this.f698a;
        Object obj = f697c;
        if (t10 == obj) {
            synchronized (this) {
                t10 = this.f698a;
                if (t10 == obj) {
                    t10 = this.f699b.get();
                    this.f698a = t10;
                    this.f699b = null;
                }
            }
        }
        return t10;
    }
}
