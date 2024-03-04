package retrofit2.adapter.rxjava2;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.k;
import io.reactivex.r;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import th.b;
/* loaded from: classes7.dex */
final class CallEnqueueObservable<T> extends k<Response<T>> {
    private final Call<T> originalCall;

    /* loaded from: classes7.dex */
    private static final class CallCallback<T> implements b, Callback<T> {
        private final Call<?> call;
        private volatile boolean disposed;
        private final r<? super Response<T>> observer;
        boolean terminated = false;

        CallCallback(Call<?> call, r<? super Response<T>> rVar) {
            this.call = call;
            this.observer = rVar;
        }

        @Override // th.b
        public void dispose() {
            this.disposed = true;
            this.call.cancel();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<T> call, Throwable th2) {
            if (call.isCanceled()) {
                return;
            }
            try {
                this.observer.onError(th2);
            } catch (Throwable th3) {
                a.b(th3);
                ci.a.s(new CompositeException(th2, th3));
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<T> call, Response<T> response) {
            if (this.disposed) {
                return;
            }
            try {
                this.observer.onNext(response);
                if (this.disposed) {
                    return;
                }
                this.terminated = true;
                this.observer.onComplete();
            } catch (Throwable th2) {
                a.b(th2);
                if (this.terminated) {
                    ci.a.s(th2);
                } else if (this.disposed) {
                } else {
                    try {
                        this.observer.onError(th2);
                    } catch (Throwable th3) {
                        a.b(th3);
                        ci.a.s(new CompositeException(th2, th3));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallEnqueueObservable(Call<T> call) {
        this.originalCall = call;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super Response<T>> rVar) {
        Call<T> mo3387clone = this.originalCall.mo3387clone();
        CallCallback callCallback = new CallCallback(mo3387clone, rVar);
        rVar.onSubscribe(callCallback);
        if (callCallback.isDisposed()) {
            return;
        }
        mo3387clone.enqueue(callCallback);
    }
}
