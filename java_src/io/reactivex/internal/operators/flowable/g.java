package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes7.dex */
public final class g<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.f<T>, il.c {
        private static final long serialVersionUID = -3176480756392482682L;

        /* renamed from: a  reason: collision with root package name */
        final il.b<? super T> f51374a;

        /* renamed from: b  reason: collision with root package name */
        il.c f51375b;

        /* renamed from: c  reason: collision with root package name */
        boolean f51376c;

        a(il.b<? super T> bVar) {
            this.f51374a = bVar;
        }

        @Override // il.c
        public void cancel() {
            this.f51375b.cancel();
        }

        @Override // il.b
        public void onComplete() {
            if (this.f51376c) {
                return;
            }
            this.f51376c = true;
            this.f51374a.onComplete();
        }

        @Override // il.b
        public void onError(Throwable th2) {
            if (this.f51376c) {
                ci.a.s(th2);
                return;
            }
            this.f51376c = true;
            this.f51374a.onError(th2);
        }

        @Override // il.b
        public void onNext(T t10) {
            if (this.f51376c) {
                return;
            }
            if (get() != 0) {
                this.f51374a.onNext(t10);
                io.reactivex.internal.util.b.c(this, 1L);
                return;
            }
            this.f51375b.cancel();
            onError(new MissingBackpressureException("could not emit value due to lack of requests"));
        }

        @Override // il.b
        public void onSubscribe(il.c cVar) {
            if (SubscriptionHelper.validate(this.f51375b, cVar)) {
                this.f51375b = cVar;
                this.f51374a.onSubscribe(this);
                cVar.request(Long.MAX_VALUE);
            }
        }

        @Override // il.c
        public void request(long j10) {
            if (SubscriptionHelper.validate(j10)) {
                io.reactivex.internal.util.b.a(this, j10);
            }
        }
    }

    public g(io.reactivex.e<T> eVar) {
        super(eVar);
    }

    @Override // io.reactivex.e
    protected void h(il.b<? super T> bVar) {
        this.f51338b.g(new a(bVar));
    }
}
