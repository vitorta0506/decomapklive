package io.grpc;

import io.grpc.r0;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class r0<T extends r0<T>> {
    public static r0<?> f(String str, int i9) {
        return ManagedChannelProvider.e().a(str, i9);
    }

    private T n() {
        return this;
    }

    public abstract q0 a();

    public T b(Map<String, ?> map) {
        throw new UnsupportedOperationException();
    }

    public abstract T c();

    public T d() {
        throw new UnsupportedOperationException();
    }

    public abstract T e(Executor executor);

    public abstract T g(List<h> list);

    public abstract T h(h... hVarArr);

    public T i(long j10, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    public T j(long j10, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    public T k(boolean z10) {
        throw new UnsupportedOperationException();
    }

    public T l(int i9) {
        com.google.common.base.o.e(i9 >= 0, "bytes must be >= 0");
        return n();
    }

    public T m(int i9) {
        com.google.common.base.o.e(i9 > 0, "maxInboundMetadataSize must be > 0");
        return n();
    }

    public abstract T o(String str);
}
