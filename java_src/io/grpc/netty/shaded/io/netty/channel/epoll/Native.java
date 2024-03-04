package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.unix.Errors;
import io.grpc.netty.shaded.io.netty.channel.unix.FileDescriptor;
import io.grpc.netty.shaded.io.netty.util.internal.e0;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.io.IOException;
/* loaded from: classes5.dex */
public final class Native {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43619a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(Native.class);

    /* renamed from: b  reason: collision with root package name */
    public static final int f43620b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f43621c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f43622d;

    /* renamed from: e  reason: collision with root package name */
    public static final int f43623e;

    /* renamed from: f  reason: collision with root package name */
    public static final int f43624f;

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f43625g;

    /* renamed from: h  reason: collision with root package name */
    static final boolean f43626h;

    /* renamed from: i  reason: collision with root package name */
    static final boolean f43627i;

    /* renamed from: j  reason: collision with root package name */
    private static final int f43628j;

    /* renamed from: k  reason: collision with root package name */
    static final boolean f43629k;

    /* renamed from: l  reason: collision with root package name */
    static final boolean f43630l;
    @Deprecated

    /* renamed from: m  reason: collision with root package name */
    public static final boolean f43631m;

    /* renamed from: n  reason: collision with root package name */
    public static final int f43632n;

    /* renamed from: o  reason: collision with root package name */
    public static final String f43633o;

