package io.grpc.netty.shaded.io.netty.channel.unix;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.util.n;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PortUnreachableException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
/* loaded from: classes5.dex */
public class Socket extends FileDescriptor {

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f43819e;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f43820d;

    public Socket(int i9) {
        super(i9);
        this.f43820d = isIPv6(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int H() {
        int newSocketDomainFd = newSocketDomainFd();
        if (newSocketDomainFd >= 0) {
            return newSocketDomainFd;
        }
        throw new ChannelException(Errors.e("newSocketDomain", newSocketDomainFd));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int I(boolean z10) {
        int newSocketStreamFd = newSocketStreamFd(z10);
        if (newSocketStreamFd >= 0) {
            return newSocketStreamFd;
        }
        throw new ChannelException(Errors.e("newSocketStream", newSocketStreamFd));
    }

    protected static boolean Y(Socket socket, InetAddress inetAddress) {
        return socket.f43820d || (inetAddress instanceof Inet6Address);
    }

    private boolean Z(InetAddress inetAddress) {
        return Y(this, inetAddress);
    }

    private static native int accept(int i9, byte[] bArr);

    private static native int bind(int i9, boolean z10, byte[] bArr, int i10, int i11);

    private static native int bindDomainSocket(int i9, byte[] bArr);

    private static native int connect(int i9, boolean z10, byte[] bArr, int i10, int i11);

    private static native int connectDomainSocket(int i9, byte[] bArr);

    private static native int finishConnect(int i9);

    private static native int getReceiveBufferSize(int i9) throws IOException;

    private static native int getSendBufferSize(int i9) throws IOException;

    private static native int getSoLinger(int i9) throws IOException;

    private static native int getTrafficClass(int i9, boolean z10) throws IOException;

    private static native boolean isIPv6(int i9);

    private static native boolean isIPv6Preferred0(boolean z10);

    private static native int isKeepAlive(int i9) throws IOException;

    private static native int isReuseAddress(int i9) throws IOException;

    private static native int isReusePort(int i9) throws IOException;

    private static native int isTcpNoDelay(int i9) throws IOException;

    private static native byte[] localAddress(int i9);

    private static native int msgFastopen();

    private static native int newSocketDomainFd();

    private static native int newSocketStreamFd(boolean z10);

    private static native int recvFd(int i9);

    private static native byte[] remoteAddress(int i9);

    private static native int sendFd(int i9, int i10);

    private static native int sendTo(int i9, boolean z10, ByteBuffer byteBuffer, int i10, int i11, byte[] bArr, int i12, int i13, int i14);

    private static native int sendToAddress(int i9, boolean z10, long j10, int i10, int i11, byte[] bArr, int i12, int i13, int i14);

    private static native int sendToAddresses(int i9, boolean z10, long j10, int i10, byte[] bArr, int i11, int i12, int i13);

    private static native void setKeepAlive(int i9, int i10) throws IOException;

    private static native void setReceiveBufferSize(int i9, int i10) throws IOException;

    private static native void setReuseAddress(int i9, int i10) throws IOException;

    private static native void setReusePort(int i9, int i10) throws IOException;

    private static native void setSendBufferSize(int i9, int i10) throws IOException;

    private static native void setSoLinger(int i9, int i10) throws IOException;

    private static native void setTcpNoDelay(int i9, int i10) throws IOException;

    private static native void setTrafficClass(int i9, boolean z10, int i10) throws IOException;

    private static native int shutdown(int i9, boolean z10, boolean z11);

    public static void y() {
        f43819e = isIPv6Preferred0(n.e());
    }

    public static boolean z() {
        return f43819e;
    }

    public final boolean A() {
        return FileDescriptor.f(this.f43814a);
    }

    public final boolean B() throws IOException {
        return isKeepAlive(this.f43815b) != 0;
    }

    public final boolean C() {
        return FileDescriptor.h(this.f43814a);
    }

    public final boolean D() throws IOException {
        return isReuseAddress(this.f43815b) != 0;
    }

    public final boolean E() throws IOException {
        return isReusePort(this.f43815b) != 0;
    }

    public final boolean F() throws IOException {
        return isTcpNoDelay(this.f43815b) != 0;
    }

    public final InetSocketAddress G() {
        byte[] localAddress = localAddress(this.f43815b);
        if (localAddress == null) {
            return null;
        }
        return c.a(localAddress, 0, localAddress.length);
    }

    public final int J() throws IOException {
        int recvFd = recvFd(this.f43815b);
        if (recvFd > 0) {
            return recvFd;
        }
        if (recvFd == 0) {
            return -1;
        }
        if (recvFd == Errors.f43805f || recvFd == Errors.f43806g) {
            return 0;
        }
        throw Errors.e("recvFd", recvFd);
    }

    public final InetSocketAddress K() {
        byte[] remoteAddress = remoteAddress(this.f43815b);
        if (remoteAddress == null) {
            return null;
        }
        return c.a(remoteAddress, 0, remoteAddress.length);
    }

    public final int L(int i9) throws IOException {
        int sendFd = sendFd(this.f43815b, i9);
        if (sendFd >= 0) {
            return sendFd;
        }
        if (sendFd == Errors.f43805f || sendFd == Errors.f43806g) {
            return -1;
        }
        throw Errors.e("sendFd", sendFd);
    }

    public final int M(ByteBuffer byteBuffer, int i9, int i10, InetAddress inetAddress, int i11, boolean z10) throws IOException {
        byte[] e10;
        int i12;
        if (inetAddress instanceof Inet6Address) {
            e10 = inetAddress.getAddress();
            i12 = ((Inet6Address) inetAddress).getScopeId();
        } else {
            e10 = c.e(inetAddress.getAddress());
            i12 = 0;
        }
        int sendTo = sendTo(this.f43815b, Z(inetAddress), byteBuffer, i9, i10, e10, i12, i11, z10 ? msgFastopen() : 0);
        if (sendTo >= 0) {
            return sendTo;
        }
        if (sendTo == Errors.f43807h && z10) {
            return 0;
        }
        if (sendTo != Errors.f43808i) {
            return Errors.c("sendTo", sendTo);
        }
        throw new PortUnreachableException("sendTo failed");
    }

    public final int N(long j10, int i9, int i10, InetAddress inetAddress, int i11, boolean z10) throws IOException {
        byte[] e10;
        int i12;
        if (inetAddress instanceof Inet6Address) {
            e10 = inetAddress.getAddress();
            i12 = ((Inet6Address) inetAddress).getScopeId();
        } else {
            e10 = c.e(inetAddress.getAddress());
            i12 = 0;
        }
        int sendToAddress = sendToAddress(this.f43815b, Z(inetAddress), j10, i9, i10, e10, i12, i11, z10 ? msgFastopen() : 0);
        if (sendToAddress >= 0) {
            return sendToAddress;
        }
        if (sendToAddress == Errors.f43807h && z10) {
            return 0;
        }
        if (sendToAddress != Errors.f43808i) {
            return Errors.c("sendToAddress", sendToAddress);
        }
        throw new PortUnreachableException("sendToAddress failed");
    }

    public final int O(long j10, int i9, InetAddress inetAddress, int i10, boolean z10) throws IOException {
        byte[] e10;
        int i11;
        if (inetAddress instanceof Inet6Address) {
            e10 = inetAddress.getAddress();
            i11 = ((Inet6Address) inetAddress).getScopeId();
        } else {
            e10 = c.e(inetAddress.getAddress());
            i11 = 0;
        }
        int sendToAddresses = sendToAddresses(this.f43815b, Z(inetAddress), j10, i9, e10, i11, i10, z10 ? msgFastopen() : 0);
        if (sendToAddresses >= 0) {
            return sendToAddresses;
        }
        if (sendToAddresses == Errors.f43807h && z10) {
            return 0;
        }
        if (sendToAddresses != Errors.f43808i) {
            return Errors.c("sendToAddresses", sendToAddresses);
        }
        throw new PortUnreachableException("sendToAddresses failed");
    }

    public final void P(boolean z10) throws IOException {
        setKeepAlive(this.f43815b, z10 ? 1 : 0);
    }

    public final void Q(int i9) throws IOException {
        setReceiveBufferSize(this.f43815b, i9);
    }

    public final void R(boolean z10) throws IOException {
        setReuseAddress(this.f43815b, z10 ? 1 : 0);
    }

    public final void S(boolean z10) throws IOException {
        setReusePort(this.f43815b, z10 ? 1 : 0);
    }

    public final void T(int i9) throws IOException {
        setSendBufferSize(this.f43815b, i9);
    }

    public final void U(int i9) throws IOException {
        setSoLinger(this.f43815b, i9);
    }

    public final void V(boolean z10) throws IOException {
        setTcpNoDelay(this.f43815b, z10 ? 1 : 0);
    }

    public final void W(int i9) throws IOException {
        setTrafficClass(this.f43815b, this.f43820d, i9);
    }

    public final void X(boolean z10, boolean z11) throws IOException {
        int i9;
        int c10;
        do {
            i9 = this.f43814a;
            if (!FileDescriptor.e(i9)) {
                c10 = (!z10 || FileDescriptor.f(i9)) ? i9 : FileDescriptor.c(i9);
                if (z11 && !FileDescriptor.h(c10)) {
                    c10 = FileDescriptor.j(c10);
                }
                if (c10 == i9) {
                    return;
                }
            } else {
                throw new ClosedChannelException();
            }
        } while (!a(i9, c10));
        int shutdown = shutdown(this.f43815b, z10, z11);
        if (shutdown < 0) {
            Errors.c("shutdown", shutdown);
        }
    }

    public final int q(byte[] bArr) throws IOException {
        int accept = accept(this.f43815b, bArr);
        if (accept >= 0) {
            return accept;
        }
        if (accept == Errors.f43805f || accept == Errors.f43806g) {
            return -1;
        }
        throw Errors.e("accept", accept);
    }

    public final void r(SocketAddress socketAddress) throws IOException {
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            InetAddress address = inetSocketAddress.getAddress();
            c f10 = c.f(address);
            int bind = bind(this.f43815b, Z(address), f10.f43834a, f10.f43835b, inetSocketAddress.getPort());
            if (bind < 0) {
                throw Errors.e("bind", bind);
            }
        } else if (socketAddress instanceof DomainSocketAddress) {
            int bindDomainSocket = bindDomainSocket(this.f43815b, ((DomainSocketAddress) socketAddress).path().getBytes(io.grpc.netty.shaded.io.netty.util.h.f45016d));
            if (bindDomainSocket < 0) {
                throw Errors.e("bind", bindDomainSocket);
            }
        } else {
            throw new Error("Unexpected SocketAddress implementation " + socketAddress);
        }
    }

    public final boolean s(SocketAddress socketAddress) throws IOException {
        int connectDomainSocket;
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            InetAddress address = inetSocketAddress.getAddress();
            c f10 = c.f(address);
            connectDomainSocket = connect(this.f43815b, Z(address), f10.f43834a, f10.f43835b, inetSocketAddress.getPort());
        } else if (socketAddress instanceof DomainSocketAddress) {
            connectDomainSocket = connectDomainSocket(this.f43815b, ((DomainSocketAddress) socketAddress).path().getBytes(io.grpc.netty.shaded.io.netty.util.h.f45016d));
        } else {
            throw new Error("Unexpected SocketAddress implementation " + socketAddress);
        }
        if (connectDomainSocket < 0) {
            return Errors.b("connect", connectDomainSocket);
        }
        return true;
    }

    public final boolean t() throws IOException {
        int finishConnect = finishConnect(this.f43815b);
        if (finishConnect < 0) {
            return Errors.b("finishConnect", finishConnect);
        }
        return true;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.unix.FileDescriptor
    public String toString() {
        return "Socket{fd=" + this.f43815b + '}';
    }

    public final int u() throws IOException {
        return getReceiveBufferSize(this.f43815b);
    }

    public final int v() throws IOException {
        return getSendBufferSize(this.f43815b);
    }

    public final int w() throws IOException {
        return getSoLinger(this.f43815b);
    }

    public final int x() throws IOException {
        return getTrafficClass(this.f43815b, this.f43820d);
    }
}
