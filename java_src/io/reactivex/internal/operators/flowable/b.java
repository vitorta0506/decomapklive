package io.reactivex.internal.operators.flowable;

import io.reactivex.k;
import io.reactivex.r;
/* loaded from: classes7.dex */
public final class b<T> extends io.reactivex.e<T> {

    /* renamed from: b  reason: collision with root package name */
    private final k<T> f51339b;

    /* loaded from: classes7.dex */
    static final class a<T> implements r<T>, il.c {

        /* renamed from: a  reason: collision with root package name */
        final il.b<? super T> f51340a;

        /* renamed from: b  reason: collision with root package name */
        th.b f51341b;

        a(il.b<? super T> bVar) {
            this.f51340a = bVar;
        }

        @Override // il.c
        public void cancel() {
            this.f51341b.dispose();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51340a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51340a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51340a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f51341b = bVar;
            this.f51340a.onSubscribe(this);
        }

        @Override // il.c
        public void request(long j10) {
        }
    }

    public b(k<T> kVar) {
        this.f51339b = kVar;
    }

    @Override // io.reactivex.e
    protected void h(il.b<? super T> bVar) {
        this.f51339b.subscribe(new a(bVar));
    }
}
