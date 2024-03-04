package io.grpc.netty.shaded.io.netty.util;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes5.dex */
final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45230a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(o.class);

    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final NetworkInterface f45231a;

        /* renamed from: b  reason: collision with root package name */
        private final InetAddress f45232b;

        a(NetworkInterface networkInterface, InetAddress inetAddress) {
            this.f45231a = networkInterface;
            this.f45232b = inetAddress;
        }

        public InetAddress a() {
            return this.f45232b;
        }

        public NetworkInterface b() {
            return this.f45231a;
        }
    }

    private o() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Inet4Address a() {
        try {
            return (Inet4Address) InetAddress.getByAddress("localhost", new byte[]{ByteCompanionObject.MAX_VALUE, 0, 0, 1});
        } catch (Exception e10) {
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Inet6Address b() {
        try {
            return (Inet6Address) InetAddress.getByAddress("localhost", new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1});
        } catch (Exception e10) {
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
        r6 = r4.nextElement();
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d9, code lost:
        if (r6 != null) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static io.grpc.netty.shaded.io.netty.util.o.a c(java.net.Inet4Address r8, java.net.Inet6Address r9) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.o.c(java.net.Inet4Address, java.net.Inet6Address):io.grpc.netty.shaded.io.netty.util.o$a");
    }
}
