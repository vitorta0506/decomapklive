package io.grpc.netty.shaded.io.netty.handler.codec.spdy;
/* loaded from: classes5.dex */
public enum SpdyVersion {
    SPDY_3_1(3, 1);
    
    private final int minorVersion;
    private final int version;

    SpdyVersion(int i9, int i10) {
        this.version = i9;
        this.minorVersion = i10;
    }

    int getMinorVersion() {
        return this.minorVersion;
    }

    int getVersion() {
        return this.version;
    }
}
