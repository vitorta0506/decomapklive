package com.google.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class g2 {

    /* renamed from: c  reason: collision with root package name */
    private static final g2 f14982c = new g2();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap<Class<?>, n2<?>> f14984b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final o2 f14983a = new d1();

    private g2() {
    }

    public static g2 a() {
        return f14982c;
    }

    public <T> void b(T t10, k2 k2Var, f0 f0Var) throws IOException {
        e(t10).i(t10, k2Var, f0Var);
    }

    public n2<?> c(Class<?> cls, n2<?> n2Var) {
        u0.b(cls, "messageType");
        u0.b(n2Var, "schema");
        return this.f14984b.putIfAbsent(cls, n2Var);
    }

    public <T> n2<T> d(Class<T> cls) {
        u0.b(cls, "messageType");
        n2<T> n2Var = (n2<T>) this.f14984b.get(cls);
        if (n2Var == null) {
            n2<T> a10 = this.f14983a.a(cls);
            n2<T> n2Var2 = (n2<T>) c(cls, a10);
            return n2Var2 != null ? n2Var2 : a10;
        }
        return n2Var;
    }

    public <T> n2<T> e(T t10) {
        return d(t10.getClass());
    }
}
