package m5;

import io.grpc.MethodDescriptor;
/* loaded from: classes2.dex */
class v<RequestT, ResponseT> extends com.google.api.gax.rpc.k0<RequestT, ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final MethodDescriptor<RequestT, ResponseT> f54908a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f54909b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(MethodDescriptor<RequestT, ResponseT> methodDescriptor, boolean z10) {
        this.f54908a = (MethodDescriptor) com.google.common.base.o.s(methodDescriptor);
        this.f54909b = z10;
    }

    public String toString() {
        return String.format("direct(%s)", this.f54908a);
    }
}
