package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes7.dex */
public final class b<T> implements Iterable<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<? extends T> f51436a;

    /* renamed from: b  reason: collision with root package name */
    final int f51437b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, Iterator<T>, th.b {
        private static final long serialVersionUID = 6695226475494099826L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f51438a;

        /* renamed from: b  reason: collision with root package name */
        final Lock f51439b;

        /* renamed from: c  reason: collision with root package name */
        final Condition f51440c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f51441d;

        /* renamed from: e  reason: collision with root package name */
        volatile Throwable f51442e;

        a(int i9) {
            this.f51438a = new io.reactivex.internal.queue.b<>(i9);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f51439b = reentrantLock;
            this.f51440c = reentrantLock.newCondition();
        }

        void a() {
            this.f51439b.lock();
            try {
                this.f51440c.signalAll();
            } finally {
                this.f51439b.unlock();
            }
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
            a();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!isDisposed()) {
                boolean z10 = this.f51441d;
                boolean isEmpty = this.f51438a.isEmpty();
                if (z10) {
                    Throwable th2 = this.f51442e;
                    if (th2 != null) {
                        throw io.reactivex.internal.util.f.d(th2);
                    }
                    if (isEmpty) {
                        return false;
                    }
                }
                if (!isEmpty) {
                    return true;
                }
                try {
                    io.reactivex.internal.util.c.b();
                    this.f51439b.lock();
                    while (!this.f51441d && this.f51438a.isEmpty() && !isDisposed()) {
                        this.f51440c.await();
                    }
                    this.f51439b.unlock();
                } catch (InterruptedException e10) {
                    DisposableHelper.dispose(this);
                    a();
                    throw io.reactivex.internal.util.f.d(e10);
                }
            }
            Throwable th3 = this.f51442e;
            if (th3 == null) {
                return false;
            }
            throw io.reactivex.internal.util.f.d(th3);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                return this.f51438a.poll();
            }
            throw new NoSuchElementException();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51441d = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51442e = th2;
            this.f51441d = true;
            a();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51438a.offer(t10);
            a();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public b(io.reactivex.p<? extends T> pVar, int i9) {
        this.f51436a = pVar;
        this.f51437b = i9;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f51437b);
        this.f51436a.subscribe(aVar);
        return aVar;
    }
}
