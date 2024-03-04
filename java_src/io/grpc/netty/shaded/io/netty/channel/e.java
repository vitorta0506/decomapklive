package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.v0;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public interface e extends io.grpc.netty.shaded.io.netty.util.f, v, Comparable<e> {

    /* loaded from: classes5.dex */
    public interface a {
        SocketAddress H();

        SocketAddress K();

        void L(y yVar);

        void M(y yVar);

        y N();

        void Q(SocketAddress socketAddress, SocketAddress socketAddress2, y yVar);

        v0.c R();

        s S();

        void T();

        void U(l0 l0Var, y yVar);

        void V();

        void c(Object obj, y yVar);

        void flush();
    }

    ChannelId G();

    SocketAddress H();

    w J();

    SocketAddress K();

    boolean O();

    kg.k P();

    q R();

    long S();

    l0 a0();

    f b0();

    e flush();

    boolean isActive();

    boolean isOpen();

    a k0();

    boolean q0();

    e read();
}
