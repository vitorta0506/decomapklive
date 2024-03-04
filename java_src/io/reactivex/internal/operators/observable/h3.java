package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class h3<T, U> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<U> f51740b;

    /* loaded from: classes7.dex */
    final class a implements io.reactivex.r<U> {

        /* renamed from: a  reason: collision with root package name */
        final ArrayCompositeDisposable f51741a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f51742b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.observers.d<T> f51743c;

        /* renamed from: d  reason: collision with root package name */
        th.b f51744d;

        a(ArrayCompositeDisposable arrayCompositeDisposable, b<T> bVar, io.reactivex.observers.d<T> dVar) {
            this.f51741a = arrayCompositeDisposable;
            this.f51742b = bVar;
            this.f51743c = dVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51742b.f51749d = true;
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51741a.dispose();
            this.f51743c.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(U u10) {
            this.f51744d.dispose();
            this.f51742b.f51749d = true;
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51744d, bVar)) {
                this.f51744d = bVar;
                this.f51741a.setResource(1, bVar);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> implements io.reactivex.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51746a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayCompositeDisposable f51747b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51748c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f51749d;

        /* renamed from: e  reason: collision with root package name */
        boolean f51750e;

        b(io.reactivex.r<? super T> rVar, ArrayCompositeDisposable arrayCompositeDisposable) {
            this.f51746a = rVar;
            this.f51747b = arrayCompositeDisposable;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51747b.dispose();
            this.f51746a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51747b.dispose();
            this.f51746a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51750e) {
                this.f51746a.onNext(t10);
            } else if (this.f51749d) {
                this.f51750e = true;
                this.f51746a.onNext(t10);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51748c, bVar)) {
                this.f51748c = bVar;
                this.f51747b.setResource(0, bVar);
            }
        }
    }

    public h3(io.reactivex.p<T> pVar, io.reactivex.p<U> pVar2) {
        super(pVar);
        this.f51740b = pVar2;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        io.reactivex.observers.d dVar = new io.reactivex.observers.d(rVar);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        dVar.onSubscribe(arrayCompositeDisposable);
        b bVar = new b(dVar, arrayCompositeDisposable);
        this.f51740b.subscribe(new a(arrayCompositeDisposable, bVar, dVar));
        this.f51403a.subscribe(bVar);
    }
}
