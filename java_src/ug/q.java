package ug;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public interface q<V> extends Future<V> {
    Throwable L();

    V Q();

    boolean await(long j10, TimeUnit timeUnit) throws InterruptedException;

    q<V> c(r<? extends q<? super V>> rVar);

    q<V> c0() throws InterruptedException;

    @Override // java.util.concurrent.Future
    boolean cancel(boolean z10);

    q<V> f(r<? extends q<? super V>> rVar);

    boolean p0();
}
