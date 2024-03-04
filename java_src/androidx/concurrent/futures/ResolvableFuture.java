package androidx.concurrent.futures;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.common.util.concurrent.d0;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ResolvableFuture<V> extends AbstractResolvableFuture<V> {
    private ResolvableFuture() {
    }

    public static <V> ResolvableFuture<V> create() {
        return new ResolvableFuture<>();
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public boolean set(@Nullable V v10) {
        return super.set(v10);
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public boolean setException(Throwable th2) {
        return super.setException(th2);
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public boolean setFuture(d0<? extends V> d0Var) {
        return super.setFuture(d0Var);
    }
}
