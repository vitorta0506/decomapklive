package io.grpc;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public final class HttpConnectProxiedSocketAddress extends ProxiedSocketAddress {
    private static final long serialVersionUID = 0;
    private final String password;
    private final SocketAddress proxyAddress;
    private final InetSocketAddress targetAddress;
    private final String username;

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private SocketAddress f41663a;

        /* renamed from: b  reason: collision with root package name */
        private InetSocketAddress f41664b;

        /* renamed from: c  reason: collision with root package name */
        private String f41665c;

        /* renamed from: d  reason: collision with root package name */
        private String f41666d;

        public HttpConnectProxiedSocketAddress a() {
            return new HttpConnectProxiedSocketAddress(this.f41663a, this.f41664b, this.f41665c, this.f41666d);
        }

        public b b(String str) {
            this.f41666d = str;
            return this;
        }

        public b c(SocketAddress socketAddress) {
            this.f41663a = (SocketAddress) com.google.common.base.o.t(socketAddress, "proxyAddress");
            return this;
        }

        public b d(InetSocketAddress inetSocketAddress) {
            this.f41664b = (InetSocketAddress) com.google.common.base.o.t(inetSocketAddress, "targetAddress");
            return this;
        }

        public b e(String str) {
            this.f41665c = str;
            return this;
        }

        private b() {
        }
    }

    public static b newBuilder() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof HttpConnectProxiedSocketAddress) {
            HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress = (HttpConnectProxiedSocketAddress) obj;
            return com.google.common.base.l.a(this.proxyAddress, httpConnectProxiedSocketAddress.proxyAddress) && com.google.common.base.l.a(this.targetAddress, httpConnectProxiedSocketAddress.targetAddress) && com.google.common.base.l.a(this.username, httpConnectProxiedSocketAddress.username) && com.google.common.base.l.a(this.password, httpConnectProxiedSocketAddress.password);
        }
        return false;
    }

    public String getPassword() {
        return this.password;
    }

    public SocketAddress getProxyAddress() {
        return this.proxyAddress;
    }

    public InetSocketAddress getTargetAddress() {
        return this.targetAddress;
    }

    public String getUsername() {
        return this.username;
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.proxyAddress, this.targetAddress, this.username, this.password);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("proxyAddr", this.proxyAddress).d("targetAddr", this.targetAddress).d("username", this.username).e("hasPassword", this.password != null).toString();
    }

    private HttpConnectProxiedSocketAddress(SocketAddress socketAddress, InetSocketAddress inetSocketAddress, String str, String str2) {
        com.google.common.base.o.t(socketAddress, "proxyAddress");
        com.google.common.base.o.t(inetSocketAddress, "targetAddress");
        if (socketAddress instanceof InetSocketAddress) {
            com.google.common.base.o.D(!((InetSocketAddress) socketAddress).isUnresolved(), "The proxy address %s is not resolved", socketAddress);
        }
        this.proxyAddress = socketAddress;
        this.targetAddress = inetSocketAddress;
        this.username = str;
        this.password = str2;
    }
}
