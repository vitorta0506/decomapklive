package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class l2<T, R> extends io.reactivex.t<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f51940a;

    /* renamed from: b  reason: collision with root package name */
    final R f51941b;

    /* renamed from: c  reason: collision with root package name */
    final vh.c<R, ? super T, R> f51942c;

    /* loaded from: classes7.dex */
    static final class a<T, R> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super R> f51943a;

        /* renamed from: b  reason: collision with root package name */
        final vh.c<R, ? super T, R> f51944b;

        /* renamed from: c  reason: collision with root package name */
        R f51945c;

        /* renamed from: d  reason: collision with root package name */
        th.b f51946d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.u<? super R> uVar, vh.c<R, ? super T, R> cVar, R r10) {
            this.f51943a = uVar;
            this.f51945c = r10;
            this.f51944b = cVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51946d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51946d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            R r10 = this.f51945c;
            if (r10 != null) {
                this.f51945c = null;
                this.f51943a.onSuccess(r10);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51945c != null) {
                this.f51945c = null;
                this.f51943a.onError(th2);
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            R r10 = this.f51945c;
            if (r10 != null) {
                try {
                    this.f51945c = (R) xh.b.e(this.f51944b.apply(r10, t10), "The reducer returned a null value");
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f51946d.dispose();
                    onError(th2);
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51946d, bVar)) {
                this.f51946d = bVar;
                this.f51943a.onSubscribe(this);
            }
        }
    }

    public l2(io.reactivex.p<T> pVar, R r10, vh.c<R, ? super T, R> cVar) {
        this.f51940a = pVar;
        this.f51941b = r10;
        this.f51942c = cVar;
    }

    @Override // io.reactivex.t
    protected void e(io.reactivex.u<? super R> uVar) {
        this.f51940a.subscribe(new a(uVar, this.f51942c, this.f51941b));
    }
}
