package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
public class j<E> extends n<E> {
    public j(int i9) {
        super(i9);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.b, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // java.util.Queue
    public boolean offer(E e10) {
        long d10;
        Objects.requireNonNull(e10);
        int i9 = this.f45127b;
        long m10 = m();
        do {
            d10 = d();
            if (d10 >= m10) {
                m10 = f() + i9 + 1;
                if (d10 >= m10) {
                    return false;
                }
                n(m10);
            }
        } while (!g(d10, 1 + d10));
        a.g(this.f45126a, a.b(d10, i9), e10);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        AtomicReferenceArray<E> atomicReferenceArray = this.f45126a;
        long u10 = u();
        int b10 = a.b(u10, this.f45127b);
        E e10 = (E) a.e(atomicReferenceArray, b10);
        if (e10 != null) {
            return e10;
        }
        if (u10 != d()) {
            do {
                e10 = (E) a.e(atomicReferenceArray, b10);
            } while (e10 == null);
            return e10;
        }
        return null;
    }

    @Override // java.util.Queue, vg.l
    public E poll() {
        long u10 = u();
        int b10 = a.b(u10, this.f45127b);
        AtomicReferenceArray<E> atomicReferenceArray = this.f45126a;
        E e10 = (E) a.e(atomicReferenceArray, b10);
        if (e10 == null) {
            if (u10 != d()) {
                do {
                    e10 = (E) a.e(atomicReferenceArray, b10);
                } while (e10 == null);
                a.h(atomicReferenceArray, b10, null);
                x(u10 + 1);
                return e10;
            }
            return null;
        }
        a.h(atomicReferenceArray, b10, null);
        x(u10 + 1);
        return e10;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.b, java.util.AbstractCollection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
