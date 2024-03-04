package com.squareup.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class Route {
    final Address address;
    final InetSocketAddress inetSocketAddress;
    final Proxy proxy;

    public Route(Address address, Proxy proxy, InetSocketAddress inetSocketAddress) {
        Objects.requireNonNull(address, "address == null");
        Objects.requireNonNull(proxy, "proxy == null");
        Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.address = address;
        this.proxy = proxy;
        this.inetSocketAddress = inetSocketAddress;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Route) {
            Route route = (Route) obj;
            return this.address.equals(route.address) && this.proxy.equals(route.proxy) && this.inetSocketAddress.equals(route.inetSocketAddress);
        }
        return false;
    }

    public Address getAddress() {
        return this.address;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public InetSocketAddress getSocketAddress() {
        return this.inetSocketAddress;
    }

    public int hashCode() {
        return ((((527 + this.address.hashCode()) * 31) + this.proxy.hashCode()) * 31) + this.inetSocketAddress.hashCode();
    }

    public boolean requiresTunnel() {
        return this.address.sslSocketFactory != null && this.proxy.type() == Proxy.Type.HTTP;
    }
}
