package io.grpc.netty.shaded.io.netty.channel;

import com.guochao.faceshow.utils.HttpFileUtil;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes5.dex */
public class c0 implements f {

    /* renamed from: l  reason: collision with root package name */
    private static final r0 f43554l = h0.f43703b;

    /* renamed from: m  reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater<c0> f43555m = AtomicIntegerFieldUpdater.newUpdater(c0.class, "h");

    /* renamed from: n  reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater<c0, f1> f43556n = AtomicReferenceFieldUpdater.newUpdater(c0.class, f1.class, "j");

    /* renamed from: a  reason: collision with root package name */
    protected final e f43557a;

    /* renamed from: b  reason: collision with root package name */
    private volatile kg.k f43558b;

    /* renamed from: c  reason: collision with root package name */
    private volatile v0 f43559c;

    /* renamed from: d  reason: collision with root package name */
    private volatile r0 f43560d;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f43561e;

    /* renamed from: f  reason: collision with root package name */
    private volatile int f43562f;

    /* renamed from: g  reason: collision with root package name */
    private volatile int f43563g;

    /* renamed from: h  reason: collision with root package name */
    private volatile int f43564h;

    /* renamed from: i  reason: collision with root package name */
    private volatile boolean f43565i;

    /* renamed from: j  reason: collision with root package name */
    private volatile f1 f43566j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f43567k;

    public c0(e eVar) {
        this(eVar, new d());
    }

    private void B(v0 v0Var, q qVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(v0Var, "allocator");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(qVar, "metadata");
        if (v0Var instanceof q0) {
            ((q0) v0Var).b(qVar.a());
        }
        A(v0Var);
    }

    private boolean q() {
        return this.f43567k;
    }

    private f z(boolean z10) {
        this.f43567k = z10;
        return this;
    }

    public f A(v0 v0Var) {
        this.f43559c = (v0) io.grpc.netty.shaded.io.netty.util.internal.s.h(v0Var, "allocator");
        return this;
    }

