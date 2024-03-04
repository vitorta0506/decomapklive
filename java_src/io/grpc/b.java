package io.grpc;

import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public abstract class b {

    /* loaded from: classes5.dex */
    public static abstract class a {
        public abstract void a(s0 s0Var);

        public abstract void b(Status status);
    }

    /* renamed from: io.grpc.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static abstract class AbstractC0464b {
        public abstract String a();

        public abstract MethodDescriptor<?, ?> b();

        public abstract SecurityLevel c();
    }

    public abstract void a(AbstractC0464b abstractC0464b, Executor executor, a aVar);
}
