package n;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* loaded from: classes.dex */
public class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final b<T> f55198a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private f.a<?, ?> f55199b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    protected T f55200c;

    public c() {
        this.f55198a = new b<>();
        this.f55200c = null;
    }

    @Nullable
    public T a(b<T> bVar) {
        return this.f55200c;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final T b(float f10, float f11, T t10, T t11, float f12, float f13, float f14) {
        return a(this.f55198a.a(f10, f11, t10, t11, f12, f13, f14));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void c(@Nullable f.a<?, ?> aVar) {
        this.f55199b = aVar;
    }

    public c(@Nullable T t10) {
        this.f55198a = new b<>();
        this.f55200c = t10;
    }
}
