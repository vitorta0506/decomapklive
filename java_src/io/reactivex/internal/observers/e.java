package io.reactivex.internal.observers;
/* loaded from: classes7.dex */
public final class e<T> extends c<T> {
    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        this.f51317a = null;
        this.f51318b = th2;
        countDown();
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        this.f51317a = t10;
    }
}
