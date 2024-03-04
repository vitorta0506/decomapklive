package io.grpc.netty.shaded.io.netty.util.internal;

import io.grpc.netty.shaded.io.netty.util.internal.w;
import java.util.AbstractQueue;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public final class g<T extends w> extends AbstractQueue<T> implements v<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final w[] f45058d = new w[0];

    /* renamed from: a  reason: collision with root package name */
    private final Comparator<T> f45059a;

    /* renamed from: b  reason: collision with root package name */
    private T[] f45060b;

    /* renamed from: c  reason: collision with root package name */
    private int f45061c;

    /* loaded from: classes5.dex */
    private final class b implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private int f45062a;

        private b() {
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public T next() {
            if (this.f45062a < g.this.f45061c) {
                w[] wVarArr = g.this.f45060b;
                int i9 = this.f45062a;
                this.f45062a = i9 + 1;
                return (T) wVarArr[i9];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f45062a < g.this.f45061c;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public g(Comparator<T> comparator, int i9) {
        this.f45059a = (Comparator) s.h(comparator, "comparator");
        this.f45060b = (T[]) (i9 != 0 ? new w[i9] : f45058d);
    }

    private void f(int i9, T t10) {
        int i10 = this.f45061c >>> 1;
        while (i9 < i10) {
            int i11 = (i9 << 1) + 1;
            T[] tArr = this.f45060b;
            T t11 = tArr[i11];
            int i12 = i11 + 1;
            if (i12 < this.f45061c && this.f45059a.compare(t11, tArr[i12]) > 0) {
                t11 = this.f45060b[i12];
                i11 = i12;
            }
            if (this.f45059a.compare(t10, t11) <= 0) {
                break;
            }
            this.f45060b[i9] = t11;
            t11.h(this, i9);
            i9 = i11;
        }
        this.f45060b[i9] = t10;
        t10.h(this, i9);
    }

    private void g(int i9, T t10) {
        while (i9 > 0) {
            int i10 = (i9 - 1) >>> 1;
            T t11 = this.f45060b[i10];
            if (this.f45059a.compare(t10, t11) >= 0) {
                break;
            }
            this.f45060b[i9] = t11;
            t11.h(this, i9);
            i9 = i10;
        }
        this.f45060b[i9] = t10;
        t10.h(this, i9);
    }

    private boolean m(w wVar, int i9) {
        return i9 >= 0 && i9 < this.f45061c && wVar.equals(this.f45060b[i9]);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.v
    public void B0() {
        this.f45061c = 0;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i9 = 0; i9 < this.f45061c; i9++) {
            T t10 = this.f45060b[i9];
            if (t10 != null) {
                t10.h(this, -1);
                this.f45060b[i9] = null;
            }
        }
        this.f45061c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj instanceof w) {
            w wVar = (w) obj;
            return m(wVar, wVar.b(this));
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f45061c == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new b();
    }

    @Override // java.util.Queue
    /* renamed from: n */
    public boolean offer(T t10) {
        if (t10.b(this) == -1) {
            int i9 = this.f45061c;
            T[] tArr = this.f45060b;
            if (i9 >= tArr.length) {
                this.f45060b = (T[]) ((w[]) Arrays.copyOf(tArr, tArr.length + (tArr.length < 64 ? tArr.length + 2 : tArr.length >>> 1)));
            }
            int i10 = this.f45061c;
            this.f45061c = i10 + 1;
            g(i10, t10);
            return true;
        }
        throw new IllegalArgumentException("e.priorityQueueIndex(): " + t10.b(this) + " (expected: -1) + e: " + t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        try {
            return g0((w) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f45061c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return Arrays.copyOf(this.f45060b, this.f45061c);
    }

    @Override // java.util.Queue
    /* renamed from: u */
    public T peek() {
        if (this.f45061c == 0) {
            return null;
        }
        return this.f45060b[0];
    }

    @Override // java.util.Queue
    /* renamed from: x */
    public T poll() {
        if (this.f45061c == 0) {
            return null;
        }
        T t10 = this.f45060b[0];
        t10.h(this, -1);
        T[] tArr = this.f45060b;
        int i9 = this.f45061c - 1;
        this.f45061c = i9;
        T t11 = tArr[i9];
        tArr[i9] = null;
        if (i9 != 0) {
            f(0, t11);
        }
        return t10;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.v
    /* renamed from: y */
    public void M0(T t10) {
        int b10 = t10.b(this);
        if (m(t10, b10)) {
            if (b10 == 0) {
                f(b10, t10);
                return;
            }
            if (this.f45059a.compare(t10, this.f45060b[(b10 - 1) >>> 1]) < 0) {
                g(b10, t10);
            } else {
                f(b10, t10);
            }
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.v
    /* renamed from: z */
    public boolean g0(T t10) {
        int b10 = t10.b(this);
        if (m(t10, b10)) {
            t10.h(this, -1);
            int i9 = this.f45061c - 1;
            this.f45061c = i9;
            if (i9 != 0 && i9 != b10) {
                T[] tArr = this.f45060b;
                T t11 = tArr[i9];
                tArr[b10] = t11;
                tArr[i9] = null;
                if (this.f45059a.compare(t10, t11) < 0) {
                    f(b10, t11);
                } else {
                    g(b10, t11);
                }
                return true;
            }
            this.f45060b[b10] = null;
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <X> X[] toArray(X[] xArr) {
        int length = xArr.length;
        int i9 = this.f45061c;
        if (length < i9) {
            return (X[]) Arrays.copyOf(this.f45060b, i9, xArr.getClass());
        }
        System.arraycopy(this.f45060b, 0, xArr, 0, i9);
        int length2 = xArr.length;
        int i10 = this.f45061c;
        if (length2 > i10) {
            xArr[i10] = null;
        }
        return xArr;
    }
}
