package hh;

import com.google.common.collect.ImmutableList;
import io.grpc.xds.internal.rbac.engine.GrpcAuthorizationEngine$Action;
import java.util.Collection;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class q {
    public static q b(List<a0> list, GrpcAuthorizationEngine$Action grpcAuthorizationEngine$Action) {
        return new c(ImmutableList.copyOf((Collection) list), grpcAuthorizationEngine$Action);
    }

    public abstract GrpcAuthorizationEngine$Action a();

    public abstract ImmutableList<a0> c();
}
