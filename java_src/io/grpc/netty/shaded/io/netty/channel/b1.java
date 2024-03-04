package io.grpc.netty.shaded.io.netty.channel;

import java.util.Queue;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public abstract class b1 extends ug.f0 implements l0 {
    protected static final int E = Math.max(16, io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.eventLoop.maxPendingTasks", Integer.MAX_VALUE));
    private final Queue<Runnable> D;

    /* JADX INFO: Access modifiers changed from: protected */
    public b1(m0 m0Var, Executor executor, boolean z10, Queue<Runnable> queue, Queue<Runnable> queue2, ug.b0 b0Var) {
        super(m0Var, executor, z10, queue, b0Var);
        this.D = (Queue) io.grpc.netty.shaded.io.netty.util.internal.s.h(queue2, "tailTaskQueue");
    }

    public i a1(y yVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(yVar, "promise");
        yVar.d().k0().U(this, yVar);
        return yVar;
    }

    @Override // ug.f0
    protected void e0() {
        P0(this.D);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.m0
    public i i0(e eVar) {
        return a1(new f0(eVar, this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ug.f0
    public boolean s0() {
        return super.s0() || !this.D.isEmpty();
    }

    @Override // ug.a, ug.l, io.grpc.netty.shaded.io.netty.channel.m0
    public l0 next() {
        return (l0) super.next();
    }
}
