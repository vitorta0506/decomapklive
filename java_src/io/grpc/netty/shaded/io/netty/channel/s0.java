package io.grpc.netty.shaded.io.netty.channel;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public abstract class s0 extends ug.u implements m0 {

    /* renamed from: f  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43779f;

    /* renamed from: g  reason: collision with root package name */
    private static final int f43780g;

    static {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(s0.class);
        f43779f = b10;
        int max = Math.max(1, io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.eventLoopThreads", io.grpc.netty.shaded.io.netty.util.p.a() * 2));
        f43780g = max;
        if (b10.isDebugEnabled()) {
            b10.debug("-Dio.netty.eventLoopThreads: {}", Integer.valueOf(max));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s0(int i9, ThreadFactory threadFactory, Object... objArr) {
        super(i9 == 0 ? f43780g : i9, threadFactory, objArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m0
    public i i0(e eVar) {
        return next().i0(eVar);
    }

    @Override // ug.u
    protected ThreadFactory n() {
        return new ug.i(getClass(), 10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ug.u
    /* renamed from: u */
    public abstract l0 m(Executor executor, Object... objArr) throws Exception;

    @Override // ug.u, ug.l, io.grpc.netty.shaded.io.netty.channel.m0
    public l0 next() {
        return (l0) super.next();
    }
}
