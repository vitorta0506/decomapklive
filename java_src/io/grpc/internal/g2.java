package io.grpc.internal;

import io.grpc.internal.f2;
/* loaded from: classes5.dex */
public final class g2<T> implements p1<T> {

    /* renamed from: a  reason: collision with root package name */
    private final f2.d<T> f42749a;

    private g2(f2.d<T> dVar) {
        this.f42749a = dVar;
    }

    public static <T> g2<T> c(f2.d<T> dVar) {
        return new g2<>(dVar);
    }

    @Override // io.grpc.internal.p1
    public T a() {
        return (T) f2.d(this.f42749a);
    }

    @Override // io.grpc.internal.p1
    public T b(Object obj) {
        f2.f(this.f42749a, obj);
        return null;
    }
}
