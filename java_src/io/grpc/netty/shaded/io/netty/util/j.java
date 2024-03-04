package io.grpc.netty.shaded.io.netty.util;

import io.grpc.netty.shaded.io.netty.util.i;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public abstract class j<T extends i<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentMap<String, T> f45213a = io.grpc.netty.shaded.io.netty.util.internal.t.p0();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f45214b = new AtomicInteger(1);

    private T a(String str) {
        T t10 = this.f45213a.get(str);
        if (t10 == null) {
            T b10 = b(c(), str);
            T putIfAbsent = this.f45213a.putIfAbsent(str, b10);
            return putIfAbsent == null ? b10 : putIfAbsent;
        }
        return t10;
    }

    protected abstract T b(int i9, String str);

    @Deprecated
    public final int c() {
        return this.f45214b.getAndIncrement();
    }

    public T d(Class<?> cls, String str) {
        return e(((Class) io.grpc.netty.shaded.io.netty.util.internal.s.h(cls, "firstNameComponent")).getName() + '#' + ((String) io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "secondNameComponent")));
    }

    public T e(String str) {
        return a(io.grpc.netty.shaded.io.netty.util.internal.s.a(str, "name"));
    }
}