    /* loaded from: classes5.dex */
    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Native.a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
        if (r1 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0030, code lost:
        if (r1 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        r1.close();
     */
    static {
        /*
            java.lang.Class<io.grpc.netty.shaded.io.netty.channel.epoll.Native> r0 = io.grpc.netty.shaded.io.netty.channel.epoll.Native.class
            io.grpc.netty.shaded.io.netty.util.internal.logging.b r1 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(r0)
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43619a = r1
            java.nio.channels.Selector r1 = java.nio.channels.Selector.open()     // Catch: java.io.IOException -> Ld
            goto Le
        Ld:
            r1 = 0
        Le:
            r2 = 5
            java.lang.Class[] r2 = new java.lang.Class[r2]
            java.lang.Class<io.grpc.netty.shaded.io.netty.channel.unix.PeerCredentials> r3 = io.grpc.netty.shaded.io.netty.channel.unix.PeerCredentials.class
            r4 = 0
            r2[r4] = r3
            java.lang.Class<io.grpc.netty.shaded.io.netty.channel.DefaultFileRegion> r3 = io.grpc.netty.shaded.io.netty.channel.DefaultFileRegion.class
            r5 = 1
            r2[r5] = r3
            java.lang.Class<java.nio.channels.FileChannel> r3 = java.nio.channels.FileChannel.class
            r6 = 2
            r2[r6] = r3
            r3 = 3
            java.lang.Class<java.io.FileDescriptor> r7 = java.io.FileDescriptor.class
            r2[r3] = r7
            r3 = 4
            java.lang.Class<io.grpc.netty.shaded.io.netty.channel.epoll.NativeDatagramPacketArray$NativeDatagramPacket> r7 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeDatagramPacketArray$NativeDatagramPacket.class
            r2[r3] = r7
            io.grpc.netty.shaded.io.netty.util.internal.b.b(r0, r2)
            offsetofEpollData()     // Catch: java.lang.Throwable -> L38 java.lang.UnsatisfiedLinkError -> L3a
            if (r1 == 0) goto L40
        L32:
            r1.close()     // Catch: java.io.IOException -> L36
            goto L40
        L36:
            goto L40
        L38:
            r0 = move-exception
            goto La3
        L3a:
            i()     // Catch: java.lang.Throwable -> L38
            if (r1 == 0) goto L40
            goto L32
        L40:
            io.grpc.netty.shaded.io.netty.channel.epoll.Native$a r0 = new io.grpc.netty.shaded.io.netty.channel.epoll.Native$a
            r0.<init>()
            io.grpc.netty.shaded.io.netty.channel.unix.f.a(r0)
            int r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.epollin()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43620b = r0
            int r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.epollout()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43621c = r0
            int r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.epollrdhup()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43622d = r0
            int r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.epollet()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43623e = r0
            int r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.epollerr()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43624f = r0
            boolean r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.isSupportingSendmmsg()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43625g = r0
            boolean r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.isSupportingRecvmmsg()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43626h = r0
            boolean r0 = isSupportingUdpSegment()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43627i = r0
            int r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.tcpFastopenMode()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43628j = r0
            r1 = r0 & 1
            if (r1 != r5) goto L84
            r1 = 1
            goto L85
        L84:
            r1 = 0
        L85:
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43629k = r1
            r0 = r0 & r6
            if (r0 != r6) goto L8c
            r0 = 1
            goto L8d
        L8c:
            r0 = 0
        L8d:
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43630l = r0
            if (r1 != 0) goto L93
            if (r0 == 0) goto L94
        L93:
            r4 = 1
        L94:
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43631m = r4
            int r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.tcpMd5SigMaxKeyLen()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43632n = r0
            java.lang.String r0 = io.grpc.netty.shaded.io.netty.channel.epoll.NativeStaticallyReferencedJniMethods.kernelVersion()
            io.grpc.netty.shaded.io.netty.channel.epoll.Native.f43633o = r0
            return
        La3:
            if (r1 == 0) goto La8
            r1.close()     // Catch: java.io.IOException -> La8
        La8:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.epoll.Native.<clinit>():void");
    }

    private Native() {
    }

    static /* synthetic */ int a() {
        return registerUnix();
    }

    public static int b(FileDescriptor fileDescriptor, g gVar) throws IOException {
        int epollBusyWait0 = epollBusyWait0(fileDescriptor.d(), gVar.h(), gVar.g());
        if (epollBusyWait0 >= 0) {
            return epollBusyWait0;
        }
        throw Errors.e("epoll_wait", epollBusyWait0);
    }

    public static void c(int i9, int i10, int i11) throws IOException {
        int epollCtlAdd0 = epollCtlAdd0(i9, i10, i11);
        if (epollCtlAdd0 < 0) {
            throw Errors.e("epoll_ctl", epollCtlAdd0);
        }
    }

    public static void d(int i9, int i10) throws IOException {
        int epollCtlDel0 = epollCtlDel0(i9, i10);
        if (epollCtlDel0 < 0) {
            throw Errors.e("epoll_ctl", epollCtlDel0);
        }
    }

    public static void e(int i9, int i10, int i11) throws IOException {
        int epollCtlMod0 = epollCtlMod0(i9, i10, i11);
        if (epollCtlMod0 < 0) {
            throw Errors.e("epoll_ctl", epollCtlMod0);
        }
    }

    private static native int epollBusyWait0(int i9, long j10, int i10);

    private static native int epollCreate();

    private static native int epollCtlAdd0(int i9, int i10, int i11);

    private static native int epollCtlDel0(int i9, int i10);

    private static native int epollCtlMod0(int i9, int i10, int i11);

    private static native int epollWait(int i9, long j10, int i10, int i11);

    private static native int epollWait0(int i9, long j10, int i10, int i11, int i12, int i13);

    private static native int eventFd();

    public static native void eventFdWrite(int i9, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(FileDescriptor fileDescriptor, g gVar, int i9) throws IOException {
        int epollWait = epollWait(fileDescriptor.d(), gVar.h(), gVar.g(), i9);
        if (epollWait >= 0) {
            return epollWait;
        }
        throw Errors.e("epoll_wait", epollWait);
    }

    @Deprecated
    public static int g(FileDescriptor fileDescriptor, g gVar, FileDescriptor fileDescriptor2, int i9, int i10) throws IOException {
        int i11;
        int i12;
        if (i9 == 0 && i10 == 0) {
            return f(fileDescriptor, gVar, 0);
        }
        if (i9 == Integer.MAX_VALUE) {
            i11 = 0;
            i12 = 0;
        } else {
            i11 = i9;
            i12 = i10;
        }
        int epollWait0 = epollWait0(fileDescriptor.d(), gVar.h(), gVar.g(), fileDescriptor2.d(), i11, i12);
        if (epollWait0 >= 0) {
            return epollWait0;
        }
        throw Errors.e("epoll_wait", epollWait0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(FileDescriptor fileDescriptor, g gVar, boolean z10) throws IOException {
        return f(fileDescriptor, gVar, z10 ? 0 : -1);
    }

    private static void i() {
        if ("linux".equals(t.B0())) {
            String str = "netty_transport_native_epoll_" + t.z0();
            ClassLoader D = t.D(Native.class);
            try {
                io.grpc.netty.shaded.io.netty.util.internal.p.f(str, D);
                return;
            } catch (UnsatisfiedLinkError e10) {
                try {
                    io.grpc.netty.shaded.io.netty.util.internal.p.f("netty_transport_native_epoll", D);
                    f43619a.debug("Failed to load {}", str, e10);
                    return;
                } catch (UnsatisfiedLinkError e11) {
                    e0.a(e10, e11);
                    throw e10;
                }
            }
        }
        throw new IllegalStateException("Only supported on Linux");
    }

    private static native boolean isSupportingUdpSegment();

    public static FileDescriptor j() {
        return new FileDescriptor(epollCreate());
    }

    public static FileDescriptor k() {
        return new FileDescriptor(eventFd());
    }

    public static FileDescriptor l() {
        return new FileDescriptor(timerFd());
    }

    public static int m(int i9, long j10, int i10, long j11, long j12) throws IOException {
        int splice0 = splice0(i9, j10, i10, j11, j12);
        return splice0 >= 0 ? splice0 : Errors.c("splice", splice0);
    }

    public static native int offsetofEpollData();

    private static native int registerUnix();

    public static native int sizeofEpollEvent();

    private static native int splice0(int i9, long j10, int i10, long j11, long j12);

    private static native int timerFd();
}
