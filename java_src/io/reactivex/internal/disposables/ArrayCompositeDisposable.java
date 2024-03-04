package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReferenceArray;
import th.b;
/* loaded from: classes7.dex */
public final class ArrayCompositeDisposable extends AtomicReferenceArray<b> implements b {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeDisposable(int i9) {
        super(i9);
    }

    @Override // th.b
    public void dispose() {
        b andSet;
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i9 = 0; i9 < length; i9++) {
                b bVar = get(i9);
                DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                if (bVar != disposableHelper && (andSet = getAndSet(i9, disposableHelper)) != disposableHelper && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override // th.b
    public boolean isDisposed() {
        return get(0) == DisposableHelper.DISPOSED;
    }

    public b replaceResource(int i9, b bVar) {
        b bVar2;
        do {
            bVar2 = get(i9);
            if (bVar2 == DisposableHelper.DISPOSED) {
                bVar.dispose();
                return null;
            }
        } while (!compareAndSet(i9, bVar2, bVar));
        return bVar2;
    }

    public boolean setResource(int i9, b bVar) {
        b bVar2;
        do {
            bVar2 = get(i9);
            if (bVar2 == DisposableHelper.DISPOSED) {
                bVar.dispose();
                return false;
            }
        } while (!compareAndSet(i9, bVar2, bVar));
        if (bVar2 != null) {
            bVar2.dispose();
            return true;
        }
        return true;
    }
}
