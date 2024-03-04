package io.reactivex.internal.disposables;

import io.reactivex.exceptions.a;
import java.util.concurrent.atomic.AtomicReference;
import th.b;
import vh.f;
/* loaded from: classes7.dex */
public final class CancellableDisposable extends AtomicReference<f> implements b {
    private static final long serialVersionUID = 5718521705281392066L;

    public CancellableDisposable(f fVar) {
        super(fVar);
    }

    @Override // th.b
    public void dispose() {
        f andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        try {
            andSet.cancel();
        } catch (Exception e10) {
            a.b(e10);
            ci.a.s(e10);
        }
    }

    @Override // th.b
    public boolean isDisposed() {
        return get() == null;
    }
}
