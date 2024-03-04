package io.grpc.netty.shaded.io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksCmdType {
    CONNECT((byte) 1),
    BIND((byte) 2),
    UDP((byte) 3),
    UNKNOWN((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f44475b;

    SocksCmdType(byte b10) {
        this.f44475b = b10;
    }

    @Deprecated
    public static SocksCmdType fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f44475b;
    }

    public static SocksCmdType valueOf(byte b10) {
        SocksCmdType[] values;
        for (SocksCmdType socksCmdType : values()) {
            if (socksCmdType.f44475b == b10) {
                return socksCmdType;
            }
        }
        return UNKNOWN;
    }
}
