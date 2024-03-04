package io.reactivex;
/* loaded from: classes7.dex */
public interface r<T> {
    void onComplete();

    void onError(Throwable th2);

    void onNext(T t10);

    void onSubscribe(th.b bVar);
}
