package io.grpc.netty.shaded.io.netty.handler.codec.socks;
/* loaded from: classes5.dex */
public enum SocksCmdStatus {
    SUCCESS((byte) 0),
    FAILURE((byte) 1),
    FORBIDDEN((byte) 2),
    NETWORK_UNREACHABLE((byte) 3),
    HOST_UNREACHABLE((byte) 4),
    REFUSED((byte) 5),
    TTL_EXPIRED((byte) 6),
    COMMAND_NOT_SUPPORTED((byte) 7),
    ADDRESS_NOT_SUPPORTED((byte) 8),
    UNASSIGNED((byte) -1);
    

    /* renamed from: b  reason: collision with root package name */
    private final byte f44474b;

    SocksCmdStatus(byte b10) {
        this.f44474b = b10;
    }

    @Deprecated
    public static SocksCmdStatus fromByte(byte b10) {
        return valueOf(b10);
    }

    public byte byteValue() {
        return this.f44474b;
    }

    public static SocksCmdStatus valueOf(byte b10) {
        SocksCmdStatus[] values;
        for (SocksCmdStatus socksCmdStatus : values()) {
            if (socksCmdStatus.f44474b == b10) {
                return socksCmdStatus;
            }
        }
        return UNASSIGNED;
    }
}
