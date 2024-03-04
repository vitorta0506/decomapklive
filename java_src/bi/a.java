package bi;

import io.reactivex.internal.operators.observable.f2;
import io.reactivex.internal.operators.observable.g2;
import io.reactivex.internal.operators.observable.n2;
import io.reactivex.k;
import vh.g;
/* loaded from: classes7.dex */
public abstract class a<T> extends k<T> {
    private a<T> d() {
        return this instanceof g2 ? ci.a.k(new f2(((g2) this).a())) : this;
    }

    public abstract void c(g<? super th.b> gVar);

    public k<T> e() {
        return ci.a.o(new n2(d()));
    }
}
