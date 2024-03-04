package jg;

import io.grpc.netty.shaded.io.netty.channel.a;
import io.grpc.netty.shaded.io.netty.channel.c0;
import io.grpc.netty.shaded.io.netty.channel.l0;
import io.grpc.netty.shaded.io.netty.channel.q;
import io.grpc.netty.shaded.io.netty.channel.s;
import io.grpc.netty.shaded.io.netty.channel.y;
import java.net.SocketAddress;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class f extends io.grpc.netty.shaded.io.netty.channel.a {

    /* renamed from: t  reason: collision with root package name */
    private static final q f53253t = new q(false);

    /* renamed from: s  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.f f53254s;

    /* loaded from: classes5.dex */
    private final class b extends a.AbstractC0473a {
        private b() {
            super();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public void Q(SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
            yVar.u(new UnsupportedOperationException());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f() {
        super(null);
        this.f53254s = new c0(this);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected a.AbstractC0473a A0() {
        return new b();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected SocketAddress B0() {
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public q R() {
        return f53253t;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public io.grpc.netty.shaded.io.netty.channel.f b0() {
        return this.f53254s;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void g0() {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void h0() {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean isActive() {
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean isOpen() {
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void j0() {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void p0(s sVar) {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected boolean u0(l0 l0Var) {
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected SocketAddress v0() {
        return null;
    }
}
