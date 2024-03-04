package io.grpc.netty.shaded.io.netty.handler.codec.http.multipart;
/* loaded from: classes5.dex */
public enum HttpPostBodyUtil$TransferEncodingMechanism {
    BIT7("7bit"),
    BIT8("8bit"),
    BINARY("binary");
    
    private final String value;

    HttpPostBodyUtil$TransferEncodingMechanism(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public String value() {
        return this.value;
    }
}
