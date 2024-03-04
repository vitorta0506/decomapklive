package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
final class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> AtomicReferenceArray<E> a(int i9) {
        return new AtomicReferenceArray<>(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(long j10, long j11) {
        return (int) (j10 & j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(long j10) {
        return (int) j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(AtomicReferenceArray<?> atomicReferenceArray) {
        return atomicReferenceArray.length();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> E e(AtomicReferenceArray<E> atomicReferenceArray, int i9) {
        return atomicReferenceArray.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(long j10, long j11) {
        return ((int) (j10 & j11)) >> 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(AtomicReferenceArray atomicReferenceArray, int i9, Object obj) {
        atomicReferenceArray.lazySet(i9, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> void h(AtomicReferenceArray<E> atomicReferenceArray, int i9, E e10) {
        atomicReferenceArray.lazySet(i9, e10);
    }
}
