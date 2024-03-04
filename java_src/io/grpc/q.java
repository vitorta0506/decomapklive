package io.grpc;
/* loaded from: classes5.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final ConnectivityState f45313a;

    /* renamed from: b  reason: collision with root package name */
    private final Status f45314b;

    private q(ConnectivityState connectivityState, Status status) {
        this.f45313a = (ConnectivityState) com.google.common.base.o.t(connectivityState, "state is null");
        this.f45314b = (Status) com.google.common.base.o.t(status, "status is null");
    }

    public static q a(ConnectivityState connectivityState) {
        com.google.common.base.o.e(connectivityState != ConnectivityState.TRANSIENT_FAILURE, "state is TRANSIENT_ERROR. Use forError() instead");
        return new q(connectivityState, Status.f41704f);
    }

    public static q b(Status status) {
        com.google.common.base.o.e(!status.p(), "The error status must not be OK");
        return new q(ConnectivityState.TRANSIENT_FAILURE, status);
    }

    public ConnectivityState c() {
        return this.f45313a;
    }

    public Status d() {
        return this.f45314b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof q) {
            q qVar = (q) obj;
            return this.f45313a.equals(qVar.f45313a) && this.f45314b.equals(qVar.f45314b);
        }
        return false;
    }

    public int hashCode() {
        return this.f45313a.hashCode() ^ this.f45314b.hashCode();
    }

    public String toString() {
        if (this.f45314b.p()) {
            return this.f45313a.toString();
        }
        return this.f45313a + "(" + this.f45314b + ")";
    }
}
