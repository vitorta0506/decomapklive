package io.grpc.netty.shaded.io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksAuthScheme {
    NO_AUTH((byte) 0),
    AUTH_GSSAPI((byte) 1),
    AUTH_PASSWORD((byte) 2),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f44472b;

    SocksAuthScheme(byte b10) {
        this.f44472b = b10;
    }

    @Deprecated
    public static SocksAuthScheme fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f44472b;
    }

    public static SocksAuthScheme valueOf(byte b10) {
        SocksAuthScheme[] values;
        for (SocksAuthScheme socksAuthScheme : values()) {
            if (socksAuthScheme.f44472b == b10) {
                return socksAuthScheme;
            }
        }
        return UNKNOWN;
    }
}
