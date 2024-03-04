package ug;

import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public final class t implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public static final t f58509a = new t();

    private t() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        ((Runnable) io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "command")).run();
    }
}
