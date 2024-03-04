package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public class ApiException extends RuntimeException {
    private static final long serialVersionUID = -4375114339928877996L;
    private final boolean retryable;
    private final StatusCode statusCode;

    public ApiException(Throwable th2, StatusCode statusCode, boolean z10) {
        super(th2);
        this.statusCode = (StatusCode) com.google.common.base.o.s(statusCode);
        this.retryable = z10;
    }

    public StatusCode getStatusCode() {
        return this.statusCode;
    }

    public boolean isRetryable() {
        return this.retryable;
    }

    public ApiException(String str, Throwable th2, StatusCode statusCode, boolean z10) {
        super(str, th2);
        this.statusCode = (StatusCode) com.google.common.base.o.s(statusCode);
        this.retryable = z10;
    }
}
