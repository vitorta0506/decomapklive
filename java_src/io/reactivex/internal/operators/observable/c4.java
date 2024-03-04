package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public final class c4<T, D> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends D> f51500a;

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super D, ? extends io.reactivex.p<? extends T>> f51501b;

    /* renamed from: c  reason: collision with root package name */
    final vh.g<? super D> f51502c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f51503d;

    /* loaded from: classes7.dex */
    static final class a<T, D> extends AtomicBoolean implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 5904473792286235046L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51504a;

        /* renamed from: b  reason: collision with root package name */
        final D f51505b;

        /* renamed from: c  reason: collision with root package name */
        final vh.g<? super D> f51506c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f51507d;

        /* renamed from: e  reason: collision with root package name */
        th.b f51508e;

        a(io.reactivex.r<? super T> rVar, D d10, vh.g<? super D> gVar, boolean z10) {
            this.f51504a = rVar;
            this.f51505b = d10;
            this.f51506c = gVar;
            this.f51507d = z10;
        }

        void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f51506c.accept((D) this.f51505b);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    ci.a.s(th2);
                }
            }
        }

        @Override // th.b
        public void dispose() {
            a();
            this.f51508e.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51507d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f51506c.accept((D) this.f51505b);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f51504a.onError(th2);
                        return;
                    }
                }
                this.f51508e.dispose();
                this.f51504a.onComplete();
                return;
            }
            this.f51504a.onComplete();
            this.f51508e.dispose();
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51507d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f51506c.accept((D) this.f51505b);
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        th2 = new CompositeException(th2, th3);
                    }
                }
                this.f51508e.dispose();
                this.f51504a.onError(th2);
                return;
            }
            this.f51504a.onError(th2);
            this.f51508e.dispose();
            a();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51504a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51508e, bVar)) {
                this.f51508e = bVar;
                this.f51504a.onSubscribe(this);
            }
        }
    }

    public c4(Callable<? extends D> callable, vh.o<? super D, ? extends io.reactivex.p<? extends T>> oVar, vh.g<? super D> gVar, boolean z10) {
        this.f51500a = callable;
        this.f51501b = oVar;
        this.f51502c = gVar;
        this.f51503d = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        try {
            D call = this.f51500a.call();
            try {
                ((io.reactivex.p) xh.b.e(this.f51501b.apply(call), "The sourceSupplier returned a null ObservableSource")).subscribe(new a(rVar, call, this.f51502c, this.f51503d));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f51502c.accept(call);
                    EmptyDisposable.error(th2, rVar);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    EmptyDisposable.error(new CompositeException(th2, th3), rVar);
                }
            }
        } catch (Throwable th4) {
            io.reactivex.exceptions.a.b(th4);
            EmptyDisposable.error(th4, rVar);
        }
    }
}
