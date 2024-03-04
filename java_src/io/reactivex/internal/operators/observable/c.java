package io.reactivex.internal.operators.observable;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class c<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51470a;

    /* loaded from: classes7.dex */
    static final class a<T> extends io.reactivex.observers.b<io.reactivex.j<T>> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.j<T> f51471a;

        /* renamed from: b  reason: collision with root package name */
        final Semaphore f51472b = new Semaphore(0);

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<io.reactivex.j<T>> f51473c = new AtomicReference<>();

        a() {
        }

        @Override // io.reactivex.r
        /* renamed from: a */
        public void onNext(io.reactivex.j<T> jVar) {
            if (this.f51473c.getAndSet(jVar) == null) {
                this.f51472b.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            io.reactivex.j<T> jVar = this.f51471a;
            if (jVar != null && jVar.g()) {
                throw io.reactivex.internal.util.f.d(this.f51471a.d());
            }
            if (this.f51471a == null) {
                try {
                    io.reactivex.internal.util.c.b();
                    this.f51472b.acquire();
                    io.reactivex.j<T> andSet = this.f51473c.getAndSet(null);
                    this.f51471a = andSet;
                    if (andSet.g()) {
                        throw io.reactivex.internal.util.f.d(andSet.d());
                    }
                } catch (InterruptedException e10) {
                    dispose();
                    this.f51471a = io.reactivex.j.b(e10);
                    throw io.reactivex.internal.util.f.d(e10);
                }
            }
            return this.f51471a.h();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T e10 = this.f51471a.e();
                this.f51471a = null;
                return e10;
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.r
        public void onComplete() {
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            ci.a.s(th2);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public c(io.reactivex.p<T> pVar) {
        this.f51470a = pVar;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        io.reactivex.k.wrap(this.f51470a).materialize().subscribe(aVar);
        return aVar;
    }
}
