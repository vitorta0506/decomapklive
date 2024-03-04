package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.r;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class h<T> extends CountDownLatch implements r<T>, Future<T>, th.b {

    /* renamed from: a  reason: collision with root package name */
    T f51329a;

    /* renamed from: b  reason: collision with root package name */
    Throwable f51330b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<th.b> f51331c;

    public h() {
        super(1);
        this.f51331c = new AtomicReference<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        th.b bVar;
        DisposableHelper disposableHelper;
        do {
            bVar = this.f51331c.get();
            if (bVar == this || bVar == (disposableHelper = DisposableHelper.DISPOSED)) {
                return false;
            }
        } while (!this.f51331c.compareAndSet(bVar, disposableHelper));
        if (bVar != null) {
            bVar.dispose();
        }
        countDown();
        return true;
    }

    @Override // th.b
    public void dispose() {
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            io.reactivex.internal.util.c.b();
            await();
        }
        if (!isCancelled()) {
            Throwable th2 = this.f51330b;
            if (th2 == null) {
                return this.f51329a;
            }
            throw new ExecutionException(th2);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return DisposableHelper.isDisposed(this.f51331c.get());
    }

    @Override // th.b
    public boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.r
    public void onComplete() {
        th.b bVar;
        if (this.f51329a == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        do {
            bVar = this.f51331c.get();
            if (bVar == this || bVar == DisposableHelper.DISPOSED) {
                return;
            }
        } while (!this.f51331c.compareAndSet(bVar, this));
        countDown();
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        th.b bVar;
        if (this.f51330b == null) {
            this.f51330b = th2;
            do {
                bVar = this.f51331c.get();
                if (bVar == this || bVar == DisposableHelper.DISPOSED) {
                    ci.a.s(th2);
                    return;
                }
            } while (!this.f51331c.compareAndSet(bVar, this));
            countDown();
            return;
        }
        ci.a.s(th2);
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (this.f51329a != null) {
            this.f51331c.get().dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
            return;
        }
        this.f51329a = t10;
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        DisposableHelper.setOnce(this.f51331c, bVar);
    }

    @Override // java.util.concurrent.Future
    public T get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            io.reactivex.internal.util.c.b();
            if (!await(j10, timeUnit)) {
                throw new TimeoutException(io.reactivex.internal.util.f.c(j10, timeUnit));
            }
        }
        if (!isCancelled()) {
            Throwable th2 = this.f51330b;
            if (th2 == null) {
                return this.f51329a;
            }
            throw new ExecutionException(th2);
        }
        throw new CancellationException();
    }
}
