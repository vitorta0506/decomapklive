package hh;

import com.google.common.collect.ImmutableList;
import io.grpc.xds.internal.rbac.engine.GrpcAuthorizationEngine$Action;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class c extends q {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<a0> f40771a;

    /* renamed from: b  reason: collision with root package name */
    private final GrpcAuthorizationEngine$Action f40772b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(ImmutableList<a0> immutableList, GrpcAuthorizationEngine$Action grpcAuthorizationEngine$Action) {
        Objects.requireNonNull(immutableList, "Null policies");
        this.f40771a = immutableList;
        Objects.requireNonNull(grpcAuthorizationEngine$Action, "Null action");
        this.f40772b = grpcAuthorizationEngine$Action;
    }

    @Override // hh.q
    public GrpcAuthorizationEngine$Action a() {
        return this.f40772b;
    }

    @Override // hh.q
    public ImmutableList<a0> c() {
        return this.f40771a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            return this.f40771a.equals(qVar.c()) && this.f40772b.equals(qVar.a());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f40771a.hashCode() ^ 1000003) * 1000003) ^ this.f40772b.hashCode();
    }

    public String toString() {
        return "AuthConfig{policies=" + this.f40771a + ", action=" + this.f40772b + "}";
    }
}
