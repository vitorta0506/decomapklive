package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.epoll.a;
import io.grpc.netty.shaded.io.netty.channel.epoll.c;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Executor;
import ug.s;
/* loaded from: classes5.dex */
public final class o extends c implements ng.i {
    private final p L;
    private volatile Collection<InetAddress> M;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends c.C0482c {
        private b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.channel.epoll.c.C0482c, io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a
        public Executor v() {
            try {
                if (!o.this.isOpen() || o.this.b0().h() <= 0) {
                    return null;
                }
                ((h) o.this.a0()).q1(o.this);
                return s.f58497q;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public o() {
        super(LinuxSocket.m0(), false);
        this.M = Collections.emptyList();
        this.L = new p(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a
    public boolean S0(SocketAddress socketAddress) throws Exception {
        if (Native.f43629k && this.L.k0()) {
            io.grpc.netty.shaded.io.netty.channel.s S = k0().S();
            S.a();
            Object g10 = S.g();
            if (g10 instanceof kg.j) {
                long V0 = V0((kg.j) g10, (InetSocketAddress) socketAddress, true);
                if (V0 > 0) {
                    S.A(V0);
                    return true;
                }
            }
        }
        return super.S0(socketAddress);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.c, io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    /* renamed from: d1 */
    public a.c A0() {
        return new b();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: s1 */
    public p b0() {
        return this.L;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: t1 */
    public InetSocketAddress K() {
        return (InetSocketAddress) super.K();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: u1 */
    public InetSocketAddress H() {
        return (InetSocketAddress) super.H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v1(Map<InetAddress, byte[]> map) throws IOException {
        this.M = q.a(this, this.M, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(io.grpc.netty.shaded.io.netty.channel.e eVar, LinuxSocket linuxSocket, InetSocketAddress inetSocketAddress) {
        super(eVar, linuxSocket, inetSocketAddress);
        this.M = Collections.emptyList();
        this.L = new p(this);
        if (eVar instanceof m) {
            this.M = ((m) eVar).m1();
        }
    }
}
