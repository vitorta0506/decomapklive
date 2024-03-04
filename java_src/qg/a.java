package qg;

import io.grpc.netty.shaded.io.netty.util.internal.b0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f57313a;

    /* renamed from: b  reason: collision with root package name */
    private final String f57314b;

    /* renamed from: c  reason: collision with root package name */
    private final SocketAddress f57315c;

    /* renamed from: d  reason: collision with root package name */
    private final SocketAddress f57316d;

    /* renamed from: e  reason: collision with root package name */
    private String f57317e;

    public a(String str, String str2, SocketAddress socketAddress, SocketAddress socketAddress2) {
        this.f57313a = (String) s.h(str, "protocol");
        this.f57314b = (String) s.h(str2, "authScheme");
        this.f57315c = (SocketAddress) s.h(socketAddress, "proxyAddress");
        this.f57316d = (SocketAddress) s.h(socketAddress2, "destinationAddress");
    }

    public String toString() {
        String str = this.f57317e;
        if (str != null) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append(b0.m(this));
        sb2.append('(');
        sb2.append(this.f57313a);
        sb2.append(", ");
        sb2.append(this.f57314b);
        sb2.append(", ");
        sb2.append(this.f57315c);
        sb2.append(" => ");
        sb2.append(this.f57316d);
        sb2.append(')');
        String sb3 = sb2.toString();
        this.f57317e = sb3;
        return sb3;
    }
}
