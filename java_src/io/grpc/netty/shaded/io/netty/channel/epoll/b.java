package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.epoll.a;
import io.grpc.netty.shaded.io.netty.channel.l0;
import io.grpc.netty.shaded.io.netty.channel.s;
import io.grpc.netty.shaded.io.netty.channel.w;
import io.grpc.netty.shaded.io.netty.channel.y;
import io.grpc.netty.shaded.io.netty.channel.z0;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public abstract class b extends io.grpc.netty.shaded.io.netty.channel.epoll.a implements z0 {
    private static final io.grpc.netty.shaded.io.netty.channel.q D = new io.grpc.netty.shaded.io.netty.channel.q(false, 16);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class a extends a.c {

        /* renamed from: k  reason: collision with root package name */
        private final byte[] f43654k;

        a() {
            super();
            this.f43654k = new byte[26];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a.c
        public void F() {
            d b02 = b.this.b0();
            if (b.this.f1(b02)) {
                A();
                return;
            }
            j R = R();
            R.m(b.this.Y0(Native.f43623e));
            w J = b.this.J();
            R.c(b02);
            R.b(1);
            D();
            Throwable th2 = null;
            do {
                try {
                    R.h(b.this.f43634s.q(this.f43654k));
                    if (R.k() == -1) {
                        break;
                    }
                    R.e(1);
                    this.f43645f = false;
                    b bVar = b.this;
                    int k10 = R.k();
                    byte[] bArr = this.f43654k;
                    J.p(bVar.g1(k10, bArr, 1, bArr[0]));
                } catch (Throwable th3) {
                    th2 = th3;
                }
            } while (R.g());
            try {
                R.d();
                J.k();
                if (th2 != null) {
                    J.v(th2);
                }
            } finally {
                E(b02);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a.c, io.grpc.netty.shaded.io.netty.channel.e.a
        public void Q(SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) {
            yVar.u(new UnsupportedOperationException());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(LinuxSocket linuxSocket, boolean z10) {
        super((io.grpc.netty.shaded.io.netty.channel.e) null, linuxSocket, z10);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    public io.grpc.netty.shaded.io.netty.channel.q R() {
        return D;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a
    public boolean R0(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: d1 */
    public a.c A0() {
        return new a();
    }

    abstract io.grpc.netty.shaded.io.netty.channel.e g1(int i9, byte[] bArr, int i10, int i11) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: h1 */
    public InetSocketAddress B0() {
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    public /* bridge */ /* synthetic */ boolean isActive() {
        return super.isActive();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    public /* bridge */ /* synthetic */ boolean isOpen() {
        return super.isOpen();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void p0(s sVar) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected Object r0(Object obj) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    protected boolean u0(l0 l0Var) {
        return l0Var instanceof h;
    }
}
