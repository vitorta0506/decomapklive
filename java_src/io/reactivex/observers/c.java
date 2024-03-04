package io.reactivex.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.r;
/* loaded from: classes7.dex */
public final class c<T> implements r<T>, th.b {

    /* renamed from: a  reason: collision with root package name */
    final r<? super T> f52775a;

    /* renamed from: b  reason: collision with root package name */
    th.b f52776b;

    /* renamed from: c  reason: collision with root package name */
    boolean f52777c;

    public c(r<? super T> rVar) {
        this.f52775a = rVar;
    }

    void a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f52775a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f52775a.onError(nullPointerException);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                ci.a.s(new CompositeException(nullPointerException, th2));
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            ci.a.s(new CompositeException(nullPointerException, th3));
        }
    }

    void b() {
        this.f52777c = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f52775a.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f52775a.onError(nullPointerException);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                ci.a.s(new CompositeException(nullPointerException, th2));
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            ci.a.s(new CompositeException(nullPointerException, th3));
        }
    }

    @Override // th.b
    public void dispose() {
        this.f52776b.dispose();
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.f52776b.isDisposed();
    }

    @Override // io.reactivex.r
    public void onComplete() {
        if (this.f52777c) {
            return;
        }
        this.f52777c = true;
        if (this.f52776b == null) {
            a();
            return;
        }
        try {
            this.f52775a.onComplete();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        if (this.f52777c) {
            ci.a.s(th2);
            return;
        }
        this.f52777c = true;
        if (this.f52776b == null) {
            NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
            try {
                this.f52775a.onSubscribe(EmptyDisposable.INSTANCE);
                try {
                    this.f52775a.onError(new CompositeException(th2, nullPointerException));
                    return;
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    ci.a.s(new CompositeException(th2, nullPointerException, th3));
                    return;
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                ci.a.s(new CompositeException(th2, nullPointerException, th4));
                return;
            }
        }
        if (th2 == null) {
            th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        try {
            this.f52775a.onError(th2);
        } catch (Throwable th5) {
            io.reactivex.exceptions.a.b(th5);
            ci.a.s(new CompositeException(th2, th5));
        }
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (this.f52777c) {
            return;
        }
        if (this.f52776b == null) {
            b();
        } else if (t10 == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f52776b.dispose();
                onError(nullPointerException);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(new CompositeException(nullPointerException, th2));
            }
        } else {
            try {
                this.f52775a.onNext(t10);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                try {
                    this.f52776b.dispose();
                    onError(th3);
                } catch (Throwable th4) {
                    io.reactivex.exceptions.a.b(th4);
                    onError(new CompositeException(th3, th4));
                }
            }
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        if (DisposableHelper.validate(this.f52776b, bVar)) {
            this.f52776b = bVar;
            try {
                this.f52775a.onSubscribe(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52777c = true;
                try {
                    bVar.dispose();
                    ci.a.s(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    ci.a.s(new CompositeException(th2, th3));
                }
            }
        }
    }
}
