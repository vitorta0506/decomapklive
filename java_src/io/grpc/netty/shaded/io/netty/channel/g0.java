package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.v0;
/* loaded from: classes5.dex */
public abstract class g0 implements q0 {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f43690a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f43691b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f43692c;

    /* loaded from: classes5.dex */
    public abstract class a implements v0.b {

        /* renamed from: a  reason: collision with root package name */
        private f f43693a;

        /* renamed from: b  reason: collision with root package name */
        private int f43694b;

        /* renamed from: c  reason: collision with root package name */
        private int f43695c;

        /* renamed from: d  reason: collision with root package name */
        private int f43696d;

        /* renamed from: e  reason: collision with root package name */
        private int f43697e;

        /* renamed from: f  reason: collision with root package name */
        private int f43698f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f43699g;

        /* renamed from: h  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.util.w f43700h = new C0483a();

        /* renamed from: io.grpc.netty.shaded.io.netty.channel.g0$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0483a implements io.grpc.netty.shaded.io.netty.util.w {
            C0483a() {
            }

            @Override // io.grpc.netty.shaded.io.netty.util.w
            public boolean get() {
                return a.this.f43697e == a.this.f43698f;
            }
        }

        public a() {
            this.f43699g = g0.this.f43692c;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public kg.j a(kg.k kVar) {
            return kVar.d(i());
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void b(int i9) {
            this.f43697e = i9;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void c(f fVar) {
            this.f43693a = fVar;
            this.f43694b = g0.this.c();
            this.f43696d = 0;
            this.f43695c = 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void d() {
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public final void e(int i9) {
            this.f43695c += i9;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.b
        public boolean f(io.grpc.netty.shaded.io.netty.util.w wVar) {
            return this.f43693a.l() && (!this.f43699g || wVar.get()) && this.f43695c < this.f43694b && (g0.this.f43690a || this.f43696d > 0);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public boolean g() {
            return f(this.f43700h);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void h(int i9) {
            this.f43698f = i9;
            if (i9 > 0) {
                this.f43696d += i9;
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public int j() {
            return this.f43697e;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public final int k() {
            return this.f43698f;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final int n() {
            int i9 = this.f43696d;
            if (i9 < 0) {
                return Integer.MAX_VALUE;
            }
            return i9;
        }
    }

    public g0() {
        this(1);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.q0
    public q0 b(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "maxMessagesPerRead");
        this.f43691b = i9;
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.q0
    public int c() {
        return this.f43691b;
    }

    public g0(int i9) {
        this(i9, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(int i9, boolean z10) {
        this.f43692c = true;
        this.f43690a = z10;
        b(i9);
    }
}
