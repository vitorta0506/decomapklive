package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
/* loaded from: classes7.dex */
public final class m0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.a f51992b;

    /* loaded from: classes7.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.r<T> {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51993a;

        /* renamed from: b  reason: collision with root package name */
        final vh.a f51994b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51995c;

        /* renamed from: d  reason: collision with root package name */
        yh.b<T> f51996d;

        /* renamed from: e  reason: collision with root package name */
        boolean f51997e;

        a(io.reactivex.r<? super T> rVar, vh.a aVar) {
            this.f51993a = rVar;
            this.f51994b = aVar;
        }

        void b() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f51994b.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    ci.a.s(th2);
                }
            }
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public void clear() {
            this.f51996d.clear();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public void dispose() {
            this.f51995c.dispose();
            b();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public boolean isDisposed() {
            return this.f51995c.isDisposed();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public boolean isEmpty() {
            return this.f51996d.isEmpty();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51993a.onComplete();
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51993a.onError(th2);
            b();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51993a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51995c, bVar)) {
                this.f51995c = bVar;
                if (bVar instanceof yh.b) {
                    this.f51996d = (yh.b) bVar;
                }
                this.f51993a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public T poll() throws Exception {
            T poll = this.f51996d.poll();
            if (poll == null && this.f51997e) {
                b();
            }
            return poll;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.c
        public int requestFusion(int i9) {
            yh.b<T> bVar = this.f51996d;
            if (bVar == null || (i9 & 4) != 0) {
                return 0;
            }
            int requestFusion = bVar.requestFusion(i9);
            if (requestFusion != 0) {
                this.f51997e = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    public m0(io.reactivex.p<T> pVar, vh.a aVar) {
        super(pVar);
        this.f51992b = aVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51992b));
    }
}
