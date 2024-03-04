package retrofit2.adapter.rxjava2;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.a;
import io.reactivex.k;
import io.reactivex.r;
import retrofit2.Call;
import retrofit2.Response;
import th.b;
/* loaded from: classes7.dex */
final class CallExecuteObservable<T> extends k<Response<T>> {
    private final Call<T> originalCall;

    /* loaded from: classes7.dex */
    private static final class CallDisposable implements b {
        private final Call<?> call;
        private volatile boolean disposed;

        CallDisposable(Call<?> call) {
            this.call = call;
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
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallExecuteObservable(Call<T> call) {
        this.originalCall = call;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super Response<T>> rVar) {
        boolean z10;
        Call<T> mo3387clone = this.originalCall.mo3387clone();
        CallDisposable callDisposable = new CallDisposable(mo3387clone);
        rVar.onSubscribe(callDisposable);
        if (callDisposable.isDisposed()) {
            return;
        }
        try {
            Response<T> execute = mo3387clone.execute();
            if (!callDisposable.isDisposed()) {
                rVar.onNext(execute);
            }
            if (callDisposable.isDisposed()) {
                return;
            }
            try {
                rVar.onComplete();
            } catch (Throwable th2) {
                th = th2;
                z10 = true;
                a.b(th);
                if (z10) {
                    ci.a.s(th);
                } else if (callDisposable.isDisposed()) {
                } else {
                    try {
                        rVar.onError(th);
                    } catch (Throwable th3) {
                        a.b(th3);
                        ci.a.s(new CompositeException(th, th3));
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            z10 = false;
        }
    }
}
