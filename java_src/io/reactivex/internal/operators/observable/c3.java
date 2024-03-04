package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class c3<T> extends io.reactivex.g<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51495a;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.h<? super T> f51496a;

        /* renamed from: b  reason: collision with root package name */
        th.b f51497b;

        /* renamed from: c  reason: collision with root package name */
        T f51498c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51499d;

        a(io.reactivex.h<? super T> hVar) {
            this.f51496a = hVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51497b.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51497b.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51499d) {
                return;
            }
            this.f51499d = true;
            T t10 = this.f51498c;
            this.f51498c = null;
            if (t10 == null) {
                this.f51496a.onComplete();
            } else {
                this.f51496a.onSuccess(t10);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51499d) {
                ci.a.s(th2);
                return;
            }
            this.f51499d = true;
            this.f51496a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51499d) {
                return;
            }
            if (this.f51498c != null) {
                this.f51499d = true;
                this.f51497b.dispose();
                this.f51496a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f51498c = t10;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51497b, bVar)) {
                this.f51497b = bVar;
                this.f51496a.onSubscribe(this);
            }
        }
    }

    public c3(io.reactivex.p<T> pVar) {
        this.f51495a = pVar;
    }

    @Override // io.reactivex.g
    public void d(io.reactivex.h<? super T> hVar) {
        this.f51495a.subscribe(new a(hVar));
    }
}
