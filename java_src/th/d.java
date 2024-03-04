package th;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
abstract class d<T> extends AtomicReference<T> implements b {
    private static final long serialVersionUID = 6537757548749041217L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(T t10) {
        super(xh.b.e(t10, "value is null"));
    }

    protected abstract void a(T t10);

    @Override // th.b
    public final void dispose() {
        T andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        a(andSet);
    }

    @Override // th.b
    public final boolean isDisposed() {
        return get() == null;
    }
}
