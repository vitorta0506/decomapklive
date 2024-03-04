package io.grpc.netty.shaded.io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksProtocolVersion {
    SOCKS4a((byte) 4),
    SOCKS5((byte) 5),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f44476b;

    SocksProtocolVersion(byte b10) {
        this.f44476b = b10;
    }

    @Deprecated
    public static SocksProtocolVersion fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f44476b;
    }

    public static SocksProtocolVersion valueOf(byte b10) {
        SocksProtocolVersion[] values;
        for (SocksProtocolVersion socksProtocolVersion : values()) {
            if (socksProtocolVersion.f44476b == b10) {
                return socksProtocolVersion;
            }
        }
        return UNKNOWN;
    }
}
