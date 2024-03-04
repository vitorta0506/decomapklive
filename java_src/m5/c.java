package m5;

import io.grpc.q0;
import java.util.Objects;
import m5.h0;
/* loaded from: classes2.dex */
final class c extends h0 {

    /* renamed from: a  reason: collision with root package name */
    private final q0 f54795a;

    /* loaded from: classes2.dex */
    static final class b extends h0.a {

        /* renamed from: a  reason: collision with root package name */
        private q0 f54796a;

        @Override // m5.h0.a
        public h0 a() {
            q0 q0Var = this.f54796a;
            if (q0Var != null) {
                return new c(q0Var);
            }
            throw new IllegalStateException("Missing required properties: managedChannel");
        }

        @Override // m5.h0.a
        public h0.a b(q0 q0Var) {
            Objects.requireNonNull(q0Var, "Null managedChannel");
            this.f54796a = q0Var;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h0) {
            return this.f54795a.equals(((h0) obj).k());
        }
        return false;
    }

    public int hashCode() {
        return this.f54795a.hashCode() ^ 1000003;
    }

    @Override // m5.h0
    q0 k() {
        return this.f54795a;
    }

    public String toString() {
        return "GrpcTransportChannel{managedChannel=" + this.f54795a + "}";
    }

    private c(q0 q0Var) {
        this.f54795a = q0Var;
    }
}
