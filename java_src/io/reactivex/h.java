package io.reactivex;
/* loaded from: classes7.dex */
public interface h<T> {
    void onComplete();

    void onError(Throwable th2);

    void onSubscribe(th.b bVar);

    void onSuccess(T t10);
}
