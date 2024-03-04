package io.grpc;
/* loaded from: classes5.dex */
public class StatusRuntimeException extends RuntimeException {
    private static final long serialVersionUID = 1950934672280720624L;
    private final boolean fillInStackTrace;
    private final Status status;
    private final s0 trailers;

    public StatusRuntimeException(Status status) {
        this(status, null);
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this.fillInStackTrace ? super.fillInStackTrace() : this;
    }

    public final Status getStatus() {
        return this.status;
    }

    public final s0 getTrailers() {
        return this.trailers;
    }

    public StatusRuntimeException(Status status, s0 s0Var) {
        this(status, s0Var, true);
    }

    StatusRuntimeException(Status status, s0 s0Var, boolean z10) {
        super(Status.h(status), status.m());
        this.status = status;
        this.trailers = s0Var;
        this.fillInStackTrace = z10;
        fillInStackTrace();
    }
}
