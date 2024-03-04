package th;

import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes7.dex */
public final class c {
    public static b a() {
        return EmptyDisposable.INSTANCE;
    }

    public static b b(Runnable runnable) {
        xh.b.e(runnable, "run is null");
        return new e(runnable);
    }
}
