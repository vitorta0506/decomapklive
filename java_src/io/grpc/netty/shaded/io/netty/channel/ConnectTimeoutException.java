package io.grpc.netty.shaded.io.netty.channel;

import java.net.ConnectException;
/* loaded from: classes5.dex */
public class ConnectTimeoutException extends ConnectException {
    private static final long serialVersionUID = 2317065249988317463L;

    public ConnectTimeoutException(String str) {
        super(str);
    }

    public ConnectTimeoutException() {
    }
}