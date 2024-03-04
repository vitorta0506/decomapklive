package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
public final class d3<T> extends io.reactivex.t<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<? extends T> f51536a;

    /* renamed from: b  reason: collision with root package name */
    final T f51537b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.u<? super T> f51538a;

        /* renamed from: b  reason: collision with root package name */
        final T f51539b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51540c;

        /* renamed from: d  reason: collision with root package name */
        T f51541d;

        /* renamed from: e  reason: collision with root package name */
        boolean f51542e;

        a(io.reactivex.u<? super T> uVar, T t10) {
            this.f51538a = uVar;
            this.f51539b = t10;
        }

        @Override // th.b
        public void dispose() {
            this.f51540c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51540c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51542e) {
                return;
            }
            this.f51542e = true;
            T t10 = this.f51541d;
            this.f51541d = null;
            if (t10 == null) {
                t10 = this.f51539b;
            }
            if (t10 != null) {
                this.f51538a.onSuccess(t10);
            } else {
                this.f51538a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51542e) {
                ci.a.s(th2);
                return;
            }
            this.f51542e = true;
            this.f51538a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51542e) {
                return;
            }
            if (this.f51541d != null) {
                this.f51542e = true;
                this.f51540c.dispose();
                this.f51538a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f51541d = t10;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51540c, bVar)) {
                this.f51540c = bVar;
                this.f51538a.onSubscribe(this);
            }
        }
    }

    public d3(io.reactivex.p<? extends T> pVar, T t10) {
        this.f51536a = pVar;
        this.f51537b = t10;
    }

    @Override // io.reactivex.t
    public void e(io.reactivex.u<? super T> uVar) {
        this.f51536a.subscribe(new a(uVar, this.f51537b));
    }
}
