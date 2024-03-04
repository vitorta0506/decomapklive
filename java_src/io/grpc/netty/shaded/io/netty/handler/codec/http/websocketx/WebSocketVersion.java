package io.grpc.netty.shaded.io.netty.handler.codec.http.websocketx;

import com.guochao.faceshow.utils.ReportController;
import io.grpc.netty.shaded.io.netty.util.c;
/* loaded from: classes5.dex */
public enum WebSocketVersion {
    UNKNOWN(c.g("")),
    V00(c.g("0")),
    V07(c.g("7")),
    V08(c.g(ReportController.REPORT_TYPE_ONE_V_ONE)),
    V13(c.g(ReportController.REPORT_TYPE_DYNAMIC_COMMENT));
    
    private final c headerValue;

    WebSocketVersion(c cVar) {
        this.headerValue = cVar;
    }

    c toAsciiString() {
        if (this != UNKNOWN) {
            return this.headerValue;
        }
        throw new IllegalStateException("Unknown web socket version: " + this);
    }

    public String toHttpHeaderValue() {
        return toAsciiString().toString();
    }
}
