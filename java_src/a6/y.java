package a6;

import androidx.annotation.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class y<T> implements k6.b<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final k6.a<Object> f704c = new k6.a() { // from class: a6.w
        @Override // k6.a
        public final void a(k6.b bVar) {
            y.d(bVar);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final k6.b<Object> f705d = new k6.b() { // from class: a6.x
        @Override // k6.b
        public final Object get() {
            Object e10;
            e10 = y.e();
            return e10;
        }
    };
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private k6.a<T> f706a;

    /* renamed from: b  reason: collision with root package name */
    private volatile k6.b<T> f707b;

    private y(k6.a<T> aVar, k6.b<T> bVar) {
        this.f706a = aVar;
        this.f707b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> y<T> c() {
        return new y<>(f704c, f705d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(k6.b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object e() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(k6.b<T> bVar) {
        k6.a<T> aVar;
        if (this.f707b == f705d) {
            synchronized (this) {
                aVar = this.f706a;
                this.f706a = null;
                this.f707b = bVar;
            }
            aVar.a(bVar);
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }

    @Override // k6.b
    public T get() {
        return this.f707b.get();
    }
}
