package io.grpc.netty.shaded.io.netty.channel.unix;

import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import kg.j;
/* loaded from: classes5.dex */
public final class h {
    public static InetSocketAddress a(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2) {
        if (inetSocketAddress2 != null) {
            if (t.l0() >= 7) {
                try {
                    return new InetSocketAddress(InetAddress.getByAddress(inetSocketAddress.getHostString(), inetSocketAddress2.getAddress().getAddress()), inetSocketAddress2.getPort());
                } catch (UnknownHostException unused) {
                }
            }
            return inetSocketAddress2;
        }
        return inetSocketAddress;
    }

    public static boolean b(j jVar) {
        return c(jVar, b.f43829a);
    }

    static boolean c(j jVar, int i9) {
        return !jVar.b1() && (!jVar.h1() || jVar.s1() > i9);
    }
}
