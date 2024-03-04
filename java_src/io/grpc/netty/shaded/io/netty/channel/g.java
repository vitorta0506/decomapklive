package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.n;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public class g extends p implements t {
    @n.c
    public void V(m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) throws Exception {
        mVar.Q(socketAddress, socketAddress2, yVar);
    }

    @n.c
    public void e(m mVar, Object obj, y yVar) throws Exception {
        mVar.c(obj, yVar);
    }

    @n.c
    public void j(m mVar, y yVar) throws Exception {
        mVar.M(yVar);
    }

    @n.c
    public void l(m mVar, y yVar) throws Exception {
        mVar.L(yVar);
    }

    @n.c
    public void n(m mVar) throws Exception {
        mVar.flush();
    }

    @n.c
    public void o(m mVar) throws Exception {
        mVar.read();
    }
}
