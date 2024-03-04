package com.guochao.faceshow.aaspring.base.http.callback;

import java.lang.reflect.Type;
/* loaded from: classes3.dex */
public abstract class b<T> {
    public Type getRawType() {
        return n7.d.c(getClass());
    }

    public Type getType() {
        return n7.d.a(getClass());
    }

    public abstract void onCompleted();

    public abstract void onError(g7.a<T> aVar);

    public abstract void onStart();

    public abstract void onSuccess(T t10);
}
