package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext;
import java.util.concurrent.locks.Lock;
/* loaded from: classes5.dex */
public final class w0 extends z0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(j1 j1Var, s0 s0Var) {
        super(j1Var, s0Var, SSL.f44944k, new y0(j1Var.f44607n));
    }

    public boolean i(byte[] bArr) {
        Lock writeLock = this.f44886c.f44608o.writeLock();
        writeLock.lock();
        try {
            return SSLContext.setSessionIdContext(this.f44886c.f44597d, bArr);
        } finally {
            writeLock.unlock();
        }
    }
}
