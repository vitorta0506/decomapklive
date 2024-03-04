package com.google.common.reflect;

import com.google.common.base.o;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
/* loaded from: classes2.dex */
public final class b {
    public static <T> T a(Class<T> cls, InvocationHandler invocationHandler) {
        o.s(invocationHandler);
        o.m(cls.isInterface(), "%s is not an interface", cls);
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
