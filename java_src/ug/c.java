package ug;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes5.dex */
public abstract class c<V> implements q<V> {
    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        c0();
        Throwable L = L();
        if (L == null) {
            return Q();
        }
        if (L instanceof CancellationException) {
            throw ((CancellationException) L);
        }
        throw new ExecutionException(L);
    }

    @Override // java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (await(j10, timeUnit)) {
            Throwable L = L();
            if (L == null) {
                return Q();
            }
            if (L instanceof CancellationException) {
                throw ((CancellationException) L);
            }
            throw new ExecutionException(L);
        }
        throw new TimeoutException();
    }
}
