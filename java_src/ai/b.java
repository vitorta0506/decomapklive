package ai;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import io.reactivex.k;
import io.reactivex.r;
import io.reactivex.u;
import io.reactivex.v;
/* loaded from: classes7.dex */
public final class b<T> extends k<T> {

    /* renamed from: a  reason: collision with root package name */
    final v<? extends T> f792a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T> extends DeferredScalarDisposable<T> implements u<T> {
        private static final long serialVersionUID = 3786543492451018833L;

        /* renamed from: a  reason: collision with root package name */
        th.b f793a;

        a(r<? super T> rVar) {
            super(rVar);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public void dispose() {
            super.dispose();
            this.f793a.dispose();
        }

        @Override // io.reactivex.u
        public void onError(Throwable th2) {
            error(th2);
        }

        @Override // io.reactivex.u
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f793a, bVar)) {
                this.f793a = bVar;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.u
        public void onSuccess(T t10) {
            complete(t10);
        }
    }

    public b(v<? extends T> vVar) {
        this.f792a = vVar;
    }

    public static <T> u<T> c(r<? super T> rVar) {
        return new a(rVar);
    }

    @Override // io.reactivex.k
    public void subscribeActual(r<? super T> rVar) {
        this.f792a.a(c(rVar));
    }
}
