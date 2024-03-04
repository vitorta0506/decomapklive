package io.grpc.netty.shaded.io.netty.channel.unix;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
/* loaded from: classes5.dex */
public final class DatagramSocketAddress extends InetSocketAddress {
    private static final long serialVersionUID = 3094819287843178401L;
    private final DatagramSocketAddress localAddress;
    private final int receivedAmount;

    DatagramSocketAddress(byte[] bArr, int i9, int i10, int i11, DatagramSocketAddress datagramSocketAddress) throws UnknownHostException {
        super(newAddress(bArr, i9), i10);
        this.receivedAmount = i11;
        this.localAddress = datagramSocketAddress;
    }

    private static InetAddress newAddress(byte[] bArr, int i9) throws UnknownHostException {
        if (bArr.length == 4) {
            return InetAddress.getByAddress(bArr);
        }
        return Inet6Address.getByAddress((String) null, bArr, i9);
    }

    public DatagramSocketAddress localAddress() {
        return this.localAddress;
    }

    public int receivedAmount() {
        return this.receivedAmount;
    }
}
