package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public class DeadlineExceededException extends ApiException {
    public DeadlineExceededException(Throwable th2, StatusCode statusCode, boolean z10) {
        super(th2, statusCode, z10);
    }

    public DeadlineExceededException(String str, Throwable th2, StatusCode statusCode, boolean z10) {
        super(str, th2, statusCode, z10);
    }
}
