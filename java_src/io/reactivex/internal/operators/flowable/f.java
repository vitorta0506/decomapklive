package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes7.dex */
public final class f<T> extends io.reactivex.internal.operators.flowable.a<T, T> implements vh.g<T> {

    /* renamed from: c  reason: collision with root package name */
    final vh.g<? super T> f51369c;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicLong implements io.reactivex.f<T>, il.c {
        private static final long serialVersionUID = -6246093802440953054L;

        /* renamed from: a  reason: collision with root package name */
        final il.b<? super T> f51370a;

        /* renamed from: b  reason: collision with root package name */
        final vh.g<? super T> f51371b;

        /* renamed from: c  reason: collision with root package name */
        il.c f51372c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51373d;

        a(il.b<? super T> bVar, vh.g<? super T> gVar) {
            this.f51370a = bVar;
            this.f51371b = gVar;
        }

        @Override // il.c
        public void cancel() {
            this.f51372c.cancel();
        }

        @Override // il.b
        public void onComplete() {
            if (this.f51373d) {
                return;
            }
            this.f51373d = true;
            this.f51370a.onComplete();
        }

        @Override // il.b
        public void onError(Throwable th2) {
            if (this.f51373d) {
                ci.a.s(th2);
                return;
            }
            this.f51373d = true;
            this.f51370a.onError(th2);
        }

        @Override // il.b
        public void onNext(T t10) {
            if (this.f51373d) {
                return;
            }
            if (get() != 0) {
                this.f51370a.onNext(t10);
                io.reactivex.internal.util.b.c(this, 1L);
                return;
            }
            try {
                this.f51371b.accept(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                onError(th2);
            }
        }

        @Override // il.b
        public void onSubscribe(il.c cVar) {
            if (SubscriptionHelper.validate(this.f51372c, cVar)) {
                this.f51372c = cVar;
                this.f51370a.onSubscribe(this);
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

    public f(io.reactivex.e<T> eVar) {
        super(eVar);
        this.f51369c = this;
    }

    @Override // vh.g
    public void accept(T t10) {
    }

    @Override // io.reactivex.e
    protected void h(il.b<? super T> bVar) {
        this.f51338b.g(new a(bVar, this.f51369c));
    }
}
