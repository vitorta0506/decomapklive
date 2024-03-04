package io.grpc.internal;

import io.grpc.r0;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public abstract class b<T extends io.grpc.r0<T>> extends io.grpc.r0<T> {

    /* renamed from: a  reason: collision with root package name */
    protected int f42426a = 4194304;

    @Override // io.grpc.r0
    public io.grpc.q0 a() {
        return q().a();
    }

    @Override // io.grpc.r0
    /* renamed from: p */
    public T b(Map<String, ?> map) {
        q().b(map);
        return w();
    }

    protected abstract io.grpc.r0<?> q();

    @Override // io.grpc.r0
    /* renamed from: r */
    public T c() {
        q().c();
        return w();
    }

    @Override // io.grpc.r0
    /* renamed from: s */
    public T d() {
        q().d();
        return w();
    }

    @Override // io.grpc.r0
    /* renamed from: t */
    public T e(Executor executor) {
        q().e(executor);
        return w();
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", q()).toString();
    }

    @Override // io.grpc.r0
    /* renamed from: u */
    public T g(List<io.grpc.h> list) {
        q().g(list);
        return w();
    }

    @Override // io.grpc.r0
    /* renamed from: v */
    public T h(io.grpc.h... hVarArr) {
        q().h(hVarArr);
        return w();
    }

    protected final T w() {
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: x */
    public T o(String str) {
        q().o(str);
        return w();
    }
}
