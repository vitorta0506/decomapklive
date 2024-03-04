package ug;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public final class g0 implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadFactory f58465a;

    public g0(ThreadFactory threadFactory) {
        this.f58465a = (ThreadFactory) io.grpc.netty.shaded.io.netty.util.internal.s.h(threadFactory, "threadFactory");
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f58465a.newThread(runnable).start();
    }
}
