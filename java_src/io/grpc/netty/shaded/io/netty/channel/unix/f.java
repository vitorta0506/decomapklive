package io.grpc.netty.shaded.io.netty.channel.unix;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.PortUnreachableException;
import java.nio.channels.ClosedChannelException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f43838a = new AtomicBoolean();

    static {
        io.grpc.netty.shaded.io.netty.util.internal.b.b(f.class, OutOfMemoryError.class, RuntimeException.class, ClosedChannelException.class, IOException.class, PortUnreachableException.class, DatagramSocketAddress.class, DomainDatagramSocketAddress.class, InetSocketAddress.class);
    }

    private f() {
    }

    public static synchronized void a(Runnable runnable) {
        synchronized (f.class) {
            runnable.run();
            Socket.y();
        }
    }
}
