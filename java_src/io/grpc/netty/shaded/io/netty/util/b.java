package io.grpc.netty.shaded.io.netty.util;

import io.grpc.netty.shaded.io.netty.util.internal.y;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes5.dex */
public abstract class b implements s {
    private volatile int refCnt = updater.b();
    private static final long REFCNT_FIELD_OFFSET = y.a(b.class, "refCnt");
    private static final AtomicIntegerFieldUpdater<b> AIF_UPDATER = AtomicIntegerFieldUpdater.newUpdater(b.class, "refCnt");
    private static final y<b> updater = new a();

    /* loaded from: classes5.dex */
    static class a extends y<b> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.y
        protected long r() {
            return b.REFCNT_FIELD_OFFSET;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.y
        protected AtomicIntegerFieldUpdater<b> s() {
            return b.AIF_UPDATER;
        }
    }

    private boolean handleRelease(boolean z10) {
        if (z10) {
            deallocate();
        }
        return z10;
    }

    protected abstract void deallocate();

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return updater.g(this);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return handleRelease(updater.h(this));
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public s retain() {
        return updater.k(this);
    }

    protected final void setRefCnt(int i9) {
        updater.o(this, i9);
    }

    public s touch() {
        return touch(null);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        return handleRelease(updater.i(this, i9));
    }

    public s retain(int i9) {
        return updater.l(this, i9);
    }
}
