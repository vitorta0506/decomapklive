package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.j0;
import io.grpc.netty.shaded.io.netty.channel.l0;
import io.grpc.netty.shaded.io.netty.channel.n0;
import io.grpc.netty.shaded.io.netty.channel.s0;
import io.grpc.netty.shaded.io.netty.channel.y0;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import ug.b0;
import ug.c0;
/* loaded from: classes5.dex */
public final class i extends s0 {
    public i() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.s0, ug.u
    /* renamed from: u */
    public l0 m(Executor executor, Object... objArr) throws Exception {
        Integer num = (Integer) objArr[0];
        y0 y0Var = (y0) objArr[1];
        b0 b0Var = (b0) objArr[2];
        int length = objArr.length;
        return new h(this, executor, num.intValue(), y0Var.a(), b0Var, length > 3 ? (n0) objArr[3] : null, length > 4 ? (n0) objArr[4] : null);
    }

    public i(int i9) {
        this(i9, null);
    }

    public i(int i9, ThreadFactory threadFactory) {
        this(i9, threadFactory, 0);
    }

    @Deprecated
    public i(int i9, ThreadFactory threadFactory, int i10) {
        this(i9, threadFactory, i10, j0.f43710a);
    }

    @Deprecated
    public i(int i9, ThreadFactory threadFactory, int i10, y0 y0Var) {
        super(i9, threadFactory, Integer.valueOf(i10), y0Var, c0.a());
        lg.a.a();
    }
}
