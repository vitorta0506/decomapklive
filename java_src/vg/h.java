package vg;

import java.util.Iterator;
import java.util.NoSuchElementException;
import vg.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class h<E> extends i<E> implements l<E>, j.a {

    /* renamed from: a  reason: collision with root package name */
    protected final long f59163a;

    /* renamed from: b  reason: collision with root package name */
    protected final E[] f59164b;

    /* loaded from: classes5.dex */
    private static class a<E> implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private final long f59165a;

        /* renamed from: b  reason: collision with root package name */
        private final long f59166b;

        /* renamed from: c  reason: collision with root package name */
        private final E[] f59167c;

        /* renamed from: d  reason: collision with root package name */
        private long f59168d;

        /* renamed from: e  reason: collision with root package name */
        private E f59169e = a();

        a(long j10, long j11, long j12, E[] eArr) {
            this.f59168d = j10;
            this.f59165a = j11;
            this.f59166b = j12;
            this.f59167c = eArr;
        }

        private E a() {
            E e10;
            do {
                long j10 = this.f59168d;
                if (j10 >= this.f59165a) {
                    return null;
                }
                this.f59168d = 1 + j10;
                e10 = (E) wg.d.d(this.f59167c, wg.d.b(j10, this.f59166b));
            } while (e10 == null);
            return e10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f59169e != null;
        }

        @Override // java.util.Iterator
        public E next() {
            E e10 = this.f59169e;
            if (e10 != null) {
                this.f59169e = a();
                return e10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(int i9) {
        int c10 = wg.a.c(i9);
        this.f59163a = c10 - 1;
        this.f59164b = (E[]) wg.d.a(c10);
    }

    @Override // vg.j.a
    public int c() {
        return (int) (this.f59163a + 1);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        do {
        } while (poll() != null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return j.a(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new a(f(), d(), this.f59163a, this.f59164b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return j.b(this);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return getClass().getName();
    }
}
