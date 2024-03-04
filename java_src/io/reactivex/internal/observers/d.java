package io.reactivex.internal.observers;
/* loaded from: classes7.dex */
public final class d<T> extends c<T> {
    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        if (this.f51317a == null) {
            this.f51318b = th2;
        }
        countDown();
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (this.f51317a == null) {
            this.f51317a = t10;
            this.f51319c.dispose();
            countDown();
        }
    }
}
