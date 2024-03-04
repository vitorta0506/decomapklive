package f;

import androidx.annotation.Nullable;
import java.util.Collections;
/* loaded from: classes.dex */
public class q<K, A> extends a<K, A> {

    /* renamed from: i  reason: collision with root package name */
    private final n.b<A> f39565i;

    /* renamed from: j  reason: collision with root package name */
    private final A f39566j;

    public q(n.c<A> cVar) {
        this(cVar, null);
    }

    @Override // f.a
    float c() {
        return 1.0f;
    }

    @Override // f.a
    public A h() {
        n.c<A> cVar = this.f39512e;
        A a10 = this.f39566j;
        return cVar.b(0.0f, 0.0f, a10, a10, f(), f(), f());
    }

    @Override // f.a
    A i(n.a<K> aVar, float f10) {
        return h();
    }

    @Override // f.a
    public void k() {
        if (this.f39512e != null) {
            super.k();
        }
    }

    @Override // f.a
    public void m(float f10) {
        this.f39511d = f10;
    }

    public q(n.c<A> cVar, @Nullable A a10) {
        super(Collections.emptyList());
        this.f39565i = new n.b<>();
        n(cVar);
        this.f39566j = a10;
    }
}
