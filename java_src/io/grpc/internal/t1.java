package io.grpc.internal;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import io.grpc.MethodDescriptor;
import io.grpc.n0;
/* loaded from: classes5.dex */
public final class t1 extends n0.f {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.c f43072a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.s0 f43073b;

    /* renamed from: c  reason: collision with root package name */
    private final MethodDescriptor<?, ?> f43074c;

    public t1(MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar) {
        this.f43074c = (MethodDescriptor) com.google.common.base.o.t(methodDescriptor, PushConstants.MZ_PUSH_MESSAGE_METHOD);
        this.f43073b = (io.grpc.s0) com.google.common.base.o.t(s0Var, "headers");
        this.f43072a = (io.grpc.c) com.google.common.base.o.t(cVar, "callOptions");
    }

    @Override // io.grpc.n0.f
    public io.grpc.c a() {
        return this.f43072a;
    }

    @Override // io.grpc.n0.f
    public io.grpc.s0 b() {
        return this.f43073b;
    }

    @Override // io.grpc.n0.f
    public MethodDescriptor<?, ?> c() {
        return this.f43074c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t1.class != obj.getClass()) {
            return false;
        }
        t1 t1Var = (t1) obj;
        return com.google.common.base.l.a(this.f43072a, t1Var.f43072a) && com.google.common.base.l.a(this.f43073b, t1Var.f43073b) && com.google.common.base.l.a(this.f43074c, t1Var.f43074c);
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f43072a, this.f43073b, this.f43074c);
    }

    public final String toString() {
        return "[method=" + this.f43074c + " headers=" + this.f43073b + " callOptions=" + this.f43072a + "]";
    }
}
