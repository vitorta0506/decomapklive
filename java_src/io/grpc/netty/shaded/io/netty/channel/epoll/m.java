package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.l0;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes5.dex */
public final class m extends b implements ng.g {
    private final n E;
    private volatile Collection<InetAddress> F;

    public m() {
        super(LinuxSocket.m0(), false);
        this.F = Collections.emptyList();
        this.E = new n(this);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.b
    protected io.grpc.netty.shaded.io.netty.channel.e g1(int i9, byte[] bArr, int i10, int i11) throws Exception {
        return new o(this, new LinuxSocket(i9), io.grpc.netty.shaded.io.netty.channel.unix.c.a(bArr, i10, i11));
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: i1 */
    public n b0() {
        return this.E;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: j1 */
    public InetSocketAddress K() {
        return (InetSocketAddress) super.K();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: k1 */
    public InetSocketAddress H() {
        return (InetSocketAddress) super.H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l1(Map<InetAddress, byte[]> map) throws IOException {
        this.F = q.a(this, this.F, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection<InetAddress> m1() {
        return this.F;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.epoll.b, io.grpc.netty.shaded.io.netty.channel.epoll.a, io.grpc.netty.shaded.io.netty.channel.a
    protected boolean u0(l0 l0Var) {
        return l0Var instanceof h;
    }
}
