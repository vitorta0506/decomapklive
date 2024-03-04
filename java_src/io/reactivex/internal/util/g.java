package io.reactivex.internal.util;

import io.reactivex.r;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class g {
    public static void a(il.b<?> bVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable terminate = atomicThrowable.terminate();
            if (terminate != null) {
                bVar.onError(terminate);
            } else {
                bVar.onComplete();
            }
        }
    }

    public static void b(r<?> rVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable terminate = atomicThrowable.terminate();
            if (terminate != null) {
                rVar.onError(terminate);
            } else {
                rVar.onComplete();
            }
        }
    }

    public static void c(il.b<?> bVar, Throwable th2, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicThrowable.addThrowable(th2)) {
            if (atomicInteger.getAndIncrement() == 0) {
                bVar.onError(atomicThrowable.terminate());
                return;
            }
            return;
        }
        ci.a.s(th2);
    }

    public static void d(r<?> rVar, Throwable th2, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicThrowable.addThrowable(th2)) {
            if (atomicInteger.getAndIncrement() == 0) {
                rVar.onError(atomicThrowable.terminate());
                return;
            }
            return;
        }
        ci.a.s(th2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void e(il.b<? super T> bVar, T t10, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            bVar.onNext(t10);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable terminate = atomicThrowable.terminate();
                if (terminate != null) {
                    bVar.onError(terminate);
                } else {
                    bVar.onComplete();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void f(r<? super T> rVar, T t10, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            rVar.onNext(t10);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable terminate = atomicThrowable.terminate();
                if (terminate != null) {
                    rVar.onError(terminate);
                } else {
                    rVar.onComplete();
                }
            }
        }
    }
}
