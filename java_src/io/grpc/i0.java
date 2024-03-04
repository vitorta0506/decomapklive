package io.grpc;

import androidx.core.app.NotificationCompat;
/* loaded from: classes5.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    private final InternalKnownTransport f42341a;

    public i0(InternalKnownTransport internalKnownTransport) {
        this.f42341a = (InternalKnownTransport) com.google.common.base.o.t(internalKnownTransport, NotificationCompat.CATEGORY_TRANSPORT);
    }

    public Object a(MethodDescriptor<?, ?> methodDescriptor) {
        return methodDescriptor.d(this.f42341a.ordinal());
    }

    public void b(MethodDescriptor<?, ?> methodDescriptor, Object obj) {
        methodDescriptor.k(this.f42341a.ordinal(), obj);
    }
}
