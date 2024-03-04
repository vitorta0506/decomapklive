package io.grpc.netty.shaded.io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksAuthStatus {
    SUCCESS((byte) 0),
    FAILURE((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f44473b;

    SocksAuthStatus(byte b10) {
        this.f44473b = b10;
    }

    @Deprecated
    public static SocksAuthStatus fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f44473b;
    }

    public static SocksAuthStatus valueOf(byte b10) {
        SocksAuthStatus[] values;
        for (SocksAuthStatus socksAuthStatus : values()) {
            if (socksAuthStatus.f44473b == b10) {
                return socksAuthStatus;
            }
        }
        return FAILURE;
    }
}
