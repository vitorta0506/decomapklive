package io.grpc;
/* loaded from: classes5.dex */
public class StatusException extends Exception {
    private static final long serialVersionUID = -660954903976144640L;
    private final boolean fillInStackTrace;
    private final Status status;
    private final s0 trailers;

    public StatusException(Status status) {
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

    public StatusException(Status status, s0 s0Var) {
        this(status, s0Var, true);
    }

    StatusException(Status status, s0 s0Var, boolean z10) {
        super(Status.h(status), status.m());
        this.status = status;
        this.trailers = s0Var;
        this.fillInStackTrace = z10;
        fillInStackTrace();
    }
}
