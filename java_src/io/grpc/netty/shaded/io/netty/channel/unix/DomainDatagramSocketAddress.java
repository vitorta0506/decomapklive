package io.grpc.netty.shaded.io.netty.channel.unix;
/* loaded from: classes5.dex */
public final class DomainDatagramSocketAddress extends DomainSocketAddress {
    private static final long serialVersionUID = -5925732678737768223L;
    private final DomainDatagramSocketAddress localAddress;
    private final int receivedAmount;

    public DomainDatagramSocketAddress(byte[] bArr, int i9, DomainDatagramSocketAddress domainDatagramSocketAddress) {
        super(new String(bArr, io.grpc.netty.shaded.io.netty.util.h.f45016d));
        this.localAddress = domainDatagramSocketAddress;
        this.receivedAmount = i9;
    }

    public DomainDatagramSocketAddress localAddress() {
        return this.localAddress;
    }

    public int receivedAmount() {
        return this.receivedAmount;
    }
}
