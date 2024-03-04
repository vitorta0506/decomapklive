package io.grpc.inprocess;

import com.google.common.base.o;
import java.io.IOException;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public final class AnonymousInProcessSocketAddress extends SocketAddress {
    private static final long serialVersionUID = -8567592561863414695L;
    private a server;

    synchronized void clearServer(a aVar) {
        o.z(true);
    }

    synchronized a getServer() {
        return null;
    }

    synchronized void setServer(a aVar) throws IOException {
    }
}
