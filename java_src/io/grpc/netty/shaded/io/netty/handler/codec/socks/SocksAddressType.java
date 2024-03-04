package io.grpc.netty.shaded.io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksAddressType {
    IPv4((byte) 1),
    DOMAIN((byte) 3),
    IPv6((byte) 4),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f44471b;

    SocksAddressType(byte b10) {
        this.f44471b = b10;
    }

    @Deprecated
    public static SocksAddressType fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f44471b;
    }

    public static SocksAddressType valueOf(byte b10) {
        SocksAddressType[] values;
        for (SocksAddressType socksAddressType : values()) {
            if (socksAddressType.f44471b == b10) {
                return socksAddressType;
            }
        }
        return UNKNOWN;
    }
}
