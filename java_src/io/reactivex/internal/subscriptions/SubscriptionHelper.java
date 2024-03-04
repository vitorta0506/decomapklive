package io.reactivex.internal.subscriptions;

import ci.a;
import il.c;
import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.util.b;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public enum SubscriptionHelper implements c {
    CANCELLED;

    public static boolean cancel(AtomicReference<c> atomicReference) {
        c andSet;
        c cVar = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (cVar == subscriptionHelper || (andSet = atomicReference.getAndSet(subscriptionHelper)) == subscriptionHelper) {
            return false;
        }
        if (andSet != null) {
            andSet.cancel();
            return true;
        }
        return true;
    }

    public static void deferredRequest(AtomicReference<c> atomicReference, AtomicLong atomicLong, long j10) {
        c cVar = atomicReference.get();
        if (cVar != null) {
            cVar.request(j10);
        } else if (validate(j10)) {
            b.a(atomicLong, j10);
            c cVar2 = atomicReference.get();
            if (cVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    cVar2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<c> atomicReference, AtomicLong atomicLong, c cVar) {
        if (setOnce(atomicReference, cVar)) {
            long andSet = atomicLong.getAndSet(0L);
            if (andSet != 0) {
                cVar.request(andSet);
                return true;
            }
            return true;
        }
        return false;
    }

    public static boolean replace(AtomicReference<c> atomicReference, c cVar) {
        c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == CANCELLED) {
                if (cVar != null) {
                    cVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(cVar2, cVar));
        return true;
    }

    public static void reportMoreProduced(long j10) {
        a.s(new ProtocolViolationException("More produced than requested: " + j10));
    }

    public static void reportSubscriptionSet() {
        a.s(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<c> atomicReference, c cVar) {
        c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == CANCELLED) {
                if (cVar != null) {
                    cVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(cVar2, cVar));
        if (cVar2 != null) {
            cVar2.cancel();
            return true;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<c> atomicReference, c cVar) {
        xh.b.e(cVar, "s is null");
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        cVar.cancel();
        if (atomicReference.get() != CANCELLED) {
            reportSubscriptionSet();
            return false;
        }
        return false;
    }

    public static boolean validate(c cVar, c cVar2) {
        if (cVar2 == null) {
            a.s(new NullPointerException("next is null"));
            return false;
        } else if (cVar != null) {
            cVar2.cancel();
            reportSubscriptionSet();
            return false;
        } else {
            return true;
        }
    }

    @Override // il.c
    public void cancel() {
    }

    @Override // il.c
    public void request(long j10) {
    }

    public static boolean validate(long j10) {
        if (j10 <= 0) {
            a.s(new IllegalArgumentException("n > 0 required but it was " + j10));
            return false;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<c> atomicReference, c cVar, long j10) {
        if (setOnce(atomicReference, cVar)) {
            cVar.request(j10);
            return true;
        }
        return false;
    }
}
