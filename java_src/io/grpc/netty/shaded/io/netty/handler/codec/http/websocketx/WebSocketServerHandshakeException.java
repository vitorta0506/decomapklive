package io.grpc.netty.shaded.io.netty.handler.codec.http.websocketx;

import io.grpc.netty.shaded.io.netty.handler.codec.http.d0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.h;
/* loaded from: classes5.dex */
public final class WebSocketServerHandshakeException extends WebSocketHandshakeException {
    private static final long serialVersionUID = 1;
    private final d0 request;

    public WebSocketServerHandshakeException(String str) {
        this(str, null);
    }

    public d0 request() {
        return this.request;
    }

    public WebSocketServerHandshakeException(String str, d0 d0Var) {
        super(str);
        if (d0Var != null) {
            this.request = new h(d0Var.b(), d0Var.method(), d0Var.i(), d0Var.h());
        } else {
            this.request = null;
        }
    }
}
