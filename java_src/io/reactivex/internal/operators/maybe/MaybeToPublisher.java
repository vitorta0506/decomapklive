package io.reactivex.internal.operators.maybe;

import io.reactivex.i;
import vh.o;
/* loaded from: classes7.dex */
public enum MaybeToPublisher implements o<i<Object>, il.a<Object>> {
    INSTANCE;

    public static <T> o<i<T>, il.a<T>> instance() {
        return INSTANCE;
    }

    @Override // vh.o
    public il.a<Object> apply(i<Object> iVar) throws Exception {
        return new a(iVar);
    }
}
