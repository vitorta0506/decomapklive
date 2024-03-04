package m5;

import com.google.api.gax.rpc.ApiException;
import com.google.api.gax.rpc.StatusCode;
import com.google.common.collect.ImmutableSet;
import io.grpc.Status;
import io.grpc.StatusException;
import io.grpc.StatusRuntimeException;
import java.util.Collection;
import java.util.Set;
/* loaded from: classes2.dex */
class o {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableSet<StatusCode.Code> f54880a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Set<StatusCode.Code> set) {
        this.f54880a = ImmutableSet.copyOf((Collection) set);
    }

    private ApiException b(Throwable th2, Status.Code code) {
        return com.google.api.gax.rpc.b.b(th2, f0.c(code), this.f54880a.contains(f0.b(code)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ApiException a(Throwable th2) {
        if (th2 instanceof StatusException) {
            return b(th2, ((StatusException) th2).getStatus().n());
        }
        if (th2 instanceof StatusRuntimeException) {
            return b(th2, ((StatusRuntimeException) th2).getStatus().n());
        }
        if (th2 instanceof ApiException) {
            return (ApiException) th2;
        }
        return com.google.api.gax.rpc.b.b(th2, f0.c(Status.Code.UNKNOWN), false);
    }
}
