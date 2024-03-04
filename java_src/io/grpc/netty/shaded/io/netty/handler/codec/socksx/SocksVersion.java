package io.grpc.netty.shaded.io.netty.handler.codec.socksx;
/* loaded from: classes5.dex */
public enum SocksVersion {
    SOCKS4a((byte) 4),
    SOCKS5((byte) 5),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f44478b;

    SocksVersion(byte b10) {
        this.f44478b = b10;
    }

    public byte byteValue() {
        return this.f44478b;
    }

    public static SocksVersion valueOf(byte b10) {
        SocksVersion socksVersion = SOCKS4a;
        if (b10 == socksVersion.byteValue()) {
            return socksVersion;
        }
        SocksVersion socksVersion2 = SOCKS5;
        return b10 == socksVersion2.byteValue() ? socksVersion2 : UNKNOWN;
    }
}
