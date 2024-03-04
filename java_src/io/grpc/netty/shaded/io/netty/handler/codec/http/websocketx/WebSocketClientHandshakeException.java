package io.grpc.netty.shaded.io.netty.handler.codec.http.websocketx;

import io.grpc.netty.shaded.io.netty.handler.codec.http.f0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.i;
/* loaded from: classes5.dex */
public final class WebSocketClientHandshakeException extends WebSocketHandshakeException {
    private static final long serialVersionUID = 1;
    private final f0 response;

    public WebSocketClientHandshakeException(String str) {
        this(str, null);
    }

    public f0 response() {
        return this.response;
    }

    public WebSocketClientHandshakeException(String str, f0 f0Var) {
        super(str);
        if (f0Var != null) {
            this.response = new i(f0Var.b(), f0Var.t(), f0Var.h());
        } else {
            this.response = null;
        }
    }
}
