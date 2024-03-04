package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.v0;
import io.grpc.netty.shaded.io.netty.util.w;
/* loaded from: classes5.dex */
class j extends v0.a implements v0.b {

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.unix.d f43676b;

    /* renamed from: c  reason: collision with root package name */
    private final w f43677c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f43678d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f43679e;

    /* loaded from: classes5.dex */
    class a implements w {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.w
        public boolean get() {
            return j.this.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(v0.b bVar) {
        super(bVar);
        this.f43676b = new io.grpc.netty.shaded.io.netty.channel.unix.d();
        this.f43677c = new a();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
    public final kg.j a(kg.k kVar) {
        this.f43676b.n(kVar);
        return l().a(this.f43676b);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v0.b
    public final boolean f(w wVar) {
        return ((v0.b) l()).f(wVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
    public final boolean g() {
        return f(this.f43677c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(boolean z10) {
        this.f43678d = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n() {
        return this.f43679e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return (this.f43678d && k() > 0) || (!this.f43678d && k() == j());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p() {
        this.f43679e = true;
    }
}
