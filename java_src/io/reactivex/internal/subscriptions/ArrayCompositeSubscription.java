package io.reactivex.internal.subscriptions;

import il.c;
import java.util.concurrent.atomic.AtomicReferenceArray;
import th.b;
/* loaded from: classes7.dex */
public final class ArrayCompositeSubscription extends AtomicReferenceArray<c> implements b {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeSubscription(int i9) {
        super(i9);
    }

    @Override // th.b
    public void dispose() {
        c andSet;
        if (get(0) != SubscriptionHelper.CANCELLED) {
            int length = length();
            for (int i9 = 0; i9 < length; i9++) {
                c cVar = get(i9);
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (cVar != subscriptionHelper && (andSet = getAndSet(i9, subscriptionHelper)) != subscriptionHelper && andSet != null) {
                    andSet.cancel();
                }
            }
        }
    }

    @Override // th.b
    public boolean isDisposed() {
        return get(0) == SubscriptionHelper.CANCELLED;
    }

    public c replaceResource(int i9, c cVar) {
        c cVar2;
        do {
            cVar2 = get(i9);
            if (cVar2 == SubscriptionHelper.CANCELLED) {
                if (cVar != null) {
                    cVar.cancel();
                    return null;
                }
                return null;
            }
        } while (!compareAndSet(i9, cVar2, cVar));
        return cVar2;
    }

    public boolean setResource(int i9, c cVar) {
        c cVar2;
        do {
            cVar2 = get(i9);
            if (cVar2 == SubscriptionHelper.CANCELLED) {
                if (cVar != null) {
                    cVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!compareAndSet(i9, cVar2, cVar));
        if (cVar2 != null) {
            cVar2.cancel();
            return true;
        }
        return true;
    }
}
