package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
/* loaded from: classes7.dex */
public final class c2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super Throwable, ? extends io.reactivex.p<? extends T>> f51487b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f51488c;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51489a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super Throwable, ? extends io.reactivex.p<? extends T>> f51490b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f51491c;

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f51492d = new SequentialDisposable();

        /* renamed from: e  reason: collision with root package name */
        boolean f51493e;

        /* renamed from: f  reason: collision with root package name */
        boolean f51494f;

        a(io.reactivex.r<? super T> rVar, vh.o<? super Throwable, ? extends io.reactivex.p<? extends T>> oVar, boolean z10) {
            this.f51489a = rVar;
            this.f51490b = oVar;
            this.f51491c = z10;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51494f) {
                return;
            }
            this.f51494f = true;
            this.f51493e = true;
            this.f51489a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51493e) {
                if (this.f51494f) {
                    ci.a.s(th2);
                    return;
                } else {
                    this.f51489a.onError(th2);
                    return;
                }
            }
            this.f51493e = true;
            if (this.f51491c && !(th2 instanceof Exception)) {
                this.f51489a.onError(th2);
                return;
            }
            try {
                io.reactivex.p<? extends T> apply = this.f51490b.apply(th2);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("Observable is null");
                    nullPointerException.initCause(th2);
                    this.f51489a.onError(nullPointerException);
                    return;
                }
                apply.subscribe(this);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f51489a.onError(new CompositeException(th2, th3));
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51494f) {
                return;
            }
            this.f51489a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f51492d.replace(bVar);
        }
    }

    public c2(io.reactivex.p<T> pVar, vh.o<? super Throwable, ? extends io.reactivex.p<? extends T>> oVar, boolean z10) {
        super(pVar);
        this.f51487b = oVar;
        this.f51488c = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar, this.f51487b, this.f51488c);
        rVar.onSubscribe(aVar.f51492d);
        this.f51403a.subscribe(aVar);
    }
}
