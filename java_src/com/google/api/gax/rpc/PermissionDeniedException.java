package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public class PermissionDeniedException extends ApiException {
    public PermissionDeniedException(Throwable th2, StatusCode statusCode, boolean z10) {
        super(th2, statusCode, z10);
    }

    public PermissionDeniedException(String str, Throwable th2, StatusCode statusCode, boolean z10) {
        super(str, th2, statusCode, z10);
    }
}
