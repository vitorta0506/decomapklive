package og;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.q;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.s;
import io.grpc.netty.shaded.io.netty.util.internal.a0;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.SocketAddress;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import java.util.List;
import ng.g;
import ng.h;
/* loaded from: classes5.dex */
public class b extends mg.c implements g {
    private static final q D = new q(false, 16);
    private static final SelectorProvider E = SelectorProvider.provider();
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b F = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(b.class);
    private final h C;

    /* renamed from: og.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private final class C0589b extends ng.d {
        private ServerSocketChannel X() {
            return ((b) this.f43557a).R0();
        }

        @Override // ng.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
        public <T> T b(r<T> rVar) {
            if (t.l0() >= 7 && (rVar instanceof og.a)) {
                return (T) og.a.g(X(), (og.a) rVar);
            }
            return (T) super.b(rVar);
        }

        @Override // ng.d, io.grpc.netty.shaded.io.netty.channel.c0, io.grpc.netty.shaded.io.netty.channel.f
        public <T> boolean k(r<T> rVar, T t10) {
            if (t.l0() >= 7 && (rVar instanceof og.a)) {
                return og.a.h(X(), (og.a) rVar, t10);
            }
            return super.k(rVar, t10);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.c0
        protected void n() {
            b.this.L0();
        }

        private C0589b(b bVar, ServerSocket serverSocket) {
            super(bVar, serverSocket);
        }
    }

    public b() {
        this(g1(E));
    }

    private static ServerSocketChannel g1(SelectorProvider selectorProvider) {
        try {
            return selectorProvider.openServerSocketChannel();
        } catch (IOException e10) {
            throw new ChannelException("Failed to open a server socket.", e10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected SocketAddress B0() {
        return null;
    }

    @Override // mg.b
    protected boolean N0(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // mg.b
    protected void P0() throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public q R() {
        return D;
    }

    @Override // mg.c
    protected boolean V0(Throwable th2) {
        return super.V0(th2);
    }

    @Override // mg.c
    protected int Z0(List<Object> list) throws Exception {
        SocketChannel a10 = a0.a(R0());
        if (a10 != null) {
            try {
                list.add(new d(this, a10));
                return 1;
            } catch (Throwable th2) {
                F.warn("Failed to create a new channel from an accepted socket.", th2);
                try {
                    a10.close();
                    return 0;
                } catch (Throwable th3) {
                    F.warn("Failed to close a socket.", th3);
                    return 0;
                }
            }
        }
        return 0;
    }

    @Override // mg.c
    protected boolean a1(Object obj, s sVar) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: d1 */
    public h b0() {
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mg.b
    /* renamed from: e1 */
    public ServerSocketChannel R0() {
        return (ServerSocketChannel) super.R0();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: f1 */
    public InetSocketAddress K() {
        return (InetSocketAddress) super.K();
    }

    @Override // mg.b, io.grpc.netty.shaded.io.netty.channel.a
    protected void h0() throws Exception {
        R0().close();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a, io.grpc.netty.shaded.io.netty.channel.e
    /* renamed from: h1 */
    public InetSocketAddress H() {
        return null;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean isActive() {
        return isOpen() && R0().socket().isBound();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected void j0() throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected final Object r0(Object obj) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.a
    protected SocketAddress v0() {
        return a0.h(R0().socket());
    }

    public b(ServerSocketChannel serverSocketChannel) {
        super(null, serverSocketChannel, 16);
        this.C = new C0589b(this, R0().socket());
    }
}
