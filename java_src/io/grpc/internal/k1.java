package io.grpc.internal;

import io.grpc.Status;
/* loaded from: classes5.dex */
public interface k1 extends r {

    /* loaded from: classes5.dex */
    public interface a {
        void a(Status status);

        void b();

        void c(boolean z10);

        void d();
    }

    void b(Status status);

    void g(Status status);

    Runnable h(a aVar);
}
