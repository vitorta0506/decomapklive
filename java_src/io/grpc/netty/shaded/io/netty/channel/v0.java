package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
public interface v0 {

    /* loaded from: classes5.dex */
    public static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final c f43839a;

        public a(c cVar) {
            this.f43839a = (c) io.grpc.netty.shaded.io.netty.util.internal.s.h(cVar, "delegate");
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void b(int i9) {
            this.f43839a.b(i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void c(f fVar) {
            this.f43839a.c(fVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void d() {
            this.f43839a.d();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void e(int i9) {
            this.f43839a.e(i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public void h(int i9) {
            this.f43839a.h(i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public int j() {
            return this.f43839a.j();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public int k() {
            return this.f43839a.k();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final c l() {
            return this.f43839a;
        }
    }

    /* loaded from: classes5.dex */
    public interface b extends c {
        boolean f(io.grpc.netty.shaded.io.netty.util.w wVar);
    }

    @Deprecated
    /* loaded from: classes5.dex */
    public interface c {
        kg.j a(kg.k kVar);

        void b(int i9);

        void c(f fVar);

        void d();

        void e(int i9);

        boolean g();

        void h(int i9);

        int i();

        int j();

        int k();
    }

    c a();
}
