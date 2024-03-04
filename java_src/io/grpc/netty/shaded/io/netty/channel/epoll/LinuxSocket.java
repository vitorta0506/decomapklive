package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.DefaultFileRegion;
import io.grpc.netty.shaded.io.netty.channel.unix.Errors;
import io.grpc.netty.shaded.io.netty.channel.unix.Socket;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes5.dex */
public final class LinuxSocket extends Socket {

    /* renamed from: f  reason: collision with root package name */
    static final InetAddress f43617f = B0("::");

    /* renamed from: g  reason: collision with root package name */
    private static final InetAddress f43618g = B0("0.0.0.0");

    /* JADX INFO: Access modifiers changed from: package-private */
    public LinuxSocket(int i9) {
        super(i9);
    }

    private static InetAddress B0(String str) {
        try {
            return InetAddress.getByName(str);
        } catch (UnknownHostException e10) {
            throw new ChannelException(e10);
        }
    }

    private static native int getSoBusyPoll(int i9) throws IOException;

    private static native int getTcpDeferAccept(int i9) throws IOException;

    private static native int getTcpKeepCnt(int i9) throws IOException;

    private static native int getTcpKeepIdle(int i9) throws IOException;

    private static native int getTcpKeepIntvl(int i9) throws IOException;

    private static native int getTcpNotSentLowAt(int i9) throws IOException;

    private static native int getTcpUserTimeout(int i9) throws IOException;

    private static native int isIpFreeBind(int i9) throws IOException;

    private static native int isIpTransparent(int i9) throws IOException;

    private static native int isTcpCork(int i9) throws IOException;

    private static native int isTcpQuickAck(int i9) throws IOException;

    public static LinuxSocket l0() {
        return new LinuxSocket(Socket.H());
    }

    public static LinuxSocket m0() {
        return n0(Socket.z());
    }

    public static LinuxSocket n0(boolean z10) {
        return new LinuxSocket(Socket.I(z10));
    }

    private static native long sendFile(int i9, DefaultFileRegion defaultFileRegion, long j10, long j11, long j12) throws IOException;

    private static native void setIpFreeBind(int i9, int i10) throws IOException;

    private static native void setIpTransparent(int i9, int i10) throws IOException;

    private static native void setSoBusyPoll(int i9, int i10) throws IOException;

    private static native void setTcpCork(int i9, int i10) throws IOException;

    private static native void setTcpDeferAccept(int i9, int i10) throws IOException;

    private static native void setTcpKeepCnt(int i9, int i10) throws IOException;

    private static native void setTcpKeepIdle(int i9, int i10) throws IOException;

    private static native void setTcpKeepIntvl(int i9, int i10) throws IOException;

    private static native void setTcpMd5Sig(int i9, boolean z10, byte[] bArr, int i10, byte[] bArr2) throws IOException;

    private static native void setTcpNotSentLowAt(int i9, int i10) throws IOException;

    private static native void setTcpQuickAck(int i9, int i10) throws IOException;

    private static native void setTcpUserTimeout(int i9, int i10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A0(int i9) throws IOException {
        setTcpUserTimeout(d(), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a0() throws IOException {
        return getSoBusyPoll(d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b0() throws IOException {
        return getTcpDeferAccept(d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c0() throws IOException {
        return getTcpKeepCnt(d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d0() throws IOException {
        return getTcpKeepIdle(d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e0() throws IOException {
        return getTcpKeepIntvl(d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long f0() throws IOException {
        return getTcpNotSentLowAt(d()) & 4294967295L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g0() throws IOException {
        return getTcpUserTimeout(d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h0() throws IOException {
        return isIpFreeBind(d()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i0() throws IOException {
        return isIpTransparent(d()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j0() throws IOException {
        return isTcpCork(d()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean k0() throws IOException {
        return isTcpQuickAck(d()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long o0(DefaultFileRegion defaultFileRegion, long j10, long j11, long j12) throws IOException {
        defaultFileRegion.b();
        long sendFile = sendFile(d(), defaultFileRegion, j10, j11, j12);
        return sendFile >= 0 ? sendFile : Errors.c("sendfile", (int) sendFile);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p0(boolean z10) throws IOException {
        setIpFreeBind(d(), z10 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q0(boolean z10) throws IOException {
        setIpTransparent(d(), z10 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r0(int i9) throws IOException {
        setSoBusyPoll(d(), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s0(boolean z10) throws IOException {
        setTcpCork(d(), z10 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t0(int i9) throws IOException {
        setTcpDeferAccept(d(), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u0(int i9) throws IOException {
        setTcpKeepCnt(d(), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v0(int i9) throws IOException {
        setTcpKeepIdle(d(), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w0(int i9) throws IOException {
        setTcpKeepIntvl(d(), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x0(InetAddress inetAddress, byte[] bArr) throws IOException {
        io.grpc.netty.shaded.io.netty.channel.unix.c f10 = io.grpc.netty.shaded.io.netty.channel.unix.c.f(inetAddress);
        setTcpMd5Sig(d(), this.f43820d, f10.b(), f10.g(), bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y0(long j10) throws IOException {
        if (j10 >= 0 && j10 <= 4294967295L) {
            setTcpNotSentLowAt(d(), (int) j10);
            return;
        }
        throw new IllegalArgumentException("tcpNotSentLowAt must be a uint32_t");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z0(boolean z10) throws IOException {
        setTcpQuickAck(d(), z10 ? 1 : 0);
    }
}
