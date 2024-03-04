package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public interface StatusCode {

    /* loaded from: classes2.dex */
    public enum Code {
        OK(200),
        CANCELLED(499),
        UNKNOWN(500),
        INVALID_ARGUMENT(400),
        DEADLINE_EXCEEDED(504),
        NOT_FOUND(404),
        ALREADY_EXISTS(409),
        PERMISSION_DENIED(403),
        RESOURCE_EXHAUSTED(429),
        FAILED_PRECONDITION(400),
        ABORTED(409),
        OUT_OF_RANGE(400),
        UNIMPLEMENTED(501),
        INTERNAL(500),
        UNAVAILABLE(503),
        DATA_LOSS(500),
        UNAUTHENTICATED(401);
        
        private int httpStatusCode;

        Code(int i9) {
            this.httpStatusCode = i9;
        }

        public int getHttpStatusCode() {
            return this.httpStatusCode;
        }
    }

    Code getCode();
}
