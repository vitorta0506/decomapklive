package jg;

import java.net.SocketAddress;
/* loaded from: classes5.dex */
public final class d extends b<c, io.grpc.netty.shaded.io.netty.channel.e> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        super(cVar);
    }

    public SocketAddress g() {
        return ((c) this.f53247a).E();
    }

    public sg.b<?> h() {
        return ((c) this.f53247a).G();
    }

    @Override // jg.b
    public String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.setLength(sb2.length() - 1);
        sb2.append(", resolver: ");
        sb2.append(h());
        SocketAddress g10 = g();
        if (g10 != null) {
            sb2.append(", remoteAddress: ");
            sb2.append(g10);
        }
        sb2.append(')');
        return sb2.toString();
    }
}
