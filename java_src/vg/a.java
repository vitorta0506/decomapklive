package vg;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import vg.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class a<E> extends b<E> implements l<E> {

    /* renamed from: k  reason: collision with root package name */
    private static final Object f59146k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static final Object f59147l = new Object();

    /* renamed from: vg.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static class C0671a<E> implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private final long f59148a;

        /* renamed from: b  reason: collision with root package name */
        private long f59149b;

        /* renamed from: c  reason: collision with root package name */
        private E f59150c;

        /* renamed from: d  reason: collision with root package name */
        private E[] f59151d;

        /* renamed from: e  reason: collision with root package name */
        private int f59152e;

        C0671a(E[] eArr, long j10, long j11) {
            this.f59148a = j11 >> 1;
            this.f59149b = j10 >> 1;
            b(eArr);
            this.f59150c = a();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private E a() {
            while (true) {
                long j10 = this.f59149b;
                if (j10 >= this.f59148a) {
                    break;
                }
                this.f59149b = 1 + j10;
                E e10 = (E) wg.d.d(this.f59151d, wg.d.b(j10, this.f59152e));
                if (e10 != null) {
                    if (e10 == a.f59146k) {
                        Object d10 = wg.d.d(this.f59151d, wg.d.c(this.f59152e + 1));
                        if (d10 == a.f59147l || d10 == null) {
                            break;
                        }
                        b((Object[]) d10);
                        E e11 = (E) wg.d.d(this.f59151d, wg.d.b(j10, this.f59152e));
                        if (e11 != null) {
                            return e11;
                        }
                    } else {
                        return e10;
                    }
                }
            }
            return null;
        }

        private void b(E[] eArr) {
            this.f59151d = eArr;
            this.f59152e = k.a(eArr) - 2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f59150c != null;
        }

        @Override // java.util.Iterator
        public E next() {
            E e10 = this.f59150c;
            if (e10 != null) {
                this.f59150c = a();
                return e10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public a(int i9) {
        wg.b.a(i9, 2, "initialCapacity");
        int c10 = wg.a.c(i9);
        long j10 = (c10 - 1) << 1;
        E[] eArr = (E[]) wg.d.a(c10 + 1);
        this.f59156i = eArr;
        this.f59155h = j10;
        this.f59160e = eArr;
        this.f59159d = j10;
        z(j10);
    }

    private E J(E[] eArr, long j10) {
        E e10 = (E) wg.d.d(eArr, k.b(j10, this.f59159d));
        if (e10 != null) {
            return e10;
        }
        throw new IllegalStateException("new buffer must have at least one element");
    }

    private E K(E[] eArr, long j10) {
        long b10 = k.b(j10, this.f59159d);
        E e10 = (E) wg.d.d(eArr, b10);
        if (e10 != null) {
            wg.d.e(eArr, b10, null);
            u(j10 + 2);
            return e10;
        }
        throw new IllegalStateException("new buffer must have at least one element");
    }

    private static long L(long j10) {
        return k.b(j10 + 2, Long.MAX_VALUE);
    }

    private E[] M(E[] eArr, long j10) {
        long L = L(j10);
        E[] eArr2 = (E[]) ((Object[]) wg.d.d(eArr, L));
        this.f59160e = eArr2;
        this.f59159d = (k.a(eArr2) - 2) << 1;
        wg.d.e(eArr, L, f59147l);
        return eArr2;
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

    private void O(long j10, E[] eArr, long j11, E e10, l.a<E> aVar) {
        int I = I(eArr);
        try {
            E[] eArr2 = (E[]) wg.d.a(I);
            this.f59156i = eArr2;
            long j12 = (I - 2) << 1;
            this.f59155h = j12;
            long b10 = k.b(j11, j10);
            long b11 = k.b(j11, j12);
            if (e10 == null) {
                e10 = aVar.get();
            }
            wg.d.e(eArr2, b11, e10);
            wg.d.e(eArr, L(j10), eArr2);
            long G = G(j11, f());
            wg.b.c(G, "availableInQueue");
            z(Math.min(j12, G) + j11);
            m(j11 + 2);
            wg.d.e(eArr, b10, f59146k);
        } catch (OutOfMemoryError e11) {
            m(j11);
            throw e11;
        }
    }

    protected abstract long G(long j10, long j11);

    protected abstract long H(long j10);

    protected abstract int I(E[] eArr);

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return f() == d();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new C0671a(this.f59160e, f(), d());
    }

    @Override // java.util.Queue
    public boolean offer(E e10) {
        Objects.requireNonNull(e10);
        while (true) {
            long y10 = y();
            long d10 = d();
            if ((d10 & 1) != 1) {
                long j10 = this.f59155h;
                E[] eArr = this.f59156i;
                if (y10 <= d10) {
                    int N = N(j10, d10, y10);
                    if (N == 1) {
                        continue;
                    } else if (N == 2) {
                        return false;
                    } else {
                        if (N == 3) {
                            O(j10, eArr, d10, e10, null);
                            return true;
                        }
                    }
                }
                if (g(d10, 2 + d10)) {
                    wg.d.e(eArr, k.b(d10, j10), e10);
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
            r11 = this;
            E[] r0 = r11.f59160e
            long r1 = r11.n()
            long r3 = r11.f59159d
            long r5 = vg.k.b(r1, r3)
            java.lang.Object r7 = wg.d.d(r0, r5)
            if (r7 != 0) goto L20
            long r8 = r11.d()
            int r10 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r10 == 0) goto L20
        L1a:
            java.lang.Object r7 = wg.d.d(r0, r5)
            if (r7 == 0) goto L1a
        L20:
            java.lang.Object r5 = vg.a.f59146k
            if (r7 != r5) goto L2d
            java.lang.Object[] r0 = r11.M(r0, r3)
            java.lang.Object r0 = r11.J(r0, r1)
            return r0
        L2d:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: vg.a.peek():java.lang.Object");
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
            r11 = this;
            E[] r0 = r11.f59160e
            long r1 = r11.n()
            long r3 = r11.f59159d
            long r5 = vg.k.b(r1, r3)
            java.lang.Object r7 = wg.d.d(r0, r5)
            r8 = 0
            if (r7 != 0) goto L23
            long r9 = r11.d()
            int r7 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r7 == 0) goto L22
        L1b:
            java.lang.Object r7 = wg.d.d(r0, r5)
            if (r7 == 0) goto L1b
            goto L23
        L22:
            return r8
        L23:
            java.lang.Object r9 = vg.a.f59146k
            if (r7 != r9) goto L30
            java.lang.Object[] r0 = r11.M(r0, r3)
            java.lang.Object r0 = r11.K(r0, r1)
            return r0
        L30:
            wg.d.e(r0, r5, r8)
            r3 = 2
            long r1 = r1 + r3
            r11.u(r1)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: vg.a.poll():java.lang.Object");
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
