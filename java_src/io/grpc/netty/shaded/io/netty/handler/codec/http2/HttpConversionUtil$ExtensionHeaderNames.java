package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public enum HttpConversionUtil$ExtensionHeaderNames {
    STREAM_ID("x-http2-stream-id"),
    SCHEME("x-http2-scheme"),
    PATH("x-http2-path"),
    STREAM_PROMISE_ID("x-http2-stream-promise-id"),
    STREAM_DEPENDENCY_ID("x-http2-stream-dependency-id"),
    STREAM_WEIGHT("x-http2-stream-weight");
    
    private final io.grpc.netty.shaded.io.netty.util.c text;

    HttpConversionUtil$ExtensionHeaderNames(String str) {
        this.text = io.grpc.netty.shaded.io.netty.util.c.g(str);
    }

    public io.grpc.netty.shaded.io.netty.util.c text() {
        return this.text;
    }
}
