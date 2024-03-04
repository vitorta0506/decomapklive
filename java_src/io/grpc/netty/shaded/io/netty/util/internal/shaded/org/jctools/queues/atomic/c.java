package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceArray;
import vg.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class c<E> extends d<E> implements vg.l<E> {

    /* renamed from: k  reason: collision with root package name */
    private static final Object f45133k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static final Object f45134l = new Object();

    /* loaded from: classes5.dex */
    private static class a<E> implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private final long f45135a;

        /* renamed from: b  reason: collision with root package name */
        private long f45136b;

        /* renamed from: c  reason: collision with root package name */
        private E f45137c;

        /* renamed from: d  reason: collision with root package name */
        private AtomicReferenceArray<E> f45138d;

        /* renamed from: e  reason: collision with root package name */
        private int f45139e;

        a(AtomicReferenceArray<E> atomicReferenceArray, long j10, long j11) {
            this.f45135a = j11 >> 1;
            this.f45136b = j10 >> 1;
            b(atomicReferenceArray);
            this.f45137c = a();
        }

        private E a() {
            while (true) {
                long j10 = this.f45136b;
                if (j10 >= this.f45135a) {
                    break;
                }
                this.f45136b = 1 + j10;
                E e10 = (E) io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(this.f45138d, io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.b(j10, this.f45139e));
                if (e10 != null) {
                    if (e10 == c.f45133k) {
                        Object e11 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(this.f45138d, io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.c(this.f45139e + 1));
                        if (e11 == c.f45134l || e11 == null) {
                            break;
                        }
                        b((AtomicReferenceArray) e11);
                        E e12 = (E) io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(this.f45138d, io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.b(j10, this.f45139e));
                        if (e12 != null) {
                            return e12;
                        }
                    } else {
                        return e10;
                    }
                }
            }
            return null;
        }

        private void b(AtomicReferenceArray<E> atomicReferenceArray) {
            this.f45138d = atomicReferenceArray;
            this.f45139e = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.d(atomicReferenceArray) - 2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f45137c != null;
        }

        @Override // java.util.Iterator
        public E next() {
            E e10 = this.f45137c;
            if (e10 != null) {
                this.f45137c = a();
                return e10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public c(int i9) {
        wg.b.a(i9, 2, "initialCapacity");
        int c10 = wg.a.c(i9);
        long j10 = (c10 - 1) << 1;
        AtomicReferenceArray<E> a10 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.a(c10 + 1);
        this.f45143i = a10;
        this.f45142h = j10;
        this.f45147e = a10;
        this.f45146d = j10;
        z(j10);
    }

    private E J(AtomicReferenceArray<E> atomicReferenceArray, long j10) {
        E e10 = (E) io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(atomicReferenceArray, io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.f(j10, this.f45146d));
        if (e10 != null) {
            return e10;
        }
        throw new IllegalStateException("new buffer must have at least one element");
    }

    private E K(AtomicReferenceArray<E> atomicReferenceArray, long j10) {
        int f10 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.f(j10, this.f45146d);
        E e10 = (E) io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(atomicReferenceArray, f10);
        if (e10 != null) {
            io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.g(atomicReferenceArray, f10, null);
            u(j10 + 2);
            return e10;
        }
        throw new IllegalStateException("new buffer must have at least one element");
    }

    private static int L(long j10) {
        return io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.f(j10 + 2, Long.MAX_VALUE);
    }

    private AtomicReferenceArray<E> M(AtomicReferenceArray<E> atomicReferenceArray, long j10) {
        int L = L(j10);
        AtomicReferenceArray<E> atomicReferenceArray2 = (AtomicReferenceArray) io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(atomicReferenceArray, L);
        this.f45147e = atomicReferenceArray2;
        this.f45146d = (io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.d(atomicReferenceArray2) - 2) << 1;
        io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.g(atomicReferenceArray, L, f45134l);
        return atomicReferenceArray2;
    }

    private int N(long j10, long j11, long j12) {
        long f10 = f();
        long H = H(j10) + f10;
        if (H > j11) {
            return !x(j12, H) ? 1 : 0;
        } else if (G(j11, f10) <= 0) {
            return 2;
        } else {
            return g(j11, 1 + j11) ? 3 : 1;
        }
    }

    private void O(long j10, AtomicReferenceArray<E> atomicReferenceArray, long j11, E e10, l.a<E> aVar) {
        int I = I(atomicReferenceArray);
        try {
            AtomicReferenceArray<E> a10 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.a(I);
            this.f45143i = a10;
            long j12 = (I - 2) << 1;
            this.f45142h = j12;
            int f10 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.f(j11, j10);
            int f11 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.f(j11, j12);
            if (e10 == null) {
                e10 = aVar.get();
            }
            io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.g(a10, f11, e10);
            io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.g(atomicReferenceArray, L(j10), a10);
            long G = G(j11, f());
            wg.b.c(G, "availableInQueue");
            z(Math.min(j12, G) + j11);
            m(j11 + 2);
            io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.g(atomicReferenceArray, f10, f45133k);
        } catch (OutOfMemoryError e11) {
            m(j11);
            throw e11;
        }
    }

    protected abstract long G(long j10, long j11);

    protected abstract long H(long j10);

    protected abstract int I(AtomicReferenceArray<E> atomicReferenceArray);

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return f() == d();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new a(this.f45147e, f(), d());
    }

    @Override // java.util.Queue
    public boolean offer(E e10) {
        Objects.requireNonNull(e10);
        while (true) {
            long y10 = y();
            long d10 = d();
            if ((d10 & 1) != 1) {
                long j10 = this.f45142h;
                AtomicReferenceArray<E> atomicReferenceArray = this.f45143i;
                if (y10 <= d10) {
                    int N = N(j10, d10, y10);
                    if (N == 1) {
                        continue;
                    } else if (N == 2) {
                        return false;
                    } else {
                        if (N == 3) {
                            O(j10, atomicReferenceArray, d10, e10, null);
                            return true;
                        }
                    }
                }
                if (g(d10, 2 + d10)) {
                    io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.g(atomicReferenceArray, io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.f(d10, j10), e10);
                    return true;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d A[RETURN] */
    @Override // java.util.Queue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public E peek() {
        /*
            r10 = this;
            java.util.concurrent.atomic.AtomicReferenceArray<E> r0 = r10.f45147e
            long r1 = r10.n()
            long r3 = r10.f45146d
            int r5 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.f(r1, r3)
            java.lang.Object r6 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(r0, r5)
            if (r6 != 0) goto L20
            long r7 = r10.d()
            int r9 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r9 == 0) goto L20
        L1a:
            java.lang.Object r6 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(r0, r5)
            if (r6 == 0) goto L1a
        L20:
            java.lang.Object r5 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c.f45133k
            if (r6 != r5) goto L2d
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r10.M(r0, r3)
            java.lang.Object r0 = r10.J(r0, r1)
            return r0
        L2d:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c.peek():java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    @Override // java.util.Queue, vg.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public E poll() {
        /*
            r10 = this;
            java.util.concurrent.atomic.AtomicReferenceArray<E> r0 = r10.f45147e
            long r1 = r10.n()
            long r3 = r10.f45146d
            int r5 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.f(r1, r3)
            java.lang.Object r6 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(r0, r5)
            r7 = 0
            if (r6 != 0) goto L23
            long r8 = r10.d()
            int r6 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r6 == 0) goto L22
        L1b:
            java.lang.Object r6 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(r0, r5)
            if (r6 == 0) goto L1b
            goto L23
        L22:
            return r7
        L23:
            java.lang.Object r8 = io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c.f45133k
            if (r6 != r8) goto L30
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r10.M(r0, r3)
            java.lang.Object r0 = r10.K(r0, r1)
            return r0
        L30:
            io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.g(r0, r5, r7)
            r3 = 2
            long r1 = r1 + r3
            r10.u(r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c.poll():java.lang.Object");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        long d10;
        long f10;
        long f11 = f();
        while (true) {
            d10 = d();
            f10 = f();
            if (f11 == f10) {
                break;
            }
            f11 = f10;
        }
        long j10 = (d10 - f10) >> 1;
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return getClass().getName();
    }
}
