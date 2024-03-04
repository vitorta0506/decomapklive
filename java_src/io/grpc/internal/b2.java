package io.grpc.internal;

import io.grpc.Status;
import io.grpc.t0;
import java.util.Map;
/* loaded from: classes5.dex */
public final class b2 extends t0.h {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f42473a;

    /* renamed from: b  reason: collision with root package name */
    private final int f42474b;

    /* renamed from: c  reason: collision with root package name */
    private final int f42475c;

    /* renamed from: d  reason: collision with root package name */
    private final j f42476d;

    public b2(boolean z10, int i9, int i10, j jVar) {
        this.f42473a = z10;
        this.f42474b = i9;
        this.f42475c = i10;
        this.f42476d = (j) com.google.common.base.o.t(jVar, "autoLoadBalancerFactory");
    }

    @Override // io.grpc.t0.h
    public t0.c a(Map<String, ?> map) {
        Object c10;
        try {
            t0.c f10 = this.f42476d.f(map);
            if (f10 == null) {
                c10 = null;
            } else if (f10.d() != null) {
                return t0.c.b(f10.d());
            } else {
                c10 = f10.c();
            }
            return t0.c.a(j1.b(map, this.f42473a, this.f42474b, this.f42475c, c10));
        } catch (RuntimeException e10) {
            return t0.c.b(Status.f41706h.r("failed to parse service config").q(e10));
        }
    }
}
