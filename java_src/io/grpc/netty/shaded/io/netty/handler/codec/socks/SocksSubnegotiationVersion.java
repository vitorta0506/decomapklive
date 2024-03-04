package io.grpc.netty.shaded.io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksSubnegotiationVersion {
    AUTH_PASSWORD((byte) 1),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f44477b;

    SocksSubnegotiationVersion(byte b10) {
        this.f44477b = b10;
    }

    @Deprecated
    public static SocksSubnegotiationVersion fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f44477b;
    }

    public static SocksSubnegotiationVersion valueOf(byte b10) {
        SocksSubnegotiationVersion[] values;
        for (SocksSubnegotiationVersion socksSubnegotiationVersion : values()) {
            if (socksSubnegotiationVersion.f44477b == b10) {
                return socksSubnegotiationVersion;
            }
        }
        return UNKNOWN;
    }
}
