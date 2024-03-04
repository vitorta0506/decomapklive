package mg;

import io.grpc.netty.shaded.io.netty.channel.j0;
import io.grpc.netty.shaded.io.netty.channel.l0;
import io.grpc.netty.shaded.io.netty.channel.n0;
import io.grpc.netty.shaded.io.netty.channel.s0;
import io.grpc.netty.shaded.io.netty.channel.y0;
import java.nio.channels.spi.SelectorProvider;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import ug.b0;
import ug.c0;
/* loaded from: classes5.dex */
public class e extends s0 {
    public e(int i9, ThreadFactory threadFactory) {
        this(i9, threadFactory, SelectorProvider.provider());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.s0, ug.u
    /* renamed from: u */
    public l0 m(Executor executor, Object... objArr) throws Exception {
        SelectorProvider selectorProvider = (SelectorProvider) objArr[0];
        y0 y0Var = (y0) objArr[1];
        b0 b0Var = (b0) objArr[2];
        int length = objArr.length;
        return new d(this, executor, selectorProvider, y0Var.a(), b0Var, length > 3 ? (n0) objArr[3] : null, length > 4 ? (n0) objArr[4] : null);
    }

    public e(int i9, ThreadFactory threadFactory, SelectorProvider selectorProvider) {
        this(i9, threadFactory, selectorProvider, j0.f43710a);
    }

    public e(int i9, ThreadFactory threadFactory, SelectorProvider selectorProvider, y0 y0Var) {
        super(i9, threadFactory, selectorProvider, y0Var, c0.a());
    }
}
