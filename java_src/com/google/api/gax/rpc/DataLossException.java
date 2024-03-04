package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public class DataLossException extends ApiException {
    public DataLossException(Throwable th2, StatusCode statusCode, boolean z10) {
        super(th2, statusCode, z10);
    }

    public DataLossException(String str, Throwable th2, StatusCode statusCode, boolean z10) {
        super(str, th2, statusCode, z10);
    }
}
