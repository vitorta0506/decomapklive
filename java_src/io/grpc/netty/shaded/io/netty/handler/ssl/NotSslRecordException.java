package io.grpc.netty.shaded.io.netty.handler.ssl;

import javax.net.ssl.SSLException;
/* loaded from: classes5.dex */
public class NotSslRecordException extends SSLException {
    private static final long serialVersionUID = -4316784434770656841L;

    public NotSslRecordException() {
        super("");
    }

    public NotSslRecordException(String str) {
        super(str);
    }

    public NotSslRecordException(Throwable th2) {
        super(th2);
    }

    public NotSslRecordException(String str, Throwable th2) {
        super(str, th2);
    }
}
