package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.r;
/* loaded from: classes7.dex */
public final class g<T> implements r<T>, th.b {

    /* renamed from: a  reason: collision with root package name */
    final r<? super T> f51325a;

    /* renamed from: b  reason: collision with root package name */
    final vh.g<? super th.b> f51326b;

    /* renamed from: c  reason: collision with root package name */
    final vh.a f51327c;

    /* renamed from: d  reason: collision with root package name */
    th.b f51328d;

    public g(r<? super T> rVar, vh.g<? super th.b> gVar, vh.a aVar) {
        this.f51325a = rVar;
        this.f51326b = gVar;
        this.f51327c = aVar;
    }

    @Override // th.b
    public void dispose() {
        th.b bVar = this.f51328d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper) {
            this.f51328d = disposableHelper;
            try {
                this.f51327c.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                ci.a.s(th2);
            }
            bVar.dispose();
        }
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.f51328d.isDisposed();
    }

    @Override // io.reactivex.r
    public void onComplete() {
        th.b bVar = this.f51328d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper) {
            this.f51328d = disposableHelper;
            this.f51325a.onComplete();
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        th.b bVar = this.f51328d;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper) {
            this.f51328d = disposableHelper;
            this.f51325a.onError(th2);
            return;
        }
        ci.a.s(th2);
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        this.f51325a.onNext(t10);
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        try {
            this.f51326b.accept(bVar);
            if (DisposableHelper.validate(this.f51328d, bVar)) {
                this.f51328d = bVar;
                this.f51325a.onSubscribe(this);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            bVar.dispose();
            this.f51328d = DisposableHelper.DISPOSED;
            EmptyDisposable.error(th2, this.f51325a);
        }
    }
}
