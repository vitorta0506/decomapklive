package com.google.common.reflect;

import com.google.common.base.o;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes2.dex */
abstract class c<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public final Type capture() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        o.m(genericSuperclass instanceof ParameterizedType, "%s isn't parameterized", genericSuperclass);
        return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
    }
}
