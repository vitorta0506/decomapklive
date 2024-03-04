package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReferenceArray;
import vg.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class b<E> extends AbstractQueue<E> implements j.a, vg.l<E> {

    /* renamed from: a  reason: collision with root package name */
    protected final AtomicReferenceArray<E> f45126a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f45127b;

    /* loaded from: classes5.dex */
    private static class a<E> implements Iterator<E> {

        /* renamed from: a  reason: collision with root package name */
        private final long f45128a;

        /* renamed from: b  reason: collision with root package name */
        private final int f45129b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicReferenceArray<E> f45130c;

        /* renamed from: d  reason: collision with root package name */
        private long f45131d;

        /* renamed from: e  reason: collision with root package name */
        private E f45132e = a();

        a(long j10, long j11, int i9, AtomicReferenceArray<E> atomicReferenceArray) {
            this.f45131d = j10;
            this.f45128a = j11;
            this.f45129b = i9;
            this.f45130c = atomicReferenceArray;
        }

        private E a() {
            E e10;
            int i9 = this.f45129b;
            AtomicReferenceArray<E> atomicReferenceArray = this.f45130c;
            do {
                long j10 = this.f45131d;
                if (j10 >= this.f45128a) {
                    return null;
                }
                this.f45131d = 1 + j10;
                e10 = (E) io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.e(atomicReferenceArray, io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.a.b(j10, i9));
            } while (e10 == null);
            return e10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f45132e != null;
        }

        @Override // java.util.Iterator
        public E next() {
            E e10 = this.f45132e;
            if (e10 != null) {
                this.f45132e = a();
                return e10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public b(int i9) {
        int c10 = wg.a.c(i9);
        this.f45127b = c10 - 1;
        this.f45126a = new AtomicReferenceArray<>(c10);
    }

    @Override // vg.j.a
    public final int c() {
        return this.f45127b + 1;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        do {
        } while (poll() != null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return vg.j.a(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return new a(f(), d(), this.f45127b, this.f45126a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return vg.j.b(this);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return getClass().getName();
    }
}
