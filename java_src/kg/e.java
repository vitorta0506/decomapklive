package kg;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes5.dex */
public abstract class e extends kg.a {

    /* renamed from: k  reason: collision with root package name */
    private static final long f53802k = io.grpc.netty.shaded.io.netty.util.internal.y.a(e.class, "refCnt");

    /* renamed from: l  reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater<e> f53803l = AtomicIntegerFieldUpdater.newUpdater(e.class, "j");

    /* renamed from: m  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.y<e> f53804m = new a();

    /* renamed from: j  reason: collision with root package name */
    private volatile int f53805j;

    /* loaded from: classes5.dex */
    static class a extends io.grpc.netty.shaded.io.netty.util.internal.y<e> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.y
        protected long r() {
            return e.f53802k;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.y
        protected AtomicIntegerFieldUpdater<e> s() {
            return e.f53803l;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(int i9) {
        super(i9);
        this.f53805j = f53804m.b();
    }

    private boolean D3(boolean z10) {
        if (z10) {
            C3();
        }
        return z10;
    }

    protected abstract void C3();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void E3() {
        f53804m.j(this);
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: T1 */
    public j retain() {
        return f53804m.k(this);
    }

    @Override // kg.j
    public j U1(int i9) {
        return f53804m.l(this, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.j
    public boolean f1() {
        return f53804m.c(this);
    }

    @Override // kg.j
    public j q2() {
        return this;
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: r2 */
    public j touch(Object obj) {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return f53804m.g(this);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return D3(f53804m.h(this));
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        return D3(f53804m.i(this, i9));
    }
}