    public f C(int i9) {
        f1 f1Var;
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "writeBufferHighWaterMark");
        do {
            f1Var = this.f43566j;
            if (i9 < f1Var.b()) {
                throw new IllegalArgumentException("writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark (" + f1Var.b() + "): " + i9);
            }
        } while (!androidx.concurrent.futures.a.a(f43556n, this, f1Var, new f1(f1Var.b(), i9, false)));
        return this;
    }

    public f D(int i9) {
        f1 f1Var;
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "writeBufferLowWaterMark");
        do {
            f1Var = this.f43566j;
            if (i9 > f1Var.a()) {
                throw new IllegalArgumentException("writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark (" + f1Var.a() + "): " + i9);
            }
        } while (!androidx.concurrent.futures.a.a(f43556n, this, f1Var, new f1(i9, f1Var.a(), false)));
        return this;
    }

    public f E(f1 f1Var) {
        this.f43566j = (f1) io.grpc.netty.shaded.io.netty.util.internal.s.h(f1Var, "writeBufferWaterMark");
        return this;
    }

    public f F(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "writeSpinCount");
        if (i9 == Integer.MAX_VALUE) {
            i9--;
        }
        this.f43562f = i9;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> void G(r<T> rVar, T t10) {
        ((r) io.grpc.netty.shaded.io.netty.util.internal.s.h(rVar, "option")).d(t10);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public kg.k a() {
        return this.f43558b;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public <T> T b(r<T> rVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(rVar, "option");
        if (rVar == r.f43728i) {
            return (T) Integer.valueOf(c());
        }
        if (rVar == r.f43729j) {
            return (T) Integer.valueOf(o());
        }
        if (rVar == r.f43731l) {
            return (T) Integer.valueOf(i());
        }
        if (rVar == r.f43725f) {
            return (T) a();
        }
        if (rVar == r.f43726g) {
            return (T) m();
        }
        if (rVar == r.f43736q) {
            return (T) Boolean.valueOf(l());
        }
        if (rVar == r.f43737r) {
            return (T) Boolean.valueOf(g());
        }
        if (rVar == r.f43732m) {
            return (T) Integer.valueOf(f());
        }
        if (rVar == r.f43733n) {
            return (T) Integer.valueOf(d());
        }
        if (rVar == r.f43734o) {
            return (T) r();
        }
        if (rVar == r.f43727h) {
            return (T) j();
        }
        if (rVar == r.J) {
            return (T) Boolean.valueOf(q());
        }
        if (rVar == r.f43730k) {
            return (T) Integer.valueOf(p());
        }
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public int c() {
        return this.f43561e;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public int d() {
        return this.f43566j.b();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public int f() {
        return this.f43566j.a();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public boolean g() {
        return this.f43565i;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public int i() {
        return this.f43562f;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public r0 j() {
        return this.f43560d;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public <T> boolean k(r<T> rVar, T t10) {
        G(rVar, t10);
        if (rVar == r.f43728i) {
            v(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43729j) {
            w(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43731l) {
            F(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43725f) {
            s((kg.k) t10);
            return true;
        } else if (rVar == r.f43726g) {
            A((v0) t10);
            return true;
        } else if (rVar == r.f43736q) {
            u(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43737r) {
            t(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43732m) {
            C(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43733n) {
            D(((Integer) t10).intValue());
            return true;
        } else if (rVar == r.f43734o) {
            E((f1) t10);
            return true;
        } else if (rVar == r.f43727h) {
            y((r0) t10);
            return true;
        } else if (rVar == r.J) {
            z(((Boolean) t10).booleanValue());
            return true;
        } else if (rVar == r.f43730k) {
            x(((Integer) t10).intValue());
            return true;
        } else {
            return false;
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public boolean l() {
        return this.f43564h == 1;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.f
    public <T extends v0> T m() {
        return (T) this.f43559c;
    }

    protected void n() {
    }

    @Deprecated
    public int o() {
        try {
            return ((q0) m()).c();
        } catch (ClassCastException e10) {
            throw new IllegalStateException("getRecvByteBufAllocator() must return an object of type MaxMessagesRecvByteBufAllocator", e10);
        }
    }

    public int p() {
        return this.f43563g;
    }

    public f1 r() {
        return this.f43566j;
    }

    public f s(kg.k kVar) {
        this.f43558b = (kg.k) io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "allocator");
        return this;
    }

    public f t(boolean z10) {
        this.f43565i = z10;
        return this;
    }

    public f u(boolean z10) {
        boolean z11 = f43555m.getAndSet(this, z10 ? 1 : 0) == 1;
        if (z10 && !z11) {
            this.f43557a.read();
        } else if (!z10 && z11) {
            n();
        }
        return this;
    }

    public f v(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "connectTimeoutMillis");
        this.f43561e = i9;
        return this;
    }

    @Deprecated
    public f w(int i9) {
        try {
            ((q0) m()).b(i9);
            return this;
        } catch (ClassCastException e10) {
            throw new IllegalStateException("getRecvByteBufAllocator() must return an object of type MaxMessagesRecvByteBufAllocator", e10);
        }
    }

    public f x(int i9) {
        this.f43563g = io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "maxMessagesPerWrite");
        return this;
    }

    public f y(r0 r0Var) {
        this.f43560d = (r0) io.grpc.netty.shaded.io.netty.util.internal.s.h(r0Var, "estimator");
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c0(e eVar, v0 v0Var) {
        this.f43558b = kg.k.f53822a;
        this.f43560d = f43554l;
        this.f43561e = HttpFileUtil.TIMEOUT;
        this.f43562f = 16;
        this.f43563g = Integer.MAX_VALUE;
        this.f43564h = 1;
        this.f43565i = true;
        this.f43566j = f1.f43687c;
        this.f43567k = true;
        B(v0Var, eVar.R());
        this.f43557a = eVar;
    }
}
