package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
/* loaded from: classes7.dex */
public final class n3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f52073b;

    /* loaded from: classes7.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 7240042530241604978L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52074a;

        /* renamed from: b  reason: collision with root package name */
        final int f52075b;

        /* renamed from: c  reason: collision with root package name */
        th.b f52076c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f52077d;

        a(io.reactivex.r<? super T> rVar, int i9) {
            this.f52074a = rVar;
            this.f52075b = i9;
        }

        @Override // th.b
        public void dispose() {
            if (this.f52077d) {
                return;
            }
            this.f52077d = true;
            this.f52076c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52077d;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            io.reactivex.r<? super T> rVar = this.f52074a;
            while (!this.f52077d) {
                Object obj = (T) poll();
                if (obj == null) {
                    if (this.f52077d) {
                        return;
                    }
                    rVar.onComplete();
                    return;
                }
                rVar.onNext(obj);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52074a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52075b == size()) {
                poll();
            }
            offer(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52076c, bVar)) {
                this.f52076c = bVar;
                this.f52074a.onSubscribe(this);
            }
        }
    }

    public n3(io.reactivex.p<T> pVar, int i9) {
        super(pVar);
        this.f52073b = i9;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52073b));
    }
}
